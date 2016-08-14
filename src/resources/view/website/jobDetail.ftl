<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value="/assets/website/css/qcren.css"/>" type="text/css" media="screen" />

<link rel="stylesheet" type="text/css" href="<@url value="/assets/website/css/lrtk.css"/>" />
<script src="<@url value="/assets/website/js/jquery1.42.min.js?v=1.1.0"/>"></script>
<script src="<@url value="/assets/website/js/jquery.superslide.2.1.1.js?v=1.1.0"/>" type="text/javascript"></script>
</head>

<body>
<!-- 头部开始 -->	
<#include "/assets/website/common/header.html">
<!-- 头部结束 -->	

<!-- main开始 -->


<div class="content">
	<#if jobs?? && jobs.company??>
    <div class="ny_zhaopin">
    	<div class="zhaopin_l left">
        	<div class="zp_qy">
            	<div class="zwmc">${jobs.name!}</div>
                <div class="qymc"><span>宝马</span><span>奔驰</span><span>当前汽车品牌：</span>${jobs.company.name!}</div>
            </div>
            <div class="zhaopin_box">
            	<div class="xzdy">
                	<div class="zwdy"><span><input style="border:none;" type="image" name="yp" id="yp" src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/yp_an.jpg" /></span>面议</div>
               	 	<div class="shoucang">收藏</div>
                	<div class="gzdd">
                	<div class="didian left"><#if jobs.region??>${jobs.region.fullname!}</#if></div>
                    <div class="fb_sj left">${jobs.publishDate!?string("yyyy-MM-dd")}</div>
                    <div class="clear"></div>
                </div>
                	<div class="zwyq">
                	<ul>
                    	<li>${jobs.education!}</li><li>${jobs.workExprience!}年以上经验</li><li>英语+普通话</li><li style="background:none;">年龄不限</li>
                    </ul>
                    <div class="clear"></div>
                </div>
                	<div class="fldy">
                	<ul>
                		<#if jobs.welfare??>
                        	<#list t.welfare as w>
                        	<li>${w!}</li>
                            </#list>
                        </#if>
                    </ul>
                    <div class="clear"></div>
                </div>
                </div>
                <div class="gwms">
                	<h4>岗位描述：</h4>
                    <div class="gwms_box">
                    	1.211本科及以上学历，英语CET4及<Br />
2.2年以上相关管理工作经验； <Br />
3.熟悉汽车维修、配件管理专业知识；<Br />
4.能适应经常性的出差。
                    </div>
                </div>
                <div class="gwyq">
                	<h4>岗位要求：</h4>
                    <div class="gwyq_box">
                    	1.211本科及以上学历，英语CET4及<Br />
2.2年以上相关管理工作经验； <Br />
3.熟悉汽车维修、配件管理专业知识；<Br />
4.能适应经常性的出差。
                    </div>
                </div>
                <div class="rzyq">
                	<h4>培训认证要求：</h4>
                    <div class="rzyq_box">
                    	1.211本科及以上学历，英语CET4及<Br />
2.2年以上相关管理工作经验； <Br />
3.熟悉汽车维修、配件管理专业知识；<Br />
4.能适应经常性的出差。
                    </div>
                </div>
                <div class="rzyq">
                	<h4>其他信息：</h4>
                    <div class="rzyq_box">
                    	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="8%">所属部门：</td>
    <td width="42%">运营部 </td>
    <td width="8%">专业要求：</td>
    <td width="42%">不限</td>
  </tr>
</table>

                  </div>
                </div>
                <div class="qy_intro">
                	<h4>企业简介：</h4>
                    <div class="qy_intro_box">
                    	${jobs.company.intro!}
                    </div>
                </div>
                <div class="qt_gw">
                	<h4>其他岗位：</h4>
                    <div class="qt_gw_box">
                    		<ul>
                            	<li>
                        	
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33%" class="gw_mingcheng">项目管理工程师 </td>
    <td width="32%" class="gzdaiyu">6-12万</td>
    <td width="35%" class="gongsi_m">上海欧腾汽车销售有限公司</td>
  </tr>
  <tr>
    <td>3年工作经验  |  本科及以上</td>
    <td>上海-嘉定区</td>
    <td>汽车销售、以及原厂配件、售后服务 </td>
  </tr>
</table>

                        		</li>
                        		
                            </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="zhaopin_r right">
        	<div class="zwfb_qy">
            	<h4>职位发布企业</h4>
                <div class="qy_box">
                	<div class="qylogo">
                    	<div class="qylogo_l left"><img src="${jobs.company.logo!}" /></div>
                      <div class="qylogo_r right">
                       	<div class="danbao">已有${jobs.company.bondsmanCount!}人担保</div>
                            <div class="wydb"><a href="#">
                              <input style="border:none;" type="image" name="db" id="db" src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/danbao.jpg" />
                            </a></div>
                      </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="qyjj">
                	<h5>${jobs.company.name!}</h5>
                    <div class="xz"><em style="font-style:normal;  font-size:12px; height:30px; line-height:30px; color:#000; font-weight:700;">经营范围：</em>${jobs.company}</div>
                    <div class="dz"><em style="font-style:normal;  font-size:12px; height:30px; line-height:30px; color:#000; font-weight:700;">公司地址：</em>${jobs.company.address!}</div>
                    <div class="jj"><em style="font-style:normal;  font-size:12px; height:30px; line-height:30px; color:#000; font-weight:700;">公司简介：</em>${jobs.company.intro}</div>
                    <div class="jj_img">
                    	<!-- 代码 开始 -->
						<div class="www51buycom">
    <ul class="51buypic">
        <li><a href="#" target="_blank"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/qy1.jpg" /></a></li>
       <li><a href="#" target="_blank"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/qy2.jpg" /></a></li>
        
    </ul>
   
    <div class="num">
    	<ul></ul>
    </div>
</div>
						<script>
/*鼠标移过，左右按钮显示*/
$(".www51buycom").hover(function(){
	$(this).find(".prev,.next").fadeTo("show",0.1);
},function(){
	$(this).find(".prev,.next").hide();
})
/*鼠标移过某个按钮 高亮显示*/
$(".prev,.next").hover(function(){
	$(this).fadeTo("show",0.7);
},function(){
	$(this).fadeTo("show",0.1);
})
$(".www51buycom").slide({ titCell:".num ul" , mainCell:".51buypic" , effect:"fold", autoPlay:true, delayTime:700 , autoPage:true });
</script>
						<!-- 代码 结束 -->
                    </div>
                </div>
            </div>
            <div class="dbr">
            	<h4>担保人列表</h4>
            <#if bondsmanList??>
                <div class="dbr_box">
                	<ul>
                   	  <#list bondsmanList as b>
                   	  <#if b??>
                      	<li>
                        	<div class="dbr_l left"><a href="#"><img src="${b.headLogo!}" /></a></div>
                          <div class="dbr_r right">
                            	<div class="dbr_name"><a href="#">${b.name!}</a></div>
                          </div>
                            <div class="clear"></div>
                        </li>
                        </#if>
                        </#list>
                    </ul>
                </div>
                </#if>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    </#if>
</div>
    
	

<!-- main结束 -->
<#include "/assets/website/common/footer.html">
</body>
</html>
