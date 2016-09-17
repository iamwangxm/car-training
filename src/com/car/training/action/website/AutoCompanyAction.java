 package com.car.training.action.website;
 import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Company;
import com.car.training.service.CompanyService;

@AutoConfig
public class AutoCompanyAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private CompanyService CompanyService;

	private Company company;
	
	@Override
	public String execute() throws Exception {
		Company t = new Company();
		if(company!=null&&StringUtils.isNotBlank(company.getId())){
			t.setId(company.getId());
		}
		company = CompanyService.findById(t.getId());
		
		return SUCCESS;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

}
