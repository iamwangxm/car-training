package com.car.training.model;

import java.util.Date;

import javax.persistence.Column;

import org.ironrhino.core.metadata.UiConfig;
import org.ironrhino.core.model.BaseEntity;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class AutobotsComment extends BaseEntity{

	private static final long serialVersionUID = 7573757095426894290L;
	
	/**内容设计评分*/
	@Column(nullable=false) 
	private Integer	 contentDesignScore;
	
	/**课堂气氛评分*/
	@Column(nullable=false) 
	private Integer	 lessonAtmosphereScore;
	
	/**课后收获评分*/
	@Column(nullable=false) 
	private Integer	 afterLessonGainsScore;
	
	/**评论内容*/
	@Column(length = 5000,nullable=true) 
	private String	content;
	
	/**创建日期*/
	@UiConfig(hidden = true)
	@Column(updatable = false) 
	private Date createDate = new Date();
	
	/**是否启用*/
	@JsonIgnore
	private boolean enabed = true;

	public Integer getContentDesignScore() {
		return contentDesignScore;
	}

	public void setContentDesignScore(Integer contentDesignScore) {
		this.contentDesignScore = contentDesignScore;
	}

	public Integer getLessonAtmosphereScore() {
		return lessonAtmosphereScore;
	}

	public void setLessonAtmosphereScore(Integer lessonAtmosphereScore) {
		this.lessonAtmosphereScore = lessonAtmosphereScore;
	}

	public Integer getAfterLessonGainsScore() {
		return afterLessonGainsScore;
	}

	public void setAfterLessonGainsScore(Integer afterLessonGainsScore) {
		this.afterLessonGainsScore = afterLessonGainsScore;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public boolean isEnabed() {
		return enabed;
	}

	public void setEnabed(boolean enabed) {
		this.enabed = enabed;
	}
	
	
}
