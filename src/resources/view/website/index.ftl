<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#escape x as x?html><html>
<head>
<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value="/assets/website/css/style.css?v=1.1.0"/>" type="text/css" media="screen" />
</head>

<body>
<!-- 头部开始 -->	
<#include "/assets/website/common/header.html">
<!-- 头部结束 -->	
<!-- banner开始 -->	
<div class="banner">
	<div class="content">
        	<div class="dl_box">
            	<div class="dl_leibie">会员登录</div>
                <div class="name">
               	  <div class="name_l left">账号：</div>
                  <div class="name_r right"><input style=" background:url(http://7xtuyf.com1.z0.glb.clouddn.com/website/images/name_bg2.jpg) no-repeat left top; height:30px; line-height:30px;   width:196px; border:none; padding-left:4px; " type="text" name="user_login" data-nick="login_user" value="" class="text input-xlarge" placeholder="邮箱/手机号" validate-title="邮箱/手机号" /></div>
                    <div class="clear"></div>
              </div>
                <div class="pwd">
               	  <div class="pwd_l left">密码：</div>
                  <div class="pwd_r right"><input  style=" background:url(http://7xtuyf.com1.z0.glb.clouddn.com/website/images/name_bg2.jpg) no-repeat left top; height:30px;line-height:30px; width:196px; border:none; padding-left:4px; " type="password" name="user_pwd" data-nick="login_pwd" value="" class="text input-xlarge"  placeholder="密码" validate-title="密码" /></div>
                    <div class="clear"></div>
              </div>
                
                <div class="yanzheng">
                <div class="yanzheng_l left">验证码：</div>
              
                  <div class="yanzheng_r right"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				  <tr>
				    <td><input style=" background:url(http://7xtuyf.com1.z0.glb.clouddn.com/website/images/yzm_bg.jpg) no-repeat left top; height:30px;line-height:30px;  width:92px; border:none; padding-left:3px; " type="text" name="user_login" data-nick="login_user" value="" class="text input-xlarge" placeholder="验证码" validate-title="验证码" /></td>
				    <td></td>
				    <td> <input type="image" name="btn_yzm" id="btn_yzm" src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/btn_yzm.jpg" /></td>
				  </tr>
				</table>
				</div>
                    <div class="clear"></div>
                </div>
                <div class="leibie"> 
                	<div class="lb_l left"><input name="secret_e_shield" type="radio"  autocomplete="on" value="0" checked="checked" data-selector="company-toggle"/>培训企业</div>
                    <div class="lb_m left"><input data-selector="company-toggle" type="radio" name="secret_e_shield" value="0"  autocomplete="off"/>培训师</div>
                  <div class="lb_r left"><input data-selector="company-toggle" type="radio" name="secret_e_shield" value="0"  autocomplete="off"/>汽车人</div>
                    <div class="clear"></div>
            
				</div>
				
                <div class="dl"><input style="border:none;" type="image" name="dl" id="dl" src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/dl_bg.jpg" /></div>
           		<div class="wjpwd"><a href="#">忘记密码？</a></div>
            </div>
        </div>
</div>
	<!-- banner结束 -->
<!-- main开始 -->

<div class="main">
	<div class="content">
    	<div class="pxshi_box">
        	<h4><span><a href="#">更多>></a></span>推荐培训师</h4>
        	<div class="pxshi">
            	<div class="pxshi_l left">
                		 <#if trainer?? && trainer.userCenter??>
                	<div class="pxshi_l_pic"><a href="/website/trainerDetail?trainer.id=${trainer.id!}"><img src="${trainer.userCenter.headLogo!}" /></a></div>
                    <div class="pxshi_l_intro">
                    	<div class="pxshi_name">
                        	<div class="xm left">${trainer.userCenter.name!}</div>
                            <div class="pl left">34人<span>评论</span></div>
                            <div class="dz right">35</div>
                            <div class="clear"></div>
                        </div>
                        <div class="pxshi_zp">${trainer.currentPosition!} </div>
                        <div class="pxshi_rz">
                        	<ul>
                            	<li><a href='#'><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/hot.jpg" /></a></li>
                                <li><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zan.jpg" /></a></li>
                                <li><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zheng.jpg" /></a></li>
                                <li><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/xin.jpg" /></a></li>
                                <li><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zishen.jpg" /></a></li>
                                <li><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/dav.jpg" /></a></li>
                            </ul>
                        </div>
                    </div>
                         </#if>
                </div>
                <div class="pxshi_r right">
						<#if trainerList??>
                	<ul>
							<#list trainerList as t>
                    	<li>
                    		<#if t?? && t.userCenter??>
	                        	<div class="pxshi_pic2"><a href="/website/trainerDetail?trainer.id=${trainer.id!}"><img src="${t.userCenter.headLogo!}" /></a></div>
			                    <div class="pxshi_intro2">
			                    	<div class="pxshi_name2">
			                        	<div class="xm2 left">${t.userCenter.name!}</div>
			                            <div class="pl2 left">34人<span>评论</span></div>
			                            <div class="dz2 right">35</div>
			                            <div class="clear"></div>
			                        </div>
			                        <div class="pxshi_zp2">${t.currentPosition!} </div>
			                        <div class="rz2">
			                        	<span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/hot.jpg" /></a></span>
			                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zan.jpg" /></a></span>
			                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zheng.jpg" /></a></span>
			                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/xin.jpg" /></a></span>
			                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zishen.jpg" /></a></span>
			                              <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/dav.jpg" /></a></span>
			                        </div>
			                   </div>
		                   </#if>
                        </li>
  
							</#list>
                    </ul>
						</#if>
                </div>
                <div class="clear"></div>
            </div>
      </div>
        <div class="pxsheng_box">
        	<h4><span><a href="#">更多>></a></span>推荐培训生</h4>
        	<div class="pxsheng">
        	<#if autobotsList??>
            	<ul>
            	<#list autobotsList as t>
                	<li>
                	<#if t?? && t.userCenter??>
                        	<div class="pxsheng_pic"><a href="/website/autobotDetail?autobots.id=${t.id!}"><img src="${t.userCenter.headLogo!}" /></a></div>
                    <div class="pxsheng_intro">
                    	<div class="pxsheng_name">
                        	<div class="pxsheng_xm left">${t.userCenter.name!}</div>
                          <div class="pxsheng_pl right">34人<span>评论</span></div>
                            
                            <div class="clear"></div>
                        </div>
                        <div class="pxsheng_zw">
                        	<div class="pxsheng_zw_l left">${t.currentPosition!}</div>
                            <div class="pxsheng_zw_r  right">工作经验${t.autoYears!}年</div>
                            <div class="clear"></div>
                        </div>
                        <div class="pxsheng_rz">
                        	<span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/hot2.jpg" /></a></span>
                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/yrz.jpg" /></a></span>
                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/dr.jpg" /></a></span>
                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zs.jpg" /></a></span>
                           
                        </div>
                    </div>
                    </#if>
                  </li>
					</#list>
                </ul>
                </#if>
            </div>
        </div>
        <div class="pxxq_box">
        	<h4><span><a href="#">更多>></a></span>培训需求</h4>
            <div class="pxxq">
            	<#if jobsTrainerList??>
            	<ul>
            	<#list jobsTrainerList as t>
                	<li>
                	<#if t?? && t.company??>
                	<div class="qz"></div> <div class="pxxq_l left">
                   	 <a href="/website/jobDetail?jobs.id=${t.id!}"> <div class="zw_name">${t.name!}</div></a>
                        <div class="dy_box">
                        	<span class="cn" style="padding-left:0px;"><a href="#">${t.salary!}</a></span><span><a href="#">${t.workExprience!}年工作经验</a></span><span style="background:none;"><a href="#"><#if t.region??></#if>${t.region.fullname!}</a></span>
                        </div>
                        <div class="fb_box">
                        	<span  style="padding-left:0px;"><a href="#">发布于：${t.publishDate!?string("yyyy-MM-dd")}</a></span><span style="background:none;"><a href="#">投递后：48小时反馈 </a></span>
                        </div>
                    </div>
                    <div class="pxxq_r right">
                   	  <div class="qy">
                        	<div class="qy_l left"><img src="${t.company.logo!}" /></div>
                          <div class="qy_r right">
                            	<div class="qy_name"><span><a href="#">已有${t.company.bondsmanCount}人担保</a></span><a href="#">${t.company.name!}</a></div>
                                <div class="jyfw"><a href="#">${t.company.industry!}</a></div>
                          </div>
                            <div class="clear"></div>
                        </div>
                        <div class="fl">
                        <#if t.welfare??>
                        	<#list t.welfare as w>
                        	<span><a href="#">${w!}</a></span>
                            </#list>
                        </#if>
                        </div>
                    </div>
                    <div class="clear"></div>
                    
                    </#if>
                  </li>
					</#list>
                </ul>
                </#if>
            </div>
        </div>
        <div class="qcrxq_box">
        	<h4><span><a href="#">更多>></a></span>汽车人需求</h4>
            <div class="qcrxq">
            	<#if jobsAutobotsList??>
            	<ul>
            	<#list jobsAutobotsList as t>
                	<li>
                	<#if t?? && t.company??>
                    	<div class="qcrxq_l left">
                        	 <a href="/website/jobDetail?jobs.id=${t.id!}"> <div class="qcrxq_zw_name">${t.name!}</div></a>
                       		 <div class="qcrxq_dy_box">
                        	<span class="cn" style="padding-left:0px;"><a href="#">${t.salary!}</a></span><span><a href="#">${t.workExprience!}年工作经验</a></span><span style="background:none;"><a href="#">上海-嘉定区</a></span>
                        </div>
                        	 <div class="pingpai">
                        <em>当前汽车品牌：</em><span>宝马</span><span>宝马</span>
                        <div class="clear"></div>
                        </div>
                       		 <div class="qcrxq_fb_box">
                        	<span  style="padding-left:0px;"><a href="#">发布于：${t.publishDate!?string("yyyy-MM-dd")}</a></span><span style="background:none;"><a href="#">投递后：48小时反馈 </a></span>
                        </div>
                    </div>
                       
               			<div class="qcrxq_r right">
                   	  <div class="qcrxq_qy">
                        	<div class="qcrxq_qy_l left"><img src="${t.company.logo!}" /></div>
                          <div class="qcrxq_qy_r right">
                            	<div class="qcrxq_qy_name"><span><a href="#">已有${t.company.bondsmanCount}人担保</a></span><a href="#">${t.company.name!}</a></div>
                                <div class="qcrxq_jyfw"><a href="#">${t.company.industry!}</a></div>
                          </div>
                            <div class="clear"></div>
                        </div>
                        <div class="qcrxq_fl">
                        	<#if t.welfare??>
                        	<#list t.welfare as w>
                        	<span><a href="#">${w!}</a></span>
                            </#list>
                        </#if>
                        </div>
                    </div>
                		<div class="clear"></div>
                    </#if>
                  </li>
					</#list>
                </ul>
                </#if>
            </div>
        </div>
        <div class="art_box">
        	<div class="ycwz left">
            	<h4><span><a href="#">更多>></a></span>原创文章</h4>
                <div class="ycwz_box">
                	<#if trainerEssayList??>
            	<ul>
            	<#list trainerEssayList as t>
                	<li>
                	<#if t??>
                    	<span><a href="#">${t.publishDate!?string("yyyy-MM-dd")}</a></span><a href="#">${t.title!}</a>
                    	</#if>
                  </li>
					</#list>
                </ul>
                </#if>
                </div>
            </div>
            <div class="yiti left">
            	<h4><span><a href="#">更多>></a></span>培训学院热点议题</h4>
                <div class="yiti_box">
                	<#if topicList??>
            	<ul>
            	<#list topicList as t>
                	<li>
                	<#if t??>
                    	<span><a href="#">${t.publishDate?string("yyyy-MM-dd")}</a></span><a href="#">${t.title!}</a>
                    	</#if>
                  </li>
					</#list>
                </ul>
                </#if>
                </div>
            </div>
            <div class="gkk right">
            	<h4><span><a href="#">更多>></a></span>公开课</h4>
                <div class="gkk_box">
                	<#if coursesList??>
            	<ul>
            	<#list coursesList as t>
                	<li>
                	<#if t?? && t.trainer ?? &&t.trainer.userCenter ?? >
                        	<div class="pxsheng_pic"><img src="${t.trainer.userCenter.headLogo!}" /></div>
                    <div class="pxsheng_intro">
                    	<div class="pxsheng_name">
                        	<div class="pxsheng_xm left">${t.courseName!}</div>
                          
                            <div class="clear"></div>
                        </div>
                        <div class="pxsheng_zw">
                        	<div class="pxsheng_zw_l left"><#if t.region??></#if>${t.region.fullname!}</div>
                            <div class="pxsheng_zw_r  right">${t.schoolTime!}</div>
                            <div class="clear"></div>
                        </div>
                        <div class="pxsheng_rz">
                        	<div class="pxsheng_zw_l left">${t.price!}</div>
                           <div class="pxsheng_zw_r  right">报名数: ${t.willnum!}人</div>
                           <div class="clear"></div>
                        </div>
                    </div>
                    </#if>
                  </li>
					</#list>
                </ul>
                </#if>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
</div>	

<!-- main结束 -->
<#include "/assets/website/common/footer.html">
</body>
</html></#escape>