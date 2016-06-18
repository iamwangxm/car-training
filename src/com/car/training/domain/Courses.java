package com.car.training.domain;

import java.math.BigDecimal;
import java.util.Date;

import org.ironrhino.common.model.Region;
import org.ironrhino.core.model.BaseEntity;

import com.car.training.enums.CourseType;

public class Courses extends BaseEntity {

	private static final long serialVersionUID = -2197633192945779031L;

	private String id;

	/**课程名称**/
	private String courseName; 
	
	/**课程类型**/
	private CourseType courseType;  
	
	/**发布日期**/
	private Date publishDate;
	
	/**价格**/
	private BigDecimal price;
	
	/**时长**/
	private String longTime;
	
	/**区域**/
	private Region region;
	
	/**受众**/
	private String audiences;
	
	/**课程目标**/
	private String courseTarget;
	
	/**课程大纲**/
	private String courseOutline;
	
	/**课程大纲**/
	private String toolModel;
	
	/**学员**/
	private Autobots autobots;
	
	private Date createDate;
	
	private Date modifyDate;
	
	private String createUser;

	private String modifyUser;
	
	private boolean enabed ;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

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

	public Autobots getAutobots() {
		return autobots;
	}

	public void setAutobots(Autobots autobots) {
		this.autobots = autobots;
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
