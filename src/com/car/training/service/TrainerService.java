package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.remoting.Remoting;
import org.springframework.core.annotation.Order;

import com.car.training.domain.Trainer;

@Order(12)
@Remoting
public interface TrainerService  {

	/** 新增培训师信息 */
	void save(Trainer trainer);

	/** 更新培训师信息 */
	void update(Trainer trainer);

	/** 删除培训师信息 */
	void delete(String id);

	/** 获取培训师信息 **/
	Trainer findById(String id);
	
	/** 获取培训师列表 */
	ResultPage<Trainer> findPageByTrainer(Trainer trainer,Integer pageSize,Integer pageNo);

	/** 获取培训师列表 */
	List<Trainer> findListByTrainer(Trainer trainer);
	
}
