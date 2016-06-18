package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.AutobotsComment;

public interface AutobotsCommentManager extends BaseManager<AutobotsComment> {

	/** 新增汽车人评论信息 */
	void save(AutobotsComment autobotsComment);

	/** 更新汽车人评论信息 */
	void update(AutobotsComment autobotsComment);

	/** 删除汽车人评论信息 */
	void delete(String id);

	/** 获取汽车人评论信息 **/
	AutobotsComment findById(String id);
	
	/** 获取汽车人评论列表 */
	ResultPage<AutobotsComment> findPageByAutobotsComment(AutobotsComment autobotsComment);
	
	/** 获取汽车人评论列表 */
	List<AutobotsComment> findListByAutobotsComment(AutobotsComment autobotsComment);
	
}
