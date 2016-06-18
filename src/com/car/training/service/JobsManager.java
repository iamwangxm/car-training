package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.Jobs;

public interface JobsManager extends BaseManager<Jobs> {

	/** 新增企业/公司信息 */
	void save(Jobs jobs);

	/** 更新企业/公司信息 */
	void update(Jobs jobs);

	/** 删除企业/公司信息 */
	void delete(String id);

	/** 获取企业/公司信息 **/
	Jobs findById(String id);
	
	/** 获取企业/公司列表 */
	ResultPage<Jobs> findPageByJobs(Jobs jobs);
	
	/** 获取企业/公司列表 */
	List<Jobs> findListByJobs(Jobs jobs);
	
}
