 package com.car.training.action.website;

 import java.util.List;

import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Autobots;
import com.car.training.domain.Courses;
import com.car.training.domain.Jobs;
import com.car.training.domain.Topic;
import com.car.training.domain.Trainer;
import com.car.training.domain.TrainerEssay;
import com.car.training.enums.CompanyType;
import com.car.training.service.AutobotsService;
import com.car.training.service.CoursesService;
import com.car.training.service.JobsService;
import com.car.training.service.TopicService;
import com.car.training.service.TrainerEssayService;
import com.car.training.service.TrainerService;

@AutoConfig
public class IndexAction extends BaseAction {

	private static final long serialVersionUID = 2048090665437672391L;

	@Autowired
	private JobsService jobsService;
	@Autowired
	private TopicService topicService;
	@Autowired
	private TrainerService trainerService;
	@Autowired
	private CoursesService coursesService;
	@Autowired
	private AutobotsService AutobotsService;
	@Autowired
	private TrainerEssayService trainerEssayService;

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
		trainer = trainerService.findByIndexPromoted(true);
		//首页推荐培训师最上顶8位置
		trainerList = trainerService.findByIndexPromoted(true,8);
		//首页推荐汽车人5个位置
		autobotsList = AutobotsService.findByIndexPromoted(true,5);
		//首页培训师需求2个位置
		jobsTrainerList = 	jobsService.findListByIndexType(CompanyType.COMPANY, 2);
		//首页汽车人才需求2个位置
		jobsAutobotsList = 	jobsService.findListByIndexType(CompanyType.STORE, 2);
		//首页培训师原创文章列表6个位置
		trainerEssayList = trainerEssayService.findByIndexPromoted(true, 6);
		//首页热点专题列表6个位置
		topicList = topicService.findListByIndexTopic(6);
		//首页推荐公开课列表2个位置
		coursesList = coursesService.findByIndexPromoted(true,2);
		
		return SUCCESS;
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
