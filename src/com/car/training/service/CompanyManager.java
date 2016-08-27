package com.car.training.service;

import java.util.List;

import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.service.BaseManager;

import com.car.training.model.Company;

public interface CompanyManager extends BaseManager<Company> {

	/** 新增企业/公司信息 */
	void save(Company company);

	/** 更新企业/公司信息 */
	void update(Company company);

	/** 删除企业/公司信息 */
	void delete(String id);

	/** 获取企业/公司信息 **/
	Company findById(String id);
	
	/** 获取企业/公司信息 **/
	Company findByUsernamePassword(String username,String password);
	
	/** 获取企业/公司列表 */
	ResultPage<Company> findPageByCompany(Company company, Integer pageSize, Integer pageNo);
	
	/** 获取企业/公司列表 */
	List<Company> findListByCompany(Company company);
	
}
