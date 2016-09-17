 package com.car.training.action.backend;

 import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.JsonConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Autobots;
import com.car.training.domain.UserCenter;
import com.car.training.service.AutobotsService;

@AutoConfig
public class AutobotCompleteResumeAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private AutobotsService autobotsService;

	/** 汽车人 */
	private Autobots autobot;
	
	private Object data;
	
	
	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		UserCenter uc = new UserCenter();
		uc = (UserCenter) request.getSession().getAttribute("userDetails");
		if (uc != null) {
			autobot = autobotsService.findByUserCenter(uc.getId());
		}
		return SUCCESS;
	}
	
	@JsonConfig(root = "data")
	public String save() throws Exception{
		if(autobot != null){
			autobotsService.save(autobot);
		}
		Map<String,Object> map = new HashMap<>();
		map.put("code", "200");
		map.put("msg", "保存成功");
		data = map;
		return JSON;
	}



	public Autobots getAutobot() {
		return autobot;
	}


	public void setAutobot(Autobots autobot) {
		this.autobot = autobot;
	}
	
}
