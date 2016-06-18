package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.TopicComment;

public interface TopicCommentManager extends BaseManager<TopicComment> {

	/** 新增企业/公司信息 */
	void save(TopicComment topicComment);

	/** 更新企业/公司信息 */
	void update(TopicComment topicComment);

	/** 删除企业/公司信息 */
	void delete(String id);

	/** 获取企业/公司信息 **/
	TopicComment findById(String id);
	
	/** 获取企业/公司列表 */
	ResultPage<TopicComment> findPageByTopicComment(TopicComment topicComment);
	
	/** 获取企业/公司列表 */
	List<TopicComment> findListByTopicComment(TopicComment topicComment);
	
}
