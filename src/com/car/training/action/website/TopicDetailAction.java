 package com.car.training.action.website;

 import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Topic;
import com.car.training.service.TopicService;


@AutoConfig
public class TopicDetailAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TopicService topicService;

	private Topic topic;

	@Override
	public String execute() throws Exception {
		Topic t = new Topic();
		if(topic!=null&&StringUtils.isNotBlank(topic.getId())){
			t.setId(topic.getId());
		}
		topic = topicService.findById(t.getId());
		
		return SUCCESS;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}



}
