 package com.car.training.action.website;

 import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Autobots;
import com.car.training.service.AutobotsService;


@AutoConfig
public class AutobotDetailAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private AutobotsService autobotsService;

	private Autobots autobots;

	@Override
	public String execute() throws Exception {
		Autobots t = new Autobots();
		if(autobots!=null&&StringUtils.isNotBlank(autobots.getId())){
			t.setId(autobots.getId());
		}
		autobots = autobotsService.findById(t.getId());
		
		return SUCCESS;
	}

	public Autobots getAutobots() {
		return autobots;
	}

	public void setAutobots(Autobots autobots) {
		this.autobots = autobots;
	}

}
