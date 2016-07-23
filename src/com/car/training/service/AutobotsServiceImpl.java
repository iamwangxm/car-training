package com.car.training.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.aop.Timing;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.util.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import com.car.training.domain.Autobots;
import com.car.training.utils.ResultPageBeanUtils;

@Component
public class AutobotsServiceImpl  implements AutobotsService{

	@Autowired
	private AutobotsManager autobotsManager;

	/** 新增汽车人信息 */
	@Override
	@Timing
	@Transactional
	public void save(Autobots autobots) {
		com.car.training.model.Autobots target = new com.car.training.model.Autobots();
		BeanUtils.copyProperties(autobots, target);
		autobotsManager.save(target);
	}

	/** 更新汽车人信息 */
	@Override
	@Timing
	@Transactional
	public void update(Autobots autobots) {
		this.save(autobots);
	}

	/** 删除汽车人信息 */
	@Override
	@Timing
	@Transactional
	public void delete(String id) {
		if (StringUtils.isNotBlank(id)) {
			com.car.training.model.Autobots target = new com.car.training.model.Autobots();
			target = autobotsManager.get(id);
			autobotsManager.delete(target);
		}
	}

	/** 获取汽车人信息 **/
	@Override
	@Timing
	@Transactional(readOnly = true)
	public Autobots findById(String id) {
		com.car.training.model.Autobots source = autobotsManager.get(id);
		if (source == null) {
			return null;
		}
		Autobots target = new Autobots();
		BeanUtils.copyProperties(source, target);
		return target;
	}
	
	/** 获取汽车人列表 */
	@Override
	@Timing
	@Transactional(readOnly = true)
	public ResultPage<Autobots> findPageByAutobots(Autobots autobots, Integer pageSize, Integer pageNo) {
		ResultPage<Autobots> tResultPage = null;
		ResultPage<com.car.training.model.Autobots> sResultPage = new ResultPage<com.car.training.model.Autobots>();
		com.car.training.model.Autobots target = new com.car.training.model.Autobots();
		BeanUtils.copyProperties(autobots, target);
		sResultPage = autobotsManager.findPageByAutobots(target, pageSize, pageNo);

		if (sResultPage != null) {
			tResultPage = new ResultPage<Autobots>();
			tResultPage = ResultPageBeanUtils.copyProperties(sResultPage);

			if (sResultPage.getResult() != null) {
				tResultPage.setResult(ResultPageBeanUtils.copyAutobotsPropertiesToRemote(sResultPage.getResult()));
			}
		}
		return tResultPage;
	}
	
	/** 获取汽车人列表 */
	@Override
	@Timing
	@Transactional(readOnly = true)
	public List<Autobots> findListByAutobots(Autobots autobots) {
		List<Autobots> resultList = new ArrayList<>();
		com.car.training.model.Autobots tAutobots = new com.car.training.model.Autobots();
		BeanUtils.copyProperties(autobots, tAutobots);
		List<com.car.training.model.Autobots> sourceList = autobotsManager.findListByAutobots(tAutobots);
		for (com.car.training.model.Autobots sourceAutobots : sourceList) {
			Autobots target = new Autobots();
			BeanUtils.copyProperties(sourceAutobots, target);
			resultList.add(target);
		}
		return resultList;
	}

	@Override
	@Timing
	@Transactional(readOnly = true)
	public List<Autobots> findByIndexPromoted(Boolean promote, Integer count) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
