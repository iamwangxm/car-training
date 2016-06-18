package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.Autobots;

public interface AutobotsManager extends BaseManager<Autobots> {

	/** 新增汽车人信息 */
	public void save(Autobots autobots);

	/** 更新汽车人信息 */
	public void update(Autobots autobots);

	/** 删除汽车人信息 */
	public void delete(String id);

	/** 获取汽车人信息 **/
	public Autobots findById(String id);
	
	/** 获取汽车人列表 */
	public ResultPage<Autobots> findPageByAutobots(Autobots autobots);
	
	/** 获取汽车人列表 */
	public List<Autobots> findListByAutobots(Autobots autobots);
	
}
