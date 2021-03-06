package com.car.training.enums;

import org.ironrhino.core.model.Displayable;

public enum CompanyType implements Displayable {
	COMPANY, STORE;

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
