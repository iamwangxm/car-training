package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.Trainer;

public interface TrainerManager extends BaseManager<Trainer> {

	/** 新增培训师信息 */
	void save(Trainer trainer);

	/** 更新培训师信息 */
	void update(Trainer trainer);

	/** 删除培训师信息 */
	void delete(String id);

	/** 获取培训师信息 **/
	Trainer findById(String id);
	
	/** 获取培训师信息 **/
	Trainer findByUserCenter(String uid) ;
	
	/** 获取首页推荐培训师信息 **/
	Trainer findByIndexPromoted(Boolean promote);
	
	/** 获取首页推荐培训师信息 **/
	List<Trainer> findByIndexPromoted(Boolean promote,Integer count);
	
	/** 获取培训师列表 */
	ResultPage<Trainer> findPageByTrainer(Trainer trainer, Integer pageSize, Integer pageNo);
	
	/** 获取培训师列表 */
	List<Trainer> findListByTrainer(Trainer trainer);
	
}
