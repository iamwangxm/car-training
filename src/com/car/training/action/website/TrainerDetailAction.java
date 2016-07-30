 package com.car.training.action.website;

 import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Trainer;
import com.car.training.service.TrainerService;


@AutoConfig
public class TrainerDetailAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerService trainerService;

	private Trainer trainer;

	@Override
	public String execute() throws Exception {
		Trainer t = new Trainer();
		if(trainer!=null&&StringUtils.isNotBlank(trainer.getId())){
			t.setId(trainer.getId());
		}
		trainer = trainerService.findById(t.getId());
		
		return SUCCESS;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

}
