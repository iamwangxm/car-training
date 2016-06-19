package com.car.training.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.ironrhino.common.model.Region;

import com.car.training.enums.Education;
import com.car.training.enums.JobType;
import com.car.training.enums.Language;
import com.car.training.enums.Major;
import com.car.training.enums.Welfare;

public class Jobs implements Serializable {
	
	private static final long serialVersionUID = -1405570857184708202L;

	private String id;
	
	/**职位名称**/
	private String name; 

	/**所属公司**/
	private Company company; 
	
	private Region region;
	
	/**工作年限**/
	private Integer workExprience;  
	
	/**发布日期**/
	private Date publishDate;
	
	/**学历要求**/
	private Education education;
	
	/**工作种类**/
	private JobType jobType;
	
	/**兼职开始执行时间**/
	private Date startExcutionDate;
	
	/**兼职结束执行时间**/
	private Date endExecutionDate;
	
	/**福利**/
	private List<Welfare> welfare;
	
	private List<Language> language;
	
	private String jobDescription;
	
	private String reportTo;
	
	private String department;
	
	private Integer underling;
	
	private Major major;
	
	private Date createDate;
	
	private Date modifyDate;
	
	private String createUser;

	private String modifyUser;
	
	private boolean enabed;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	public Integer getWorkExprience() {
		return workExprience;
	}

	public void setWorkExprience(Integer workExprience) {
		this.workExprience = workExprience;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public Education getEducation() {
		return education;
	}

	public void setEducation(Education education) {
		this.education = education;
	}

	public JobType getJobType() {
		return jobType;
	}

	public void setJobType(JobType jobType) {
		this.jobType = jobType;
	}

	public Date getStartExcutionDate() {
		return startExcutionDate;
	}

	public void setStartExcutionDate(Date startExcutionDate) {
		this.startExcutionDate = startExcutionDate;
	}

	public Date getEndExecutionDate() {
		return endExecutionDate;
	}

	public void setEndExecutionDate(Date endExecutionDate) {
		this.endExecutionDate = endExecutionDate;
	}

	public List<Welfare> getWelfare() {
		return welfare;
	}

	public void setWelfare(List<Welfare> welfare) {
		this.welfare = welfare;
	}

	public List<Language> getLanguage() {
		return language;
	}

	public void setLanguage(List<Language> language) {
		this.language = language;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getReportTo() {
		return reportTo;
	}

	public void setReportTo(String reportTo) {
		this.reportTo = reportTo;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public Integer getUnderling() {
		return underling;
	}

	public void setUnderling(Integer underling) {
		this.underling = underling;
	}

	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getModifyUser() {
		return modifyUser;
	}

	public void setModifyUser(String modifyUser) {
		this.modifyUser = modifyUser;
	}

	public boolean isEnabed() {
		return enabed;
	}

	public void setEnabed(boolean enabed) {
		this.enabed = enabed;
	}
}
