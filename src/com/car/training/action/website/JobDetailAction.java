 package com.car.training.action.website;

 import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Jobs;
import com.car.training.domain.UserCenter;
import com.car.training.service.JobsService;
import com.car.training.service.UserCenterService;


@AutoConfig
public class JobDetailAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private JobsService jobsService;
	@Autowired
	private UserCenterService userCenterService;

	private Jobs jobs;
	/**其他职位  */
	private List<Jobs> jobsOtherList;
	private List<UserCenter> bondsmanList;
	
	@Override
	public String execute() throws Exception {
		Jobs t = new Jobs();
		if(jobs!=null&&StringUtils.isNotBlank(jobs.getId())){
			t.setId(jobs.getId());
		}
		jobs = jobsService.findById(t.getId());
		for (String strId : jobs.getCompany().getBondsman().split(",")) {
			if (StringUtils.isNotBlank(strId)) {
				UserCenter uc = userCenterService.findById(strId);
				if (uc != null) { 
					bondsmanList.add(uc);
				}
			}
		}
		jobsOtherList = jobsService.findListByJobs(jobs);
		
		return SUCCESS;
	}

	public Jobs getJobs() {
		return jobs;
	}

	public void setJobs(Jobs jobs) {
		this.jobs = jobs;
	}

	public List<Jobs> getJobsOtherList() {
		return jobsOtherList;
	}

	public void setJobsOtherList(List<Jobs> jobsOtherList) {
		this.jobsOtherList = jobsOtherList;
	}

	public List<UserCenter> getBondsmanList() {
		return bondsmanList;
	}

	public void setBondsmanList(List<UserCenter> bondsmanList) {
		this.bondsmanList = bondsmanList;
	}
	
}
