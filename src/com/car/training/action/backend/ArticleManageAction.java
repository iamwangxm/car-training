 package com.car.training.action.backend;

 import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.Trainer;
import com.car.training.domain.TrainerEssay;
import com.car.training.domain.UserCenter;
import com.car.training.service.TrainerEssayService;
import com.car.training.service.TrainerService;

@AutoConfig
public class ArticleManageAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerEssayService trainerEssayService;
	@Autowired
	private TrainerService trainerService;
	/**文章列表 */
	private ResultPage<TrainerEssay> trainerEssayList;
	/**文章 */
	private TrainerEssay trainerEssay;
	/** 页大小 */
	private Integer pageSize = 10;
	/** 页号 */
	private Integer pageNo = 1;

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		UserCenter uc = new UserCenter();
		uc = (UserCenter) request.getSession().getAttribute("userDetails");
		Trainer trainer = null;
		if (uc != null) {
			trainer = trainerService.findByUserCenter(uc.getId());
		}
		trainerEssay.setTrainer(trainer);
		trainerEssayList = trainerEssayService.findPageByTrainerEssay(trainerEssay, pageSize, pageNo);
		return SUCCESS;
	}
	
	/**文章新增&編輯*/
	public String essaySave() throws Exception {
		trainerEssayService.save(trainerEssay);
		return SUCCESS;
	}
	
	/**文章删除*/
	public String essayDelete() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String eid = request.getParameter("trainerEssay.id");
		trainerEssayService.delete(eid);
		return SUCCESS;
	}
	
	public ResultPage<TrainerEssay> getTrainerEssayList() {
		return trainerEssayList;
	}
	public void setTrainerEssayList(ResultPage<TrainerEssay> trainerEssayList) {
		this.trainerEssayList = trainerEssayList;
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
