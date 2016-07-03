//package com.car.training.action;
//
//import java.util.List;
//
//import org.hibernate.criterion.Order;
//import org.ironrhino.core.metadata.AutoConfig;
//import org.ironrhino.core.model.ResultPage;
//import org.ironrhino.core.struts.BaseAction;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import com.weshare.enums.BannerType;
//import com.weshare.enums.FeatureType;
//import com.weshare.model.Banner;
//import com.weshare.model.Resort;
//import com.weshare.model.Scenic;
//import com.weshare.service.BannerManager;
//import com.weshare.service.ResortManager;
//import com.weshare.service.ScenicManager;
//
//@AutoConfig
//public class IndexAction extends BaseAction {
//
//	private static final long serialVersionUID = 2048090665437672391L;
//
//	@Autowired
//	private ResortManager resortManager;
//	@Autowired
//	private ScenicManager scenicManager;
//	@Autowired
//	private BannerManager bannerManager;
//
//	/** 首页广告条列表 */
//	private List<Banner> bannerList;
//	/** 首页最新度假屋列表 */
//	private List<Resort> resortList;
//	/** 首页推荐城市列表 */
//	private List<Scenic> scenicsList;
//	/** 首页特色列表 */
//	private List<FeatureType> featureList;
//	/** 首页特色度假屋列表 */
//	private List<Resort> featureResortList;
//	// /** 首页广告条3合1图片列表 */
//	// private Set<String> imageList = new HashSet<String>();
//
//	private String loginState = "N";
//
//	@Override
//	public String execute() throws Exception {
//
//		bannerList = bannerManager.getBannerByLocation(BannerType.WEBSITE_INDEX);
//		// if (bannerList != null) {
//		// if (bannerList.size() >= 3) {
//		// for (int i = 0; i < 3; i++) {
//		// imageList.add(bannerList.get(i).getImage());
//		// }
//		// bannerList.remove(Integer.parseInt((System.currentTimeMillis() % 3) +
//		// ""));
//		// bannerList.remove(Integer.parseInt((System.currentTimeMillis() % 2) +
//		// ""));
//		// } else {
//		// for (int i = 0; i < bannerList.size(); i++) {
//		// imageList.add(bannerList.get(i).getImage());
//		// }
//		// Banner banner = bannerList
//		// .get(Integer.parseInt((System.currentTimeMillis() %
//		// (bannerList.size())) + ""));
//		// bannerList.clear();
//		// bannerList.add(banner);
//		// }
//		// }
//		scenicsList = scenicManager.getIndexScenics();
//		ResultPage<Resort> rg = new ResultPage<>();
//		rg.setPageNo(1);
//		rg.setPageSize(9);
//		resortList = resortManager.findAllByOrder(new Order[] { Order.desc("modifyDate") }, rg);
//		featureList = resortManager.findFeatureTypesMoreThanThree();
//		if (featureList != null && featureList.size() > 0) {
//			featureResortList = resortManager.findByFeatureType(featureList.get(0));
//		}
//
//		return SUCCESS;
//	}
//
//	public List<Banner> getBannerList() {
//		return bannerList;
//	}
//
//	public void setBannerList(List<Banner> bannerList) {
//		this.bannerList = bannerList;
//	}
//
//	public List<Resort> getResortList() {
//		return resortList;
//	}
//
//	public void setResortList(List<Resort> resortList) {
//		this.resortList = resortList;
//	}
//
//	public List<Scenic> getScenicsList() {
//		return scenicsList;
//	}
//
//	public void setScenicsList(List<Scenic> scenicsList) {
//		this.scenicsList = scenicsList;
//	}
//
//	public List<FeatureType> getFeatureList() {
//		return featureList;
//	}
//
//	public void setFeatureList(List<FeatureType> featureList) {
//		this.featureList = featureList;
//	}
//
//	public List<Resort> getFeatureResortList() {
//		return featureResortList;
//	}
//
//	public void setFeatureResortList(List<Resort> featureResortList) {
//		this.featureResortList = featureResortList;
//	}
//
//	// public Set<String> getImageList() {
//	// return imageList;
//	// }
//	//
//	// public void setImageList(Set<String> imageList) {
//	// this.imageList = imageList;
//	// }
//
//	public String getLoginState() {
//		return loginState;
//	}
//
//}
