package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.Courses;

public interface CoursesManager extends BaseManager<Courses> {

	/** 新增企业/公司信息 */
	void save(Courses courses);

	/** 更新企业/公司信息 */
	void update(Courses courses);

	/** 删除企业/公司信息 */
	void delete(String id);

	/** 获取企业/公司信息 **/
	Courses findById(String id);
	
	/** 获取企业/公司列表 */
	ResultPage<Courses> findPageByCourses(Courses courses);
	
	/** 获取企业/公司列表 */
	List<Courses> findListByCourses(Courses courses);
	
}
