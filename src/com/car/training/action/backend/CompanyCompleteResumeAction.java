 package com.car.training.action.backend;

 import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
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

import com.car.training.domain.Company;
import com.car.training.enums.Industry;
import com.car.training.enums.Scale;
import com.car.training.service.CompanyService;

@AutoConfig
public class CompanyCompleteResumeAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;
	@Autowired
	public FileStorage fileStorage;
	@Value("${upload.filepath:/car/training/upload/}")
	public static String CARTRAINING_UPLOAD_FILEPATH = "/car/training/upload/";
	@Autowired
	private CompanyService companyService;
	@Autowired
	private transient EntityManager<Region> entityManager;

	/** 培训公司/汽车公司 */
	private Company company;
	
	private List<Region> provinces;
	
	private List<Region> cities;
	
	private Object data;
	
	private Long parentId;
	private String logo = "";
	private String name = "";
	private String autoBrand = "";
	private String cid = "";
	private String scale = "";
	private String industry = "";
	private String address = "";
	private String welfare = "";
	private String regionId = "";
	private String intro = "";
	private String environmentURL1 = "";
	private String environmentURL2 =   "";
	
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
		Company com = new Company();
		com = (Company) request.getSession().getAttribute("userDetails");
		if (com != null) {
			company = companyService.findById(com.getId());
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
	public String save() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		Company company = null;
		company = (Company) request.getSession().getAttribute("userDetails");
		if (company != null) {
			company = companyService.findById(company.getId());
		}
		if(company != null){
			company.setId(cid);
			company.setName(name);
			company.setAutoBrand(autoBrand);
			company.setEnabled(false);
			company.setIntro(intro);
			company.setAddress(address);
			if (StringUtils.isNotBlank(regionId)) {
				Region region = new Region();
				region.setId(Long.valueOf(regionId));
				company.setRegion(region);
			}
			company.setScale(Enum.valueOf(Scale.class,scale));
			if (StringUtils.isNotBlank(welfare)) {
				Set<String> setStr = new HashSet<String>();
				String[] arr = welfare.split(",");
				if (arr != null && arr.length > 0) {
					for (String s : arr) {
						setStr.add(s);
					}
					company.setWelfare(setStr);
				}
			}

			if (StringUtils.isNotBlank(logo) && !logo.startsWith("http")) {
				String logoUrl = uploadFile(logo);
				company.setLogo(logoUrl);
			}
			if (StringUtils.isNotBlank(environmentURL1) && !environmentURL1.startsWith("http")) {
				String URL1 = uploadFile(environmentURL1);
				company.setEnvironmentURL1(URL1);
			}
			if (StringUtils.isNotBlank(environmentURL2) && !environmentURL2.startsWith("http")) {
				String URL2 = uploadFile(environmentURL2);
				company.setEnvironmentURL2(URL2);
			}

			company.setIndustry(Enum.valueOf(Industry.class, industry));
			companyService.update(company);
		}
		Map<String,Object> map = new HashMap<>();
		map.put("code", "200");
		map.put("msg", "保存成功");
		setData(map);
		return JSON;
	}

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
	
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAutoBrand() {
		return autoBrand;
	}

	public void setAutoBrand(String autoBrand) {
		this.autoBrand = autoBrand;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getWelfare() {
		return welfare;
	}

	public void setWelfare(String welfare) {
		this.welfare = welfare;
	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getEnvironmentURL1() {
		return environmentURL1;
	}

	public void setEnvironmentURL1(String environmentURL1) {
		this.environmentURL1 = environmentURL1;
	}

	public String getEnvironmentURL2() {
		return environmentURL2;
	}

	public void setEnvironmentURL2(String environmentURL2) {
		this.environmentURL2 = environmentURL2;
	}

}
