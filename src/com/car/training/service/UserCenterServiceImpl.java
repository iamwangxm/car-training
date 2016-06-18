package com.car.training.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.util.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import com.car.training.domain.UserCenter;

@Component
public class UserCenterServiceImpl implements UserCenterService {

	@Autowired
	private UserCenterManager employeeManager;

	@Override
	public void save(UserCenter uc) {
		com.car.training.model.UserCenter target = new com.car.training.model.UserCenter();
		BeanUtils.copyProperties(uc, target);
		employeeManager.save(target);
	}

	@Override
	public void update(UserCenter uc) {
		com.car.training.model.UserCenter  target = employeeManager.get(uc.getId());
		BeanUtils.copyProperties(uc, target);
		employeeManager.save(target);
	}

	@Override
	public boolean accepts(final String username) {
		return employeeManager.accepts(username);
	}

	@Override
	public UserCenter findById(String userId) {
		com.car.training.model.UserCenter source = employeeManager.get(userId);
		UserCenter target = null;
		if (source != null) {
			target = new UserCenter();
			BeanUtils.copyProperties(source, target);
		}
		return target;
	}

	@Override
	public void changePassword(String username, String currentPassword, String newPassword) {
		employeeManager.changePassword(username, currentPassword, newPassword);
	}

	@Override
	public void resetPassword(String username, String verifycode, String newPassword) {
		employeeManager.resetPassword(username, verifycode, newPassword);
	}

	@Override
	public void forgetPassword(String username, String verifycode, String newPassword) {
		employeeManager.forgetPassword(username, verifycode, newPassword);
	}

	@Override
	public UserDetails loadUserByUsername(final String username) {
		com.car.training.model.UserCenter source = (com.car.training.model.UserCenter) employeeManager
				.loadUserByUsername(username);
		UserCenter target = null;
		if (source != null) {
			target = new UserCenter();
			org.springframework.beans.BeanUtils.copyProperties(source, target);
		}
		return (UserDetails) target;
	}

	@Override
	public UserCenter findByUsername(String username) {
		com.car.training.model.UserCenter source = employeeManager.findByUsername(username);
		UserCenter target = null;
		if (source != null) {
			target = new UserCenter();
			BeanUtils.copyProperties(source, target);
		}
		return target;
	}

	@Override
	public UserCenter findByMobile(String mobile) {
		com.car.training.model.UserCenter source = employeeManager.findByMobile(mobile);
		UserCenter target = null;
		if (source != null) {
			target = new UserCenter();
			BeanUtils.copyProperties(source, target);
		}
		return target;
	}

	@Override
	public void delete(String userId) {
		com.car.training.model.UserCenter employee = employeeManager.get(userId);
		if (employee != null) {
			employeeManager.delete(employee);
		}
	}

	@Override
	public void recover(String userId) {
		com.car.training.model.UserCenter  uc = employeeManager.get(userId);
		if (uc != null) {
			employeeManager.recover(uc);
		}
	}

	@SuppressWarnings("unused")
	private List<UserCenter> copyProperties(List<com.car.training.domain.UserCenter> as) {

		if (as == null)
			return null;
		List<UserCenter> bs = new ArrayList<>();
		for (com.car.training.domain.UserCenter source : as) {
			if (source != null) {
				UserCenter target = new UserCenter();
				BeanUtils.copyProperties(source, target);
				bs.add(target);
			}
		}
		return bs;
	}
	
	@Override
	public UserCenter findByUsernamePassword(String username, String password) {
		UserCenter  target = null;
		if (StringUtils.isNotBlank(username)) {
			com.car.training.model.UserCenter source = employeeManager.findByUsernamePassword(username, password);
			if (source != null) {
				target = new UserCenter();
				BeanUtils.copyProperties(source, target);
			}
		}
		return target;
	}
}
