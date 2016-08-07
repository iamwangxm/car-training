 package com.car.training.action.backend;

 import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Autobots;
import com.car.training.service.AutobotsService;

@AutoConfig
public class AutobotCompleteResumeAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private AutobotsService autobotsService;

	/** 汽车人 */
	private Autobots autobot;
	
	
	@Override
	public String execute() throws Exception {
		autobotsService.save(autobot);
		return SUCCESS;
	}


	public Autobots getAutobot() {
		return autobot;
	}


	public void setAutobot(Autobots autobot) {
		this.autobot = autobot;
	}
	
}
