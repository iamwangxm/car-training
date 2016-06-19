package com.car.training.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.ConstraintMode;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.ironrhino.common.model.Region;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.Hidden;
import org.ironrhino.core.metadata.NotInCopy;
import org.ironrhino.core.metadata.UiConfig;
import org.ironrhino.core.model.BaseEntity;
import org.ironrhino.core.search.elasticsearch.annotations.Searchable;
import org.nustaq.serialization.annotations.Version;

import com.car.training.enums.Education;
import com.car.training.enums.JobType;
import com.car.training.enums.Language;
import com.car.training.enums.Major;
import com.car.training.enums.Welfare;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Searchable
@AutoConfig
@javax.persistence.Entity
@Table(name = "jobs",indexes = { @javax.persistence.Index(columnList = "company")})
public class Jobs extends BaseEntity {

	private static final long serialVersionUID = -4749763655490330037L;

	/**职位名称*/
	@Column(length = 50, nullable = true)
	private String name; 

	/**所属公司**/
	@NotInCopy
	@JoinColumn(name = "company", foreignKey = @ForeignKey(ConstraintMode.NO_CONSTRAINT) )
	@ManyToOne(fetch = FetchType.LAZY)
	private Company company; 
	
	/**工作地点**/
	@NotInCopy
	@JoinColumn(name = "regionId", foreignKey = @ForeignKey(ConstraintMode.NO_CONSTRAINT) )
	@ManyToOne(fetch = FetchType.LAZY)
	private Region region;
	
	/**工作年限**/
	private Integer workExprience;  
	
	/**发布日期**/
	private Date publishDate = new Date();
	
	/**学历要求**/
	@UiConfig(hiddenInList = @Hidden(true) )
	private Education education;
	
	/**工作类别(全职/兼职)**/
	@UiConfig(hiddenInList = @Hidden(true) )
	private JobType jobType;
	
	/**福利**/
	@UiConfig(hiddenInList = @Hidden(true) )
	private List<Welfare> welfare;
	
	/**语言要求**/
	private List<Language> language;
	
	/**工作描述**/
	@Column(length = 4000, nullable = true)
	private String jobDescription;
	
	/**报告上级**/
	private String reportTo;
	
	/**所属部门**/
	private String department;
	
	/**下属**/
	private Integer underling;
	
	/**所属专业**/
	private Major major;

	/**兼职开始执行时间**/
	@Temporal(TemporalType.DATE)
	private Date startExcutionDate;
	
	/**兼职结束执行时间**/
	@Temporal(TemporalType.DATE)
	private Date endExecutionDate;
	
	@UiConfig(hidden = true)
	@Column(updatable = false) 
	private Date createDate = new Date();
	
	@NotInCopy
	@UiConfig(hidden = true)
	@Column(insertable = false)
	private Date modifyDate;
	
	@NotInCopy
	@UiConfig(hidden = true)
	@Column(updatable = false)
	private String createUser;

	@NotInCopy
	@UiConfig(hidden = true)
	@Column(insertable = false)
	private String modifyUser;
	
	@JsonIgnore
	private boolean enabed = true;
	
	@Version(value = 0)
	private int version = -1;

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

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	
}
