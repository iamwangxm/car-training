package com.car.training.domain;

import java.io.Serializable;
import java.util.Date;

import com.car.training.enums.BusinessCategory;
import com.car.training.enums.Education;
import com.car.training.enums.ExecutionCategory;
import com.car.training.enums.Sex;


public class Trainer implements Serializable {

	private static final long serialVersionUID = 921909027302657526L;

	private String id;
	
	private String name;

	private String nickname;

	private String password;
	
	private Date brithday;
	
	private String headLogo;
	
	private Sex gender;

	private String idCard;

	private String QQ;

	private String mobile;
	
	private String email;

	private String weixin;

	private String telephone;
	
	private int starLevel;
	
	private Education education;

	private String intro;
	
	private String mainCourse;
	
	private Integer autoYears;
	
	private Integer trainingYears;
	
	private BusinessCategory businessCategory;
	
	private ExecutionCategory executionCategory;
	
	private String currentPosition;

	private Date createDate;

	private Date modifyDate;
	
	private boolean authFaithed;
	
	private Integer averageScore;
	
	private String vedioURL1;
	
	private String vedioURL2;
	
	private boolean enabled;

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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getBrithday() {
		return brithday;
	}

	public void setBrithday(Date brithday) {
		this.brithday = brithday;
	}

	public String getHeadLogo() {
		return headLogo;
	}

	public void setHeadLogo(String headLogo) {
		this.headLogo = headLogo;
	}

	public Sex getGender() {
		return gender;
	}

	public void setGender(Sex gender) {
		this.gender = gender;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getQQ() {
		return QQ;
	}

	public void setQQ(String qQ) {
		QQ = qQ;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWeixin() {
		return weixin;
	}

	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

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

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
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

	public BusinessCategory getBusinessCategory() {
		return businessCategory;
	}

	public void setBusinessCategory(BusinessCategory businessCategory) {
		this.businessCategory = businessCategory;
	}

	public ExecutionCategory getExecutionCategory() {
		return executionCategory;
	}

	public void setExecutionCategory(ExecutionCategory executionCategory) {
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

	public Integer getAverageScore() {
		return averageScore;
	}

	public void setAverageScore(Integer averageScore) {
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

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
}
