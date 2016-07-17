 package com.car.training.action;

 import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Topic;
import com.car.training.service.TopicService;


@AutoConfig
public class TopicAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TopicService topicService;
	/** 专题列表 */
	private ResultPage<Topic> topicList;
	/** 页大小 */
	private Integer pageSize;
	/** 页号 */
	private Integer pageNo;
	
	@Override
	public String execute() throws Exception {
		//专题列表(包含分页)
		topicList = topicService.findPageByTopic(new Topic(), pageSize, pageNo);
		
		return SUCCESS;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}


}
