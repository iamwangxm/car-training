 package com.car.training.action.backend;

 import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Trainer;
import com.car.training.domain.UserCenter;
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
		HttpServletRequest request = ServletActionContext.getRequest();
		UserCenter uc = new UserCenter();
		uc = (UserCenter) request.getSession().getAttribute("userDetails");
		if (uc != null) {
			trainer = trainerService.findByUserCenter(uc.getId());
		}
		return SUCCESS;
	}
	public String save() throws Exception{
		trainerService.save(trainer);
		return SUCCESS;
	}


	public Trainer getTrainer() {
		return trainer;
	}


	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}
	
}
