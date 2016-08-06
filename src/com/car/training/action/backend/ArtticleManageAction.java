 package com.car.training.action.backend;

 import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.service.TrainerEssayService;

@AutoConfig
public class ArtticleManageAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerEssayService trainerEssayService;
	
	
	@Override
	public String execute() throws Exception {
	
		
		return SUCCESS;
	}
	

}
