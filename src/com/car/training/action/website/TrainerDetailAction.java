 package com.car.training.action.website;

 import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.AutobotsComment;
import com.car.training.domain.Courses;
import com.car.training.domain.Trainer;
import com.car.training.domain.TrainerEssay;
import com.car.training.service.AutobotsCommentService;
import com.car.training.service.CoursesService;
import com.car.training.service.TrainerEssayService;
import com.car.training.service.TrainerService;


@AutoConfig
public class TrainerDetailAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerService trainerService;
	@Autowired
	private CoursesService coursesService;
	@Autowired
	private TrainerEssayService trainerEssayService;
	@Autowired
	private AutobotsCommentService autobotsCommentService;
	
	private Trainer trainer;
	/**学员评论列表 */
	private List<AutobotsComment> autobotsCommentList;
	/**学员评论列表 */
	private List<TrainerEssay> trainerEssayList;
	/**培训公开课列表 */
	private List<Courses> coursesList;
	

	@Override
	public String execute() throws Exception {
		Trainer t = new Trainer();
		if (trainer != null && StringUtils.isNotBlank(trainer.getId())) {
			t.setId(trainer.getId());
		}
		trainer = trainerService.findById(t.getId());
		if (trainer != null) {
			Courses course = new Courses();
			course.setTrainer(trainer);
			coursesList = coursesService.findListByCourses(course);
			trainer.setCoursesList(coursesList);
			
			TrainerEssay trainerEssay = new TrainerEssay();
			trainerEssay.setTrainer(trainer);
			trainerEssayList = trainerEssayService.findListByTrainerEssay(trainerEssay);
			trainer.setTrainerEssayList(trainerEssayList);
			
			AutobotsComment autobotsComment = new AutobotsComment();
			autobotsComment.setTrainer(trainer);
			autobotsCommentList = autobotsCommentService.findListByAutobotsComment(autobotsComment);
			trainer.setAutobotsCommentList(autobotsCommentList);
		}
		return SUCCESS;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

	public List<AutobotsComment> getAutobotsCommentList() {
		return autobotsCommentList;
	}

	public void setAutobotsCommentList(List<AutobotsComment> autobotsCommentList) {
		this.autobotsCommentList = autobotsCommentList;
	}

	public List<TrainerEssay> getTrainerEssayList() {
		return trainerEssayList;
	}

	public void setTrainerEssayList(List<TrainerEssay> trainerEssayList) {
		this.trainerEssayList = trainerEssayList;
	}

	public List<Courses> getCoursesList() {
		return coursesList;
	}

	public void setCoursesList(List<Courses> coursesList) {
		this.coursesList = coursesList;
	}

}
