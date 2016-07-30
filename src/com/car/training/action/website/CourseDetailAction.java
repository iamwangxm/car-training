package com.car.training.action.website;

import org.apache.commons.lang3.StringUtils;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Courses;
import com.car.training.service.CoursesService;

@AutoConfig
public class CourseDetailAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private CoursesService courseService;

	private Courses course;

	@Override
	public String execute() throws Exception {
		Courses t = new Courses();
		if (course != null && StringUtils.isNotBlank(course.getId())) {
			t.setId(course.getId());
		}
		course = courseService.findById(t.getId());

		return SUCCESS;
	}

	public Courses getCourse() {
		return course;
	}

	public void setCourse(Courses course) {
		this.course = course;
	}

}
