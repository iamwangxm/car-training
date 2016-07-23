package com.car.training.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.ConstraintMode;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.ironrhino.common.model.Region;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.Hidden;
import org.ironrhino.core.metadata.NotInCopy;
import org.ironrhino.core.metadata.UiConfig;
import org.ironrhino.core.model.BaseEntity;
import org.ironrhino.core.search.elasticsearch.annotations.Searchable;
import org.nustaq.serialization.annotations.Version;

import com.car.training.enums.CourseType;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Searchable
@AutoConfig
@javax.persistence.Entity
@Table(name = "courses")
public class Courses extends BaseEntity {

	private static final long serialVersionUID = -5621639682381355149L;

	/**课程名称**/
	@Column(length = 100, nullable = true)
	private String courseName; 
	
	/**课程类型**/
	@Column(length = 2000, nullable = true)
	private CourseType courseType;  
	
	/**发布日期**/
	private Date publishDate = new Date();
	
	/**价格**/
	@UiConfig(hiddenInList = @Hidden(true) )
	private BigDecimal price;
	
	/**时长**/
	@UiConfig(hiddenInList = @Hidden(true) )
	private String longTime;
	
	/**区域**/
	@JoinColumn(name = "regionId", foreignKey = @ForeignKey(ConstraintMode.NO_CONSTRAINT) )
	@ManyToOne(optional = true, fetch = FetchType.LAZY)
	private Region region;
	
	/**受众**/
	private String audiences;
	
	/**课程目标**/
	private String courseTarget;
	
	/**课程大纲**/
	private String courseOutline;
	
	/**课程大纲**/
	private String toolModel;
	
	/**培训师*/
	@JoinColumn(name = "trainerId", foreignKey = @ForeignKey(ConstraintMode.NO_CONSTRAINT) )
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	private Trainer trainer;
	
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

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public CourseType getCourseType() {
		return courseType;
	}

	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getLongTime() {
		return longTime;
	}

	public void setLongTime(String longTime) {
		this.longTime = longTime;
	}

	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	public String getAudiences() {
		return audiences;
	}

	public void setAudiences(String audiences) {
		this.audiences = audiences;
	}

	public String getCourseTarget() {
		return courseTarget;
	}

	public void setCourseTarget(String courseTarget) {
		this.courseTarget = courseTarget;
	}

	public String getCourseOutline() {
		return courseOutline;
	}

	public void setCourseOutline(String courseOutline) {
		this.courseOutline = courseOutline;
	}

	public String getToolModel() {
		return toolModel;
	}

	public void setToolModel(String toolModel) {
		this.toolModel = toolModel;
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
	
	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
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
