 package com.car.training.action;

 import java.util.List;

import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.enums.CompanyType;
import com.car.training.model.Autobots;
import com.car.training.model.Courses;
import com.car.training.model.Jobs;
import com.car.training.model.Topic;
import com.car.training.model.Trainer;
import com.car.training.model.TrainerEssay;
import com.car.training.service.AutobotsManager;
import com.car.training.service.CoursesManager;
import com.car.training.service.JobsManager;
import com.car.training.service.TopicManager;
import com.car.training.service.TrainerEssayManager;
import com.car.training.service.TrainerManager;


@AutoConfig
public class IndexAction extends BaseAction {

	private static final long serialVersionUID = 2048090665437672391L;

	@Autowired
	private JobsManager jobsManager;
	@Autowired
	private TopicManager topicManager;
	@Autowired
	private TrainerManager trainerManager;
	@Autowired
	private CoursesManager coursesManager;
	@Autowired
	private AutobotsManager AutobotsManager;
	@Autowired
	private TrainerEssayManager trainerEssayManager;

	/** 首页推荐培训师大图 */
	private Trainer trainer;
	/** 首页推荐8个培训师列表 */
	private List<Trainer> trainerList;
	/** 首页推荐5个汽车人列表 */
	private List<Autobots> autobotsList;
	/** 首页2个培训需求列表 */
	private List<Jobs> jobsTrainerList;
	/** 首页2个汽车人才需求列表 */
	private List<Jobs> jobsAutobotsList;
	/** 首页培训师原创文章列表 */
	private List<TrainerEssay> trainerEssayList;
	/** 首页培训学热点专题列表 */
	private List<Topic> topicList;
	/** 首页2个公开课列表 */
	private List<Courses> coursesList;

	private String loginState = "N";

	@Override
	public String execute() throws Exception {
		//首页推荐培训师大图1个
		trainer = trainerManager.findByIndexPromoted(true);
		//首页推荐培训师最上顶8位置
		trainerList = trainerManager.findByIndexPromoted(true,8);
		//首页推荐汽车人5个位置
		autobotsList = AutobotsManager.findByIndexPromoted(true,5);
		//首页培训师需求2个位置
		jobsTrainerList = 	jobsManager.findListByIndexType(CompanyType.COMPANY, 2);
		//首页汽车人才需求2个位置
		jobsAutobotsList = 	jobsManager.findListByIndexType(CompanyType.STORE, 2);
		//首页培训师原创文章列表6个位置
		trainerEssayList = trainerEssayManager.findByIndexPromoted(true, 6);
		//首页热点专题列表6个位置
		topicList = topicManager.findListByIndexTopic(6);
		//首页推荐公开课列表2个位置
		coursesList = coursesManager.findByIndexPromoted(true,2);
		
		return SUCCESS;
	}

	public TrainerManager getTrainerManager() {
		return trainerManager;
	}

	public AutobotsManager getAutobotsManager() {
		return AutobotsManager;
	}

	public JobsManager getJobsManager() {
		return jobsManager;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public List<Trainer> getTrainerList() {
		return trainerList;
	}

	public List<Autobots> getAutobotsList() {
		return autobotsList;
	}

	public List<Jobs> getJobsTrainerList() {
		return jobsTrainerList;
	}

	public List<Jobs> getJobsAutobotsList() {
		return jobsAutobotsList;
	}

	public List<TrainerEssay> getTrainerEssayList() {
		return trainerEssayList;
	}

	public List<Topic> getTopicList() {
		return topicList;
	}

	public List<Courses> getCoursesList() {
		return coursesList;
	}

	public String getLoginState() {
		return loginState;
	}
}
