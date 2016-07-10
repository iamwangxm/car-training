package com.car.training.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.ironrhino.core.event.EventPublisher;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.JsonConfig;
import org.ironrhino.core.metadata.Scope;
import org.ironrhino.core.model.Persistable;
import org.ironrhino.core.security.event.LoginEvent;
import org.ironrhino.core.spring.security.DefaultLogoutSuccessHandler;
import org.ironrhino.core.spring.security.DefaultUsernamePasswordAuthenticationFilter;
import org.ironrhino.core.struts.BaseAction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;

import com.car.training.model.UserCenter;
import com.car.training.service.CaptchManager;
import com.car.training.service.UserCenterManager;
import com.car.training.sms.SmsManager;
import com.car.training.sms.SmsTemplate;

@AutoConfig
@Order(0)
public class LoginAction extends BaseAction {

	private static final long serialVersionUID = 7654848347188004593L;

	protected static Logger log = LoggerFactory.getLogger(LoginAction.class);

	protected String password;

	protected String username;

	private String vercode;

	private Object data;

	private String captcha;

	@Autowired
	private CaptchManager captchManager;

	@Autowired
	private SmsManager smsManager;
	@Autowired
	protected transient UserCenterManager usercenterManager;

	@Autowired
	protected transient DefaultUsernamePasswordAuthenticationFilter usernamePasswordAuthenticationFilter;

	@Autowired
	protected transient DefaultLogoutSuccessHandler defaultLogoutSuccessHandler;

	@Autowired
	protected transient EventPublisher eventPublisher;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getVercode() {
		return vercode;
	}

	public void setVercode(String vercode) {
		this.vercode = vercode;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

	@JsonConfig(root = "data")
	public String login() {
		Map<String, Object> map = new HashMap<String, Object>();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		Authentication authResult = null;
		UserDetails ud = null;
		UserCenter usercenter = null;
		if (StringUtils.isNotBlank(username) && StringUtils.isNotBlank(password)) {
			usercenter = usercenterManager.findByPassword(username, password);
			if (usercenter == null && usercenterManager.checkCode(username, password)) {
				usercenter = usercenterManager.findByMobile(username);
			}
		} else if (StringUtils.isNotBlank(username) && StringUtils.isNotBlank(vercode)) {
			if (smsManager.checkCode(username, vercode) || usercenterManager.checkCode(username, vercode)) {
				usercenter = usercenterManager.findByMobile(username);
			} else {
				map.put("code", 400);
				map.put("msg", "短信验证码输入错误！");
			}
		} else {
			map.put("code", 400);
			map.put("msg", "请求有误！");
		}
		if (usercenter != null) {
			ud = usercenterManager.loadUserByUsername(usercenter.getId());
			if (ud instanceof Persistable) {
				authResult = new UsernamePasswordAuthenticationToken(ud, ud.getPassword(), ud.getAuthorities());
				System.out.println(authResult);
			} else {
				try {
					map.put("code", 400);
					map.put("msg", "您的账号或密码错误！");
					usernamePasswordAuthenticationFilter.unsuccess(request, response, null);
				} catch (Exception e) {
					log.error(e.getMessage(), e);
				}
			}
		} else {
			try {
				map.put("code", 400);
				map.put("msg", "您的账号或密码错误！");
				usernamePasswordAuthenticationFilter.unsuccess(request, response, null);
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
		}
		if (authResult != null) {
			try {
				usernamePasswordAuthenticationFilter.success(request, response, authResult);
				Object principal = authResult.getPrincipal();
				if (principal instanceof UserDetails)
					eventPublisher.publish(
							new LoginEvent(((UserDetails) principal).getUsername(), request.getRemoteAddr()),
							Scope.LOCAL);
				if (StringUtils.isBlank(targetUrl))
					targetUrl = "/website/index";

				request.getSession().setAttribute("loginState", "Y");

				map.put("code", 200);
				map.put("target", targetUrl);
				map.put("msg", "登陆成功！");
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
		} else {
			map.put("code", 400);
			map.put("msg", "您的账号或密码错误！");
		}
		setData(map);
		return JSON;
	}

	/** 用户登出 */
	@JsonConfig(root = "data")
	public String logout() {
		Map<String, Object> map = new HashMap<String, Object>();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("loginState", "N");
		map.put("code", 200);
		map.put("msg", "退出成功");
		setData(map);
		return JSON;
	}

	@Override
	public String execute() {
		if (StringUtils.isBlank(targetUrl))
			targetUrl = "/website/index";
		return SUCCESS;
	}

	@JsonConfig(root = "data")
	public String sendMsg() {
		Map<String, Object> map = new HashMap<String, Object>();

		String sid = ServletActionContext.getRequest().getSession().getId();

		if (!captchManager.volidateCode(sid, captcha)) {
			map.put("code", 400);
			map.put("msg", "验证码填写错误");
			this.setData(map);
			return JSON;
		}

		UserCenter usercenter = usercenterManager.findByMobile(username);
		if (usercenter != null) {
			try {
				smsManager.send(username, SmsTemplate.LOGIN);
				map.put("code", 200);
				map.put("msg", "消息发送成功！");
			} catch (Exception e) {
				log.info(e.getMessage());
				map.put("code", 400);
				map.put("msg", "消息发送失败！请稍后重试。");
			}
		} else {
			usercenter = usercenterManager.register(username, null, null, null);
			if (usercenter == null) {
				map.put("code", 400);
				map.put("msg", "手机号未注册。");
			} else {
				try {
					smsManager.send(username, SmsTemplate.LOGIN);
					map.put("code", 200);
					map.put("msg", "消息发送成功！(未注册)");
				} catch (Exception e) {
					log.info(e.getMessage());
					map.put("code", 400);
					map.put("msg", "消息发送失败！请稍后重试。");
				}
			}
		}
		this.setData(map);
		return JSON;
	}

}
