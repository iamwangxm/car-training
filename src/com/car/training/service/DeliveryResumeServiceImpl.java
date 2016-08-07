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
import com.car.training.domain.DeliveryResume;
import com.car.training.domain.Trainer;
import com.car.training.utils.ResultPageBeanUtils;

@Component
public class DeliveryResumeServiceImpl  implements DeliveryResumeService{

	@Autowired
	private DeliveryResumeManager deliveryResumeManager;

	/** 新增企业/公司信息 */
	@Override
	@Timing
	@Transactional
	public void save(DeliveryResume deliveryResume) {
		com.car.training.model.DeliveryResume target = new com.car.training.model.DeliveryResume();
		BeanUtils.copyProperties(deliveryResume, target);
		deliveryResumeManager.save(target);
	}

	/** 更新企业/公司信息 */
	@Override
	@Timing
	@Transactional
	public void update(DeliveryResume deliveryResume) {
		this.save(deliveryResume);
	}

	/** 删除企业/公司信息 */
	@Override
	@Timing
	@Transactional
	public void delete(String id) {
		if (StringUtils.isNotBlank(id)) {
			com.car.training.model.DeliveryResume target = new com.car.training.model.DeliveryResume();
			target = deliveryResumeManager.get(id);
			deliveryResumeManager.delete(target);
		}
	}

	/** 获取企业/公司信息 **/
	@Override
	@Timing
	@Transactional(readOnly = true)
	public DeliveryResume findById(String id) {
		com.car.training.model.DeliveryResume source = deliveryResumeManager.get(id);
		if (source == null) {
			return null;
		}
		DeliveryResume target = new DeliveryResume();
		BeanUtils.copyProperties(source, target);
		return target;
	}
	
	/** 获取企业/公司列表 */
	@Override
	@Timing
	@Transactional(readOnly = true)
	public ResultPage<DeliveryResume> findPageByDeliveryResume(DeliveryResume deliveryResume, Integer pageSize, Integer pageNo) {
		ResultPage<DeliveryResume> tResultPage = null;
		ResultPage<com.car.training.model.DeliveryResume> sResultPage = new ResultPage<com.car.training.model.DeliveryResume>();
		com.car.training.model.DeliveryResume target = new com.car.training.model.DeliveryResume();
		BeanUtils.copyProperties(deliveryResume, target);
		sResultPage = deliveryResumeManager.findPageByDeliveryResume(target, pageSize, pageNo);

		if (sResultPage != null) {
			tResultPage = new ResultPage<DeliveryResume>();
			tResultPage = ResultPageBeanUtils.copyProperties(sResultPage);

			if (sResultPage.getResult() != null) {
				tResultPage.setResult(ResultPageBeanUtils.copyDeliveryResumePropertiesToRemote(sResultPage.getResult()));
			}
		}
		return tResultPage;
	}
	
	/** 获取企业/公司列表 */
	@Override
	@Timing
	@Transactional(readOnly = true)
	public List<DeliveryResume> findListByDeliveryResume(DeliveryResume deliveryResume) {
		List<DeliveryResume> resultList = null;
		com.car.training.model.DeliveryResume tDeliveryResume = new com.car.training.model.DeliveryResume();
		BeanUtils.copyProperties(deliveryResume, tDeliveryResume);
		List<com.car.training.model.DeliveryResume> sourceList = deliveryResumeManager.findListByDeliveryResume(tDeliveryResume);
		if (sourceList != null) {
			resultList = new ArrayList<DeliveryResume>(sourceList.size());
			for (com.car.training.model.DeliveryResume sourceDeliveryResume : sourceList) {
				DeliveryResume target = new DeliveryResume();
				BeanUtils.copyProperties(sourceDeliveryResume, target);
				if (sourceDeliveryResume != null && sourceDeliveryResume.getTrainer() != null) {
					Trainer remotingTrainer = new Trainer();
					BeanUtils.copyProperties(sourceDeliveryResume.getTrainer(), remotingTrainer);
					target.setTrainer(remotingTrainer);
				}
				if (sourceDeliveryResume != null && sourceDeliveryResume.getAutobots()!= null) {
					Autobots remotingAutobots = new Autobots();
					BeanUtils.copyProperties(sourceDeliveryResume.getAutobots(), remotingAutobots);
					target.setAutobots(remotingAutobots);
				}
				resultList.add(target);
			}
		}
		return resultList;
	}

	@Override
	@Timing
	@Transactional(readOnly = true)
	public List<DeliveryResume> findByIndexPromoted(Boolean promote, Integer count) {
		List<DeliveryResume> resultList = null;
		List<com.car.training.model.DeliveryResume> sourceList = deliveryResumeManager.findByIndexPromoted(promote, count);
		if (sourceList != null) {
			resultList = new ArrayList<DeliveryResume>(count);

			for (com.car.training.model.DeliveryResume sourceDeliveryResume : sourceList) {
				DeliveryResume target = new DeliveryResume();
				BeanUtils.copyProperties(sourceDeliveryResume, target);
				resultList.add(target);
				count--;
				if (count == 0) {
					break;
				}
			}
		}
		return resultList;
	}
	
}
