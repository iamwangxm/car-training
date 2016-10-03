 package com.car.training.action.backend;

 import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Trainer;
import com.car.training.domain.TrainerEssay;
import com.car.training.domain.UserCenter;
import com.car.training.service.TrainerEssayService;
import com.car.training.service.TrainerService;

@AutoConfig
public class PublishArticleAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerEssayService trainerEssayService;
	@Autowired
	private TrainerService trainerService;
	/** 培训师文章 */
	private TrainerEssay  trainerEssay;
	
	private String title;
	private String content;
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	/**文章新增&編輯*/
	public String save() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		UserCenter uc = new UserCenter();
		uc = (UserCenter) request.getSession().getAttribute("userDetails");
		Trainer trainer = null;
		if (uc != null) {
			trainer = trainerService.findByUserCenter(uc.getId());
		}
		TrainerEssay essay = new TrainerEssay();
		essay.setTitle(title);
		essay.setContent(content);
		essay.setPublishDate(new Date());
		essay.setEnabled(true);
		essay.setTrainer(trainer);
		trainerEssayService.save(trainerEssay);
		return SUCCESS;
	}
	public TrainerEssay getTrainerEssay() {
		return trainerEssay;
	}


	public void setTrainerEssay(TrainerEssay trainerEssay) {
		this.trainerEssay = trainerEssay;
	}

	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}
}
