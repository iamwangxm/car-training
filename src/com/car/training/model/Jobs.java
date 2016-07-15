package com.car.training.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ConstraintMode;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.ironrhino.common.model.Region;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.Hidden;
import org.ironrhino.core.metadata.NotInCopy;
import org.ironrhino.core.metadata.UiConfig;
import org.ironrhino.core.model.BaseEntity;
import org.ironrhino.core.search.elasticsearch.annotations.Searchable;
import org.nustaq.serialization.annotations.Version;

import com.car.training.enums.CompanyType;
import com.car.training.enums.Education;
import com.car.training.enums.JobType;
import com.car.training.enums.Major;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Searchable
@AutoConfig
@javax.persistence.Entity
@Table(name = "jobs")
public class Jobs extends BaseEntity {

	private static final long serialVersionUID = -4749763655490330037L;

	/**职位名称*/
	@Column(length = 50, nullable = true)
	private String name; 

	/**所属公司**/
	@NotInCopy
	@JoinColumn(name = "companyId", foreignKey = @ForeignKey(ConstraintMode.NO_CONSTRAINT) )
	@ManyToOne(fetch = FetchType.LAZY)
	private Company company; 
	
	/**公司职位类别(公司招聘/4S店招聘)**/
	@Enumerated(EnumType.STRING)
	@Column(length=20, nullable = false)
	private CompanyType companyType;
	
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
	@Transient
	@UiConfig(hiddenInList = @Hidden(true) )
	private Set<String> welfare = new HashSet<String>(0);;
	
	/**语言要求**/
	@Transient
	private Set<String> languages  = new HashSet<String>(0);
	
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
	private boolean enabled = true;
	
	/**是否推荐**/
	private boolean promoted = false;
	
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

	public CompanyType getCompanyType() {
		return companyType;
	}

	public void setCompanyType(CompanyType companyType) {
		this.companyType = companyType;
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

	public Set<String> getWelfare() {
		return welfare;
	}

	public void setWelfare(Set<String> welfare) {
		this.welfare = welfare;
	}

	public Set<String> getLanguages() {
		return languages;
	}

	public void setLanguages(Set<String> languages) {
		this.languages = languages;
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

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public boolean isPromoted() {
		return promoted;
	}

	public void setPromoted(boolean promoted) {
		this.promoted = promoted;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}
}
