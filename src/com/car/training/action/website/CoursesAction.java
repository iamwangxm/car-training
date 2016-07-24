 package com.car.training.action.website;

 import java.util.ArrayList;
import java.util.List;

import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Courses;
import com.car.training.service.CoursesService;


@AutoConfig
public class CoursesAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private CoursesService coursesService;

	/** 公共课列表 */
	private ResultPage<Courses> coursesList;
	/** 页大小 */
	private Integer pageSize;
	/** 页号 */
	private Integer pageNo;
	
	@Override
	public String execute() throws Exception {
		Courses courses = new Courses();
		//按条件筛选培训师列表(包含分页)
		 coursesList = coursesService.findPageByCourses(courses, pageSize, pageNo);
		 List<Courses> cs = new ArrayList<>();
		 Courses c = new Courses();
		 cs.add(c);
		 c = new Courses();
		 cs.add(c);
		 c = new Courses();
		 cs.add(c);
		 c = new Courses();
		 cs.add(c);
		 c = new Courses();
		 cs.add(c);
		 c = new Courses();
		 cs.add(c);
		 c = new Courses();
		 cs.add(c);
		 c = new Courses();
		 cs.add(c);
		 coursesList.setResult(cs);
		return SUCCESS;
	}

	public ResultPage<Courses> getCoursesList() {
		return coursesList;
	}

	public void setCoursesList(ResultPage<Courses> coursesList) {
		this.coursesList = coursesList;
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
