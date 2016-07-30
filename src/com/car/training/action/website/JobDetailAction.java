 package com.car.training.action.website;

 import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Jobs;
import com.car.training.service.JobsService;


@AutoConfig
public class JobDetailAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private JobsService jobsService;

	private Jobs jobs;

	@Override
	public String execute() throws Exception {
		Jobs t = new Jobs();
		if(jobs!=null&&StringUtils.isNotBlank(jobs.getId())){
			t.setId(jobs.getId());
		}
		jobs = jobsService.findById(t.getId());
		
		return SUCCESS;
	}

	public Jobs getJobs() {
		return jobs;
	}

	public void setJobs(Jobs jobs) {
		this.jobs = jobs;
	}
}
