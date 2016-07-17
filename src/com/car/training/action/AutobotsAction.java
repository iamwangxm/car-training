 package com.car.training.action;

 import java.util.List;
import java.util.Set;

import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Autobots;
import com.car.training.enums.PositionType;
import com.car.training.service.AutobotsService;


@AutoConfig
public class AutobotsAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private AutobotsService autobotsService;

	/** 按条件筛选汽车人列表 */
	private List<Autobots> autobotsList;
	
	/** 岗位类型 */
	private PositionType positionType;
	/** 执行类别 */
	private Set<String> executionCategories;
	/**汽车行业经验 */
	private Integer autoYears;
	/** 关健字 */
	private String keyword;
	
	@Override
	public String execute() throws Exception {
		Autobots autobots = new Autobots();
		autobots.setPositionType(positionType);
		autobots.setAutoYears(autoYears);
		autobots.setCurrentPosition(keyword);
		//按条件筛选培训师列表(包含分页)
		autobotsList = autobotsService.findListByAutobots(autobots);
		
		return SUCCESS;
	}

	public List<Autobots> getAutobotsList() {
		return autobotsList;
	}

	public void setAutobotsList(List<Autobots> autobotsList) {
		this.autobotsList = autobotsList;
	}

	public PositionType getPositionType() {
		return positionType;
	}

	public void setPositionType(PositionType positionType) {
		this.positionType = positionType;
	}

	public Set<String> getExecutionCategories() {
		return executionCategories;
	}

	public void setExecutionCategories(Set<String> executionCategories) {
		this.executionCategories = executionCategories;
	}

	public Integer getAutoYears() {
		return autoYears;
	}

	public void setAutoYears(Integer autoYears) {
		this.autoYears = autoYears;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


}
