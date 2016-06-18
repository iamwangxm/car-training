package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.Trainer;

public interface TrainerManager extends BaseManager<Trainer> {

	/** 新增企业/公司信息 */
	void save(Trainer trainer);

	/** 更新企业/公司信息 */
	void update(Trainer trainer);

	/** 删除企业/公司信息 */
	void delete(String id);

	/** 获取企业/公司信息 **/
	Trainer findById(String id);
	
	/** 获取企业/公司列表 */
	ResultPage<Trainer> findPageByTrainer(Trainer trainer);
	
	/** 获取企业/公司列表 */
	List<Trainer> findListByTrainer(Trainer trainer);
	
}
