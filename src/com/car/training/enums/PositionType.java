package com.car.training.enums;

import org.ironrhino.core.model.Displayable;

public enum PositionType implements Displayable {
	//销售市场   售后客服    高级管理    人事财务  内训  生产研发
	SALESMARKET,AFTERSERVICE,SENIORMANAGEMENT,HRFINANCE,INNERTRAINING,RANDD;
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
