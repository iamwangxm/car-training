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
import com.car.training.domain.Trainer;
import com.car.training.utils.ResultPageBeanUtils;

@Component
public class TrainerServiceImpl  implements TrainerService{

	@Autowired
	private TrainerManager trainerManager;

	/** 新增企业/公司信息 */
	@Override
	@Timing
	@Transactional
	public void save(Trainer trainer) {
		com.car.training.model.Trainer target = new com.car.training.model.Trainer();
		BeanUtils.copyProperties(trainer, target);
		trainerManager.save(target);
	}

	/** 更新企业/公司信息 */
	@Override
	@Timing
	@Transactional
	public void update(Trainer trainer) {
		this.save(trainer);
	}

	/** 删除企业/公司信息 */
	@Override
	@Timing
	@Transactional
	public void delete(String id) {
		if (StringUtils.isNotBlank(id)) {
			com.car.training.model.Trainer target = new com.car.training.model.Trainer();
			target = trainerManager.get(id);
			trainerManager.delete(target);
		}
	}

	/** 获取企业/公司信息 **/
	@Override
	@Timing
	@Transactional(readOnly = true)
	public Trainer findById(String id) {
		com.car.training.model.Trainer source = trainerManager.get(id);
		if (source == null) {
			return null;
		}
		Trainer target = new Trainer();
		BeanUtils.copyProperties(source, target);
		return target;
	}
	
	/** 获取企业/公司列表 */
	@Override
	@Timing
	@Transactional(readOnly = true)
	public ResultPage<Trainer> findPageByTrainer(Trainer trainer, Integer pageSize, Integer pageNo) {
		ResultPage<Trainer> tResultPage = null;
		ResultPage<com.car.training.model.Trainer> sResultPage = new ResultPage<com.car.training.model.Trainer>();
		com.car.training.model.Trainer target = new com.car.training.model.Trainer();
		BeanUtils.copyProperties(trainer, target);
		sResultPage = trainerManager.findPageByTrainer(target, pageSize, pageNo);

		if (sResultPage != null) {
			tResultPage = new ResultPage<Trainer>();
			tResultPage = ResultPageBeanUtils.copyProperties(sResultPage);

			if (sResultPage.getResult() != null) {
				tResultPage.setResult(ResultPageBeanUtils.copyTrainerPropertiesToRemote(sResultPage.getResult()));
			}
		}
		return tResultPage;
	}
	
	/** 获取企业/公司列表 */
	@Override
	@Timing
	@Transactional(readOnly = true)
	public List<Trainer> findListByTrainer(Trainer trainer) {
		List<Trainer> resultList = new ArrayList<>();
		com.car.training.model.Trainer tTrainer = new com.car.training.model.Trainer();
		BeanUtils.copyProperties(trainer, tTrainer);
		List<com.car.training.model.Trainer> sourceList = trainerManager.findListByTrainer(tTrainer);
		for (com.car.training.model.Trainer sourceTrainer : sourceList) {
			Trainer target = new Trainer();
			BeanUtils.copyProperties(sourceTrainer, target);
			resultList.add(target);
		}
		return resultList;
	}
	
}
