 package com.car.training.action.backend;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.ironrhino.common.model.Region;
import org.ironrhino.core.fs.FileStorage;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.JsonConfig;
import org.ironrhino.core.service.EntityManager;
import org.ironrhino.core.struts.BaseAction;
import org.ironrhino.rest.RestStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import com.car.training.domain.Autobots;
import com.car.training.domain.UserCenter;
import com.car.training.enums.MarryStatus;
import com.car.training.enums.PersonalType;
import com.car.training.service.AutobotsService;

@AutoConfig
public class AutobotCompleteResumeAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;
	@Autowired
	private AutobotsService autobotsService;
	@Autowired
	private transient EntityManager<Region> entityManager;
	@Autowired
	public FileStorage fileStorage;
	@Value("${upload.filepath:/car/training/upload/}")
	public static String CARTRAINING_UPLOAD_FILEPATH = "/car/training/upload/";
	/** 汽车人 */
	private Autobots autobot;
	
	private String uheadLogo =      "";   
	private String  upersonalType = "";   
	private String  aid =                   "";   
	private String  uid =                     ""; 
	private String  uname =            "";    
	private String  ubirthday =          "";  
	private String  uemail =               ""; 
	private String  uregionId =       "";     
	private String  umarryStatus =     ""; 
	private String  currentWorkStatus="";
	private String  autoBrand =      "";     
	private String  umobile =           "";   
	private String  autoYears =        "";   
	private String  authHistroy =        ""; 
	private String  workingHistroy =   "";
	private String  workPhotoURL1 =   "";
	private String  workPhotoURL2 =   "";
	private String  businessCategory =   "";
	
	private List<Region> provinces;
	
	private List<Region> cities;
	
	private Object data;
	
	private Long parentId;
	
	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public List<Region> getProvinces() {
		return provinces;
	}

	public void setProvinces(List<Region> provinces) {
		this.provinces = provinces;
	}

	public List<Region> getCities() {
		return cities;
	}

	public void setCities(List<Region> cities) {
		this.cities = cities;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		UserCenter uc = new UserCenter();
		uc = (UserCenter) request.getSession().getAttribute("userDetails");
		if (uc != null) {
			autobot = autobotsService.findByUserCenter(uc.getId());
		}
		entityManager.setEntityClass(Region.class);
		DetachedCriteria dc = entityManager.detachedCriteria();
		dc.add(Restrictions.isNull("parent"));
		dc.addOrder(Order.asc("displayOrder"));
		dc.addOrder(Order.asc("name"));
		provinces = entityManager.findListByCriteria(dc);
		return SUCCESS;
	}
	
	@JsonConfig(root = "data")
	public String getcities(){
		Map<String,Object> map = new HashMap<>();
		Region region = new Region();
		entityManager.setEntityClass(Region.class);
		if (parentId != null && parentId > 0) {
			region = entityManager.get(parentId);
		} else {
			DetachedCriteria dc = entityManager.detachedCriteria();
			dc.add(Restrictions.isNull("parent"));
			dc.addOrder(Order.asc("displayOrder"));
			dc.addOrder(Order.asc("name"));
			region.setChildren(entityManager.findListByCriteria(dc));
		}
		cities = (List<Region>) region.getChildren();
		map.put("code", "200");
		map.put("cities", cities);
		setData(map);
		return JSON;
	}
	
	@JsonConfig(root = "data")
	public String save() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		UserCenter uc = new UserCenter();
		uc = (UserCenter) request.getSession().getAttribute("userDetails");
		if (uc != null) {
			autobot = autobotsService.findByUserCenter(uc.getId());
		}
		if (autobot != null) {
			autobot.setId(aid);
			autobot.setAuthHistroy(authHistroy);
			autobot.setAutoBrand(autoBrand);
			autobot.setAutoYears(new Integer(autoYears));
			if (StringUtils.isNotBlank(businessCategory)) {
				Set<String> setStr = new HashSet<String>();
				String[] arr = businessCategory.split(",");
				if (arr != null && arr.length > 0) {
					for (String s : arr) {
						setStr.add(s);
					}
					autobot.setBusinessCategory(setStr);
				}
			}
			autobot.setCurrentWorkStatus(currentWorkStatus);
			if (StringUtils.isNotBlank(uheadLogo) && !uheadLogo.startsWith("http")) {
				String headLogo = uploadFile(uheadLogo);
				uc.setHeadLogo(headLogo);
			}
			if (StringUtils.isNotBlank(workPhotoURL1) && !workPhotoURL1.startsWith("http")) {
				String fileURL1 = uploadFile(workPhotoURL1);
				autobot.setWorkPhotoURL1(fileURL1);
			}
			if (StringUtils.isNotBlank(workPhotoURL2) && !workPhotoURL2.startsWith("http")) {
				String fileURL2 = uploadFile(workPhotoURL2);
				autobot.setWorkPhotoURL2(fileURL2);
			}
			autobot.setWorkingHistroy(workingHistroy);
			
			uc.setActiveDate(new Date());
			SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd");
			uc.setBirthday(sdf.parse(ubirthday));
			uc.setEmail(uemail);
			uc.setEnabled(true);
			uc.setId(uid);
			uc.setMarryStatus(Enum.valueOf(MarryStatus.class, umarryStatus));
			uc.setName(uname);
			uc.setPersonalType(Enum.valueOf(PersonalType.class,upersonalType));
			if (StringUtils.isNotBlank(uregionId)) {
				Region region = new Region();
				region.setId(Long.valueOf(uregionId));
				uc.setRegion(region);
			}
			uc.setMobile(umobile);
			autobot.setUserCenter(uc);
			autobotsService.update(autobot);
		}
		Map<String, Object> map = new HashMap<>();
		map.put("code", "200");
		map.put("msg", "保存成功");
		setData(map);
		return JSON;
	}

	/** 单个上传base64公用接口 */
	public String uploadFile(String imgData) {
		if (imgData == null ) {
			throw RestStatus.valueOf(RestStatus.CODE_FIELD_INVALID, "参数有误");
		}

		String returnUrl ="",imgPath="";
		// 使用BASE64对图片文件数据进行解码操作
			if (imgData != null) {
				try {
					// 通过Base64解密，将图片数据解密成字节数组
					byte[] bytes = Base64.getDecoder().decode(imgData.split(",")[1]);
					for (int j = 0; j < bytes.length; ++j) {
						if (bytes[j] < 0) {// 调整异常数据
							bytes[j] += 256;
						}
					}
					imgPath = String.valueOf(System.currentTimeMillis()+"."+imgData.substring(imgData.indexOf("/")+1,imgData.indexOf(";")));
					InputStream in = new ByteArrayInputStream(bytes);
					fileStorage.write(in, CARTRAINING_UPLOAD_FILEPATH.concat(imgPath));
					String fileUrl = fileStorage.getFileUrl(CARTRAINING_UPLOAD_FILEPATH.concat(imgPath));

					returnUrl = fileUrl;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		return returnUrl ;
	}


	public Autobots getAutobot() {
		return autobot;
	}


	public void setAutobot(Autobots autobot) {
		this.autobot = autobot;
	}

	public String getUpersonalType() {
		return upersonalType;
	}

	public void setUpersonalType(String upersonalType) {
		this.upersonalType = upersonalType;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUbirthday() {
		return ubirthday;
	}

	public void setUbirthday(String ubirthday) {
		this.ubirthday = ubirthday;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUregionId() {
		return uregionId;
	}

	public void setUregionId(String uregionId) {
		this.uregionId = uregionId;
	}

	public String getUmarryStatus() {
		return umarryStatus;
	}

	public void setUmarryStatus(String umarryStatus) {
		this.umarryStatus = umarryStatus;
	}

	public String getCurrentWorkStatus() {
		return currentWorkStatus;
	}

	public void setCurrentWorkStatus(String currentWorkStatus) {
		this.currentWorkStatus = currentWorkStatus;
	}

	public String getAutoBrand() {
		return autoBrand;
	}

	public void setAutoBrand(String autoBrand) {
		this.autoBrand = autoBrand;
	}

	public String getUmobile() {
		return umobile;
	}

	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}

	public String getAutoYears() {
		return autoYears;
	}

	public void setAutoYears(String autoYears) {
		this.autoYears = autoYears;
	}

	public String getAuthHistroy() {
		return authHistroy;
	}

	public void setAuthHistroy(String authHistroy) {
		this.authHistroy = authHistroy;
	}

	public String getWorkingHistroy() {
		return workingHistroy;
	}

	public void setWorkingHistroy(String workingHistroy) {
		this.workingHistroy = workingHistroy;
	}


	public String getUheadLogo() {
		return uheadLogo;
	}

	public void setUheadLogo(String uheadLogo) {
		this.uheadLogo = uheadLogo;
	}

	public String getWorkPhotoURL1() {
		return workPhotoURL1;
	}

	public void setWorkPhotoURL1(String workPhotoURL1) {
		this.workPhotoURL1 = workPhotoURL1;
	}

	public String getWorkPhotoURL2() {
		return workPhotoURL2;
	}

	public void setWorkPhotoURL2(String workPhotoURL2) {
		this.workPhotoURL2 = workPhotoURL2;
	}

	public String getBusinessCategory() {
		return businessCategory;
	}

	public void setBusinessCategory(String businessCategory) {
		this.businessCategory = businessCategory;
	}
	
}
