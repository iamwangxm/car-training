package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.Topic;

public interface TopicManager extends BaseManager<Topic> {

	/** 新增企业/公司信息 */
	void save(Topic topic);

	/** 更新企业/公司信息 */
	void update(Topic topic);

	/** 删除企业/公司信息 */
	void delete(String id);

	/** 获取企业/公司信息 **/
	Topic findById(String id);
	
	/** 获取企业/公司列表 */
	ResultPage<Topic> findPageByTopic(Topic topic);
	
	/** 获取企业/公司列表 */
	List<Topic> findListByTopic(Topic topic);
	
}
