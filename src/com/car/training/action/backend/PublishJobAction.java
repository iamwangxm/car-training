 package com.car.training.action.backend;

 import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Jobs;
import com.car.training.service.JobsService;

@AutoConfig
public class PublishJobAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private JobsService jobsService;

	/** 职位 */
	private Jobs jobs;
	
	@Override
	public String execute() throws Exception {
		jobsService.save(jobs);
		return SUCCESS;
	}

	public Jobs getJobs() {
		return jobs;
	}

	public void setJobs(Jobs jobs) {
		this.jobs = jobs;
	}
	
}
