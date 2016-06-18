package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.TrainerEssay;

public interface TrainerEssayManager extends BaseManager<TrainerEssay> {

	/** 新增企业/公司信息 */
	void save(TrainerEssay trainerEssay);

	/** 更新企业/公司信息 */
	void update(TrainerEssay trainerEssay);

	/** 删除企业/公司信息 */
	void delete(String id);

	/** 获取企业/公司信息 **/
	TrainerEssay findById(String id);
	
	/** 获取企业/公司列表 */
	ResultPage<TrainerEssay> findPageByTrainerEssay(TrainerEssay trainerEssay);
	
	/** 获取企业/公司列表 */
	List<TrainerEssay> findListByTrainerEssay(TrainerEssay trainerEssay);
	
}
