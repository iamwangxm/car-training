 package com.car.training.action.backend;

 import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.ironrhino.core.metadata.AutoConfig;
import org.ironrhino.core.model.ResultPage;
import org.ironrhino.core.struts.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.car.training.domain.DeliveryResume;
import com.car.training.service.DeliveryResumeService;

@AutoConfig
public class ApplyJobHistoryAction extends BaseAction {

	private static final long serialVersionUID = 4839883380537115435L;

	@Autowired
	private DeliveryResumeService deliveryResumeService;
	/**简历投递记录列表 */
	private ResultPage<DeliveryResume> deliveryResumeList;
	/** 页大小 */
	private Integer pageSize = 10;
	/** 页号 */
	private Integer pageNo = 1;
	
	@Override
	public String execute() throws Exception {
		deliveryResumeList = deliveryResumeService.findPageByDeliveryResume(new DeliveryResume(), pageSize, pageNo);
		return SUCCESS;
	}
	
	public String delete(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String did = request.getParameter("dr.id");
		deliveryResumeService.delete(did);
		return SUCCESS;
	}
	public ResultPage<DeliveryResume> getDeliveryResumeList() {
		return deliveryResumeList;
	}

	public void setDeliveryResumeList(ResultPage<DeliveryResume> deliveryResumeList) {
		this.deliveryResumeList = deliveryResumeList;
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
