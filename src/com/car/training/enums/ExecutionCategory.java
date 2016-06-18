package com.car.training.enums;

import org.ironrhino.core.model.Displayable;

public enum ExecutionCategory implements Displayable {
	//开发 培训 辅导 托管
	DEVELOPMENT,TRAINING,TUTORSHIP,TRUSTEE;
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
