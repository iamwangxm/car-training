 package com.car.training.action.backend;

 import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.JsonConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Company;
import com.car.training.service.CompanyService;

@AutoConfig
public class CompanyCompleteResumeAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private CompanyService companyService;

	/** 培训公司/汽车公司 */
	private Company company;
	
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
		Company com = new Company();
		com = (Company) request.getSession().getAttribute("userDetails");
		if (com != null) {
			company = companyService.findById(com.getId());
		}
		return SUCCESS;
	}

	@JsonConfig(root = "data")
	public String save() throws Exception{
		if(company != null){
			companyService.save(company);
		}
		Map<String,Object> map = new HashMap<>();
		map.put("code", "200");
		map.put("msg", "保存成功");
		data = map;
		return JSON;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

}
