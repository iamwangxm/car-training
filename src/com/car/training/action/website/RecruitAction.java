 package com.car.training.action.website;

 import java.util.Date;
import java.util.Set;

import org.ironrhino.common.model.Region;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Jobs;
import com.car.training.enums.CompanyType;
import com.car.training.enums.JobType;
import com.car.training.enums.PositionType;
import com.car.training.service.JobsService;

/**招聘需求，包括公司招聘培训师的需求和4S店汽车人的需求*/
@AutoConfig
public class RecruitAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;
	@Autowired
	private JobsService jobsService;

	/** 公司招聘职位列表 */
	private ResultPage<Jobs> jobsCompanyList;
	/** 4S店招聘职位列表 */
	private ResultPage<Jobs> jobsStoreList;
	/** 岗位类型 */
	private PositionType positionType;
	/** 招聘职位来源 */
	private CompanyType companyType;
	/** 职位类型 */
	private JobType jobType;
	/** 发布时间 */
	private Date createDate;
	/** 区域 */
	private Region region;
	/** 执行类别 */
	private Set<String> executionCategories;
	/** 关健字 */
	private String keyword;
	/** 页大小 */
	private Integer pageSize;
	/** 页号 */
	private Integer pageNo;
	
	@Override
	public String execute() throws Exception {
		Jobs jobs = new Jobs();
		if (companyType.getName().equals(CompanyType.COMPANY)) {
			jobs.setCompanyType(CompanyType.COMPANY);// 公司招聘职位
			jobs.setRegion(region);
			jobs.setCreateDate(createDate);
			jobs.setJobType(JobType.FULLTIME);
			//jobs.setexe TODO 执行类别
			jobs.setName(keyword);
			// 按条件筛选公司招聘职位列表(包含分页)
			jobsCompanyList = jobsService.findPageByJobs(jobs, pageSize, pageNo);
			return "trainerSearch";
		}else if(companyType.getName().equals(CompanyType.STORE)){
			jobs.setRegion(region);
			jobs.setCreateDate(createDate);
			jobs.setName(keyword);
			jobsStoreList = jobsService.findPageByJobs(jobs, pageSize, pageNo);
			return "autobotSearch";
		}

		return "";
	}


	public ResultPage<Jobs> getJobsCompanyList() {
		return jobsCompanyList;
	}


	public void setJobsCompanyList(ResultPage<Jobs> jobsCompanyList) {
		this.jobsCompanyList = jobsCompanyList;
	}


	public ResultPage<Jobs> getJobsStoreList() {
		return jobsStoreList;
	}


	public void setJobsStoreList(ResultPage<Jobs> jobsStoreList) {
		this.jobsStoreList = jobsStoreList;
	}


	public PositionType getPositionType() {
		return positionType;
	}


	public void setPositionType(PositionType positionType) {
		this.positionType = positionType;
	}


	public JobType getJobType() {
		return jobType;
	}


	public void setJobType(JobType jobType) {
		this.jobType = jobType;
	}


	public Region getRegion() {
		return region;
	}


	public void setRegion(Region region) {
		this.region = region;
	}


	public Set<String> getExecutionCategories() {
		return executionCategories;
	}

	public void setExecutionCategories(Set<String> executionCategories) {
		this.executionCategories = executionCategories;
	}
	
	public String getKeyword() {
		return keyword;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


	public Integer getPageSize() {
		return pageSize;
	}


	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}


	public Integer getPageNo() {
		return pageNo;
	}


	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
}
