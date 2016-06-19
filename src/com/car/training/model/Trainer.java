package com.car.training.model;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Table;

import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.NotInCopy;
import org.ironrhino.core.metadata.UiConfig;
import org.ironrhino.core.model.BaseEntity;
import org.ironrhino.core.search.elasticsearch.annotations.Searchable;
import org.nustaq.serialization.annotations.Version;

import com.car.training.enums.BusinessCategory;
import com.car.training.enums.Education;
import com.car.training.enums.ExecutionCategory;

@Searchable
@AutoConfig
@javax.persistence.Entity
@Table(name = "jobs",indexes = { @javax.persistence.Index(columnList = "company")})
public class Trainer extends BaseEntity {

	private static final long serialVersionUID = -3235752282964972966L;
	
	/**星级*/
	private int starLevel;
	
	/**学历*/
	private Education education;
	
	/**主修课程*/
	private String mainCourse;
	
	/**汽车行业经验*/
	private Integer autoYears;
	
	/**汽车行业经验*/
	private Integer trainingYears;
	
	/**业务领域**/
	private Collection <BusinessCategory> businessCategory;
	
	/**执行类别**/
	private Collection<ExecutionCategory> executionCategory;
	
	/**当前职位**/
	private String currentPosition;
	
	/**公司发起的橄榄枝**/
	private String olives;
	
	/**创建时间**/
	@UiConfig(hidden = true)
	@Column(updatable = false) 
	private Date createDate = new Date();
	
	/**修改时间**/
	@NotInCopy
	@UiConfig(hidden = true)
	@Column(insertable = false)
	private Date modifyDate;
	
	/**是否诚信认证,默认为false未认证**/
	private boolean authFaithed = false;
	
	/**学员对讲师的平均打分**/
	private BigDecimal averageScore;
	
	/**培训师的展示视频1**/
	private String vedioURL1;
	
	/**培训师的展示视频2**/
	private String vedioURL2;
	
	/**是否启用**/
	private boolean enabled = true;
	
	@Version(value = 0)
	private int version = -1;

	public int getStarLevel() {
		return starLevel;
	}

	public void setStarLevel(int starLevel) {
		this.starLevel = starLevel;
	}

	public Education getEducation() {
		return education;
	}

	public void setEducation(Education education) {
		this.education = education;
	}

	public String getMainCourse() {
		return mainCourse;
	}

	public void setMainCourse(String mainCourse) {
		this.mainCourse = mainCourse;
	}

	public Integer getAutoYears() {
		return autoYears;
	}

	public void setAutoYears(Integer autoYears) {
		this.autoYears = autoYears;
	}

	public Integer getTrainingYears() {
		return trainingYears;
	}

	public void setTrainingYears(Integer trainingYears) {
		this.trainingYears = trainingYears;
	}

	public Collection<BusinessCategory> getBusinessCategory() {
		return businessCategory;
	}

	public void setBusinessCategory(Collection<BusinessCategory> businessCategory) {
		this.businessCategory = businessCategory;
	}
	public Collection<ExecutionCategory> getExecutionCategory() {
		return executionCategory;
	}

	public void setExecutionCategory(Collection<ExecutionCategory> executionCategory) {
		this.executionCategory = executionCategory;
	}

	public String getCurrentPosition() {
		return currentPosition;
	}

	public void setCurrentPosition(String currentPosition) {
		this.currentPosition = currentPosition;
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

	public boolean isAuthFaithed() {
		return authFaithed;
	}

	public void setAuthFaithed(boolean authFaithed) {
		this.authFaithed = authFaithed;
	}

	public BigDecimal getAverageScore() {
		return averageScore;
	}

	public void setAverageScore(BigDecimal averageScore) {
		this.averageScore = averageScore;
	}

	public String getVedioURL1() {
		return vedioURL1;
	}

	public void setVedioURL1(String vedioURL1) {
		this.vedioURL1 = vedioURL1;
	}

	public String getVedioURL2() {
		return vedioURL2;
	}

	public void setVedioURL2(String vedioURL2) {
		this.vedioURL2 = vedioURL2;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public String getOlives() {
		return olives;
	}

	public void setOlives(String olives) {
		this.olives = olives;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	
}
