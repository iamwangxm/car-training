 package com.car.training.action.backend;

 import org.ironrhino.core.metadata.AutoConfig;
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
	
	
	
	@Override
	public String execute() throws Exception {
	
		
		return SUCCESS;
	}
	
	

}
