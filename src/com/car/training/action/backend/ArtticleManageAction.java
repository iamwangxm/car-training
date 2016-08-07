 package com.car.training.action.backend;

 import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.TrainerEssay;
import com.car.training.service.TrainerEssayService;

@AutoConfig
public class ArtticleManageAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private TrainerEssayService trainerEssayService;
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
		trainerEssayList = trainerEssayService.findPageByTrainerEssay(new TrainerEssay(), pageSize, pageNo);
		return SUCCESS;
	}
	
	/**文章新增&編輯*/
	public String essaySave() throws Exception {
		trainerEssayService.save(trainerEssay);
		return SUCCESS;
	}
	
	/**文章删除*/
	public String essayDelete() throws Exception {
		trainerEssayService.delete(trainerEssay.getId());
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
