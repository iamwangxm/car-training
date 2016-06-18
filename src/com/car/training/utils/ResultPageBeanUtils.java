package com.car.training.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;

import org.ironrhino.core.model.ResultPage;

import com.car.training.domain.Autobots;
import com.car.training.domain.AutobotsComment;
import com.car.training.domain.Company;
import com.car.training.domain.Courses;
import com.car.training.domain.Jobs;
import com.car.training.domain.Topic;
import com.car.training.domain.TopicComment;
import com.car.training.domain.Trainer;
import com.car.training.domain.TrainerEssay;
import com.car.training.domain.UserCenter;

public class ResultPageBeanUtils {

	/**
	 * 浅复制分页对象的基本信息，不复result数据
	 * 
	 * @param source
	 * @return
	 * @author Alex
	 * @date 2016年6月10日 下午19:22:51
	 */
	public static <T, K> ResultPage<T> copyProperties(ResultPage<K> source,Integer pageSize,Integer pageNo) {
		ResultPage<T> resultPageTarget = new ResultPage<>();
		resultPageTarget.setResult(new ArrayList<>());
		// 复制page信息
		resultPageTarget.setPaginating(source.getPaginating());
		resultPageTarget.setPageNo(source.getPageNo());
		resultPageTarget.setPageSize(source.getPageSize());
		resultPageTarget.setTookInMillis(source.getTookInMillis());
		resultPageTarget.setTotalResults(source.getTotalResults());
		
		pageSize = ((pageSize == null || pageSize <= 0) ? ResultPage.DEFAULT_PAGE_SIZE : pageSize);
		pageNo = ((pageNo == null || pageNo <= 0) ? 1 : pageNo);
		resultPageTarget.setPageSize(pageSize);
		resultPageTarget.setPageNo(pageNo);
		return resultPageTarget;
	}

	/**
	 * 复制Autobots： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<Autobots> copyAutobotsPropertiesToRemote(
			Collection<com.car.training.model.Autobots> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<Autobots> targets = new LinkedHashSet<>();
		for (com.car.training.model.Autobots source : sources) {
			Autobots target = CopyPropertiesUtil.copyAutobotsPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制AutobotsComment： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<AutobotsComment> copyAutobotsCommentPropertiesToRemote(
			Collection<com.car.training.model.AutobotsComment> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<AutobotsComment> targets = new LinkedHashSet<>();
		for (com.car.training.model.AutobotsComment source : sources) {
			AutobotsComment target = CopyPropertiesUtil.copyAutobotsCommentPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制Company： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<Company> copyCompanyPropertiesToRemote(
			Collection<com.car.training.model.Company> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<Company> targets = new LinkedHashSet<>();
		for (com.car.training.model.Company source : sources) {
			Company target = CopyPropertiesUtil.copyCompanyPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制Courses： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<Courses> copyCoursesPropertiesToRemote(
			Collection<com.car.training.model.Courses> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<Courses> targets = new LinkedHashSet<>();
		for (com.car.training.model.Courses source : sources) {
			Courses target = CopyPropertiesUtil.copyCoursesPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制Jobs： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<Jobs> copyJobsPropertiesToRemote(
			Collection<com.car.training.model.Jobs> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<Jobs> targets = new LinkedHashSet<>();
		for (com.car.training.model.Jobs source : sources) {
			Jobs target = CopyPropertiesUtil.copyJobsPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制Topic： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<Topic> copyTopicPropertiesToRemote(
			Collection<com.car.training.model.Topic> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<Topic> targets = new LinkedHashSet<>();
		for (com.car.training.model.Topic source : sources) {
			Topic target = CopyPropertiesUtil.copyTopicPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制TopicComment： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<TopicComment> copyTopicCommentPropertiesToRemote(
			Collection<com.car.training.model.TopicComment> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<TopicComment> targets = new LinkedHashSet<>();
		for (com.car.training.model.TopicComment source : sources) {
			TopicComment target = CopyPropertiesUtil.copyTopicCommentPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制Trainer： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<Trainer> copyTrainerPropertiesToRemote(
			Collection<com.car.training.model.Trainer> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<Trainer> targets = new LinkedHashSet<>();
		for (com.car.training.model.Trainer source : sources) {
			Trainer target = CopyPropertiesUtil.copyTrainerPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制TrainerEssay： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<TrainerEssay> copyTrainerEssayPropertiesToRemote(
			Collection<com.car.training.model.TrainerEssay> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<TrainerEssay> targets = new LinkedHashSet<>();
		for (com.car.training.model.TrainerEssay source : sources) {
			TrainerEssay target = CopyPropertiesUtil.copyTrainerEssayPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
	
	/**
	 * 复制UserCenter： model --> remote
	 * 
	 * @param sources
	 * @return results
	 */
	public static Collection<UserCenter> copyUserCenterPropertiesToRemote(
			Collection<com.car.training.model.UserCenter> sources) {
		if (sources == null) {
			return null;
		}
		LinkedHashSet<UserCenter> targets = new LinkedHashSet<>();
		for (com.car.training.model.UserCenter source : sources) {
			UserCenter target = CopyPropertiesUtil.copyUserCenterPropertiesToRemote(source);
			targets.add(target);
		}
		return targets;
	}
}
