package com.car.training.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManagerImpl;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.car.training.exceptions.NotFoundException;
import com.car.training.model.Trainer;

@Component
public class TrainerManagerImpl extends BaseManagerImpl<Trainer> implements TrainerManager {

	@Override
	@Transactional
	public void save(Trainer obj) {
		super.save(obj);
	}
	
	@Override
	@Transactional
	public void delete(String id) {
		if (StringUtils.isBlank(id))
			throw new NotFoundException("要删除的对象不存在");
		super.delete(id);
	}

	@Override
	@Transactional(readOnly=true)
	public Trainer findById(String id) {
		if (StringUtils.isBlank(id))
			return null;
		DetachedCriteria dc = detachedCriteria();
		dc.add(Restrictions.eq("enabled", true));
		dc.add(Restrictions.eq("id", id));
		return findByCriteria(dc);
	}

	@Override
	@Transactional(readOnly=true)
	public ResultPage<Trainer> findPageByTrainer(Trainer autobotsComment, Integer pageSize, Integer pageNo) {
		ResultPage<Trainer> resultPage = new ResultPage<Trainer>();
		if (autobotsComment == null)
			return null;
		DetachedCriteria dc = detachedCriteria();
		dc.add(Restrictions.eq("enabled", true));
		dc.addOrder(Order.asc("displayOrder"));
		resultPage.setCriteria(dc);
		
		pageSize = ((pageSize == null || pageSize <= 0) ? ResultPage.DEFAULT_PAGE_SIZE : pageSize);
		pageNo = ((pageNo == null || pageNo <= 0) ? 1 : pageNo);
		resultPage.setPageSize(pageSize);
		resultPage.setPageNo(pageNo);
		return findByResultPage(resultPage);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Trainer> findListByTrainer(Trainer autobotsComment) {
		DetachedCriteria dc = detachedCriteria();
		dc.add(Restrictions.eq("enabled", true));
		dc.addOrder(Order.asc("displayOrder"));
		return findListByCriteria(dc);
	}
}
