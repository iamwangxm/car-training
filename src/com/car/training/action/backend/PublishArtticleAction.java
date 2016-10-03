 package com.car.training.action.backend;

 import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.TrainerEssay;
import com.car.training.service.TrainerEssayService;

@AutoConfig
public class PublishArtticleAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerEssayService trainerEssayService;

	/** 培训师文章 */
	private TrainerEssay  trainerEssay;
	
	
	@Override
	public String execute() throws Exception {
		trainerEssayService.save(trainerEssay);
		return SUCCESS;
	}


	public TrainerEssay getTrainerEssay() {
		return trainerEssay;
	}


	public void setTrainerEssay(TrainerEssay trainerEssay) {
		this.trainerEssay = trainerEssay;
	}
}
