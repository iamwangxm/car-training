package com.car.training.enums;

import org.ironrhino.core.model.Displayable;

public enum CourseType implements Displayable {
	//产品,销售,售后,非技术,售后技术,二手车,水平业务,业务竞赛,经销商,托管业务
	PRODUCT, SELL,AFTERSELLNOSKILL,AFTERSELLSKILL,SECONDCAR,HORIZONTALBUSINESS,COMPETITIONBUSINESS,AGENCY,TRUSTEEBUSINESS;
	
	@Override
	public String getName() {
		return name();
	}

	@Override
	public String getDisplayName() {
		return Displayable.super.getDisplayName();
	}

	@Override
	public String toString() {
		return getDisplayName();
	}
}
