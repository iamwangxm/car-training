package com.car.training.model;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;

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

import org.ironrhino.common.model.Region;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.metadata.NotInCopy;
import org.ironrhino.core.metadata.UiConfig;
import org.ironrhino.core.model.BaseEntity;
import org.ironrhino.core.search.elasticsearch.annotations.Searchable;
import org.ironrhino.core.util.AuthzUtils;
import org.nustaq.serialization.annotations.Version;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.car.training.enums.MarryStatus;
import com.car.training.enums.Gender;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Searchable
@AutoConfig
@javax.persistence.Entity
@Table(name = "user_center", indexes = { @javax.persistence.Index(columnList = "username") })
public class UserCenter extends BaseEntity implements UserDetails {

	private static final long serialVersionUID = 4453172705904061090L;

	/** 姓名 */
	@Column(length = 50, nullable = true)
	private String name;

	/** 昵称 */
	@Column(length = 50, nullable = true)
	private String nickname;

	/**用户名r**/
	@Column(length = 50, nullable = false)
	private String username;
	
	/** 密码 */
	@Column(length = 50, nullable = true)
	private String password;

	/** 生日 */
	private Date brithday;

	/** 头像 */
	@Column(length = 255, nullable = true)
	@UiConfig(cssClass = "imagepick", viewTemplate = "<#if value?has_content><a href=\"<@url value=value/>\" target=\"_blank\"><img src=\"<@url value=value/>\" style=\"height:50px;\"/></a></#if>")
	private String headLogo;

	/** 性别 */
	@Enumerated(EnumType.STRING)
	@Column(length=10, nullable = true)
	private Gender gender;
	
	/** 婚姻状态*/
	@Enumerated(EnumType.STRING)
	@Column(length=20, nullable = true)
	private MarryStatus marryStatus;
	
	/** 财富值 */
	private BigDecimal wealth;
	
	/** 财富值开始有效日期 */
	@Temporal(TemporalType.DATE)
	private Date wealthStartDate;
	
	/** 财富值结束有效日期 */
	@Temporal(TemporalType.DATE)
	private Date wealthEndDate;

	/** 身份证号 */
	@Column(length = 30, nullable = true)
	private String idCard;

	/** QQ */
	@Column(length = 20, nullable = true)
	private String QQ;

	/** 手机 */
	@Column(length = 20, nullable = true)
	private String mobile;

	/** 邮件 */
	@Column(length = 50, nullable = true)
	private String email;

	/** 微信号 */
	@Column(length = 20, nullable = true)
	private String weixin;

	/** 电话号码 */
	@Column(length = 20, nullable = true)
	private String telephone;

	/** 简介 */
	@Column(length = 2000, nullable = true)
	private String intro;

	/** 区域 */
	@JoinColumn(name = "regionId", foreignKey = @ForeignKey(ConstraintMode.NO_CONSTRAINT) )
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	private Region region;

	/** 创建日期 */
	@UiConfig(hidden = true)
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date createDate = new Date();

	/** 活跃日期 */
	@UiConfig(width = "130px")
	@Temporal(TemporalType.TIMESTAMP)
	private Date activeDate = new Date();

	/** 修改日期 */
	@NotInCopy
	@UiConfig(hidden = true)
	@Column(insertable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date modifyDate;

	/** 创建人 */
	@NotInCopy
	@UiConfig(hidden = true)
	@Column(updatable = false)
	private String createUser;

	/** 修改人 */
	@NotInCopy
	@UiConfig(hidden = true)
	@Column(insertable = false)
	private String modifyUser;

	/** 是否启用 */
	@JsonIgnore
	private boolean enabled = true;

	/** 版本 */
	@Version(value = 0)
	@UiConfig(hidden = true)
	private int version = -1;

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

	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setLegiblePassword(String legiblePassword) {
		this.password = AuthzUtils.encodePassword(this, legiblePassword);
	}

	public boolean isPasswordValid(String legiblePassword) {
		return AuthzUtils.encodePassword(this, legiblePassword).equals(this.password);
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

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public MarryStatus getMarryStatus() {
		return marryStatus;
	}

	public void setMarryStatus(MarryStatus marryStatus) {
		this.marryStatus = marryStatus;
	}

	public BigDecimal getWealth() {
		return wealth;
	}

	public void setWealth(BigDecimal wealth) {
		this.wealth = wealth;
	}

	public Date getWealthStartDate() {
		return wealthStartDate;
	}

	public void setWealthStartDate(Date wealthStartDate) {
		this.wealthStartDate = wealthStartDate;
	}

	public Date getWealthEndDate() {
		return wealthEndDate;
	}

	public void setWealthEndDate(Date wealthEndDate) {
		this.wealthEndDate = wealthEndDate;
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

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getActiveDate() {
		return activeDate;
	}

	public void setActiveDate(Date activeDate) {
		this.activeDate = activeDate;
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

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}
}
