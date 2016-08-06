 package com.car.training.action.backend;

 import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Trainer;
import com.car.training.service.TrainerService;

@AutoConfig
public class TrainerCompleteResumeAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerService trainerService;

	/** 培训师 */
	private Trainer  trainer;
	
	
	@Override
	public String execute() throws Exception {
		
		return SUCCESS;
	}
}
