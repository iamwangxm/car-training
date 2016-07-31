<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="../css/gkk2.css" type="text/css" media="screen" />


</head>

<body>
<!-- 头部开始 -->	
<div class="top">
	<div class="content">
    	<div class="logo left"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/logo.jpg" /></div>
        <div class="nav_box left">
        	<div class="nav">
            	<ul>
            	<li><a href="#">首页</a></li>
                <li><a href="#">培训师</a></li>
                <li><a href="#">培训需求</a></li>
                <li><a href="#">汽车人</a></li>
                <li><a href="#">汽车人需求</a></li>
                <li><a href="#">培训学院</a></li>
                <li  class="cn"><a href="#">公开课</a></li>
                
            </ul>
            </div>
        </div>
        <div class="dl_top right">
        	<ul>
            	<li style="background:none;"><a href="#">请登录</a></li>
                <li><a href="#">免费注册</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- 头部结束 -->	

<!-- main开始 -->


<div class="content">
	<#if course?? && course.trainer??  && course.trainer.userCenter??>
	<div class="ny_pxshi">
    	<div class="ny_pxshi_l left">
        	<div class="pxshi_xx">
            	<div class="zhaopian left">
            		<#if course.trainer.userCenter??>
                	<img src="${course.trainer.userCenter.headLogo!}" />
                	</#if>
                </div>
                <div class="xinxi right">
                	<div class="mingzi">
                    	<div class="mingzi_l left">${course.courseName!}</div>
                    	<div class="mingzi_r right">
                       	  <div class="pinglun left"><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/bm.jpg" /></a></div>
                       	  <div class="guanzhu right"><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/cg.jpg" /></a></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    
                    <div class="scxs2">
                    <em>课程类型：</em><span>销售</span><span>产品</span><span>非技术</span><span>技术</span><span>管理</span><span style=" background:none;">财务</span>
                    </div>
                    
                    <div class="shijian">
                  		<div class="shijian_l left"><em>价 格：</em><font color="#FF0000">${course.price!}元</font></div>
                        <div class="shijian_r  right"><em>时 长：</em><font color="#FF0000">${course.longTime!}小时</font></div>
                        <div class="clear"></div>

                    </div>
                    <div class="shijian">
                  		<div class="shijian_l left"><em>上课时间：</em>${course.schoolTime!}</div>
                        <div class="shijian_r  right"><em>上课地点：</em><#if course.region??>${course.region.fullname!}</#if></div>
                        <div class="clear"></div>

                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="kcsz">
            	<div class="pxshi_bt">
            	<h4>课程受众</h4>
                </div>
            	<div class="kcsz_box">
               　企业内训师，企业管理者 
                </div>
            </div>
            <div class="kcdg">
            	<div class="pxshi_bt">
            	<h4>课程目标</h4>
                </div>
                <div class="kcdg_box">
                	一，品牌商、代理商恩爱关<br />
二，品牌商、代理商怨恨形成原因、解决方案：<br />
1、厂家如何应对划分代理商市场风险、困难之道<br />
2、厂家如何应对代理商费用虚高或作假之道<br />
3、厂家如何应对代理商以回款要挟等无节制索要费用<br />
4、厂家如何处理代理商窜货方法技巧<br />
5、厂家如何发现、处理代理商做假货之道<br />
6、厂家如何应对代理商做竞品之道<br />
7、厂家如何应对代理商不进货之道<br />
8、厂家如何应对代理商执行力差之道<br />
9、厂家如何应对代理商不开发空白市场还占着茅坑不拉屎之道
                </div>
            </div>
            
            <div class="gjmx">
            	<div class="pxshi_bt">
            	<h4>工具模型</h4>
                </div>
                <div class="gjmx_box">
                	厂家如何应对代理商以回款要挟等无节制索要费用<br />
厂家如何处理代理商窜货方法技巧<br />
厂家如何发现、处理代理商做假货之道<br />
厂家如何应对代理商做竞品之道<br />
厂家如何应对代理商不进货之道<br />
厂家如何应对代理商不开发空白市场还占着茅坑不拉屎之道
      
                </div>
          </div>
            <div class="xueyuan_pj">
            	<div class="pxshi_bt">
            	<h4>学员课后评价</h4>
                </div>
                <div class="xueyuan_pj_box">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
    <td width="6%" height="50" align="left" valign="middle">打分：
     </td>
    <td width="25%" align="left" valign="middle"><input type="text" name="textfield" id="textfield" /></td>
    <td width="69%" align="left" valign="middle"><font color="#cccccc">1、内容设计（满分5分）；2、上课气氛（满分5分）；3、课后所得（满分5分）；</font></td>
  </tr>
  <tr>
    <td colspan="3" align="center" valign="middle"><table width="90%" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td width="7%">评语：</td>
        <td width="93%" align="left" valign="middle"><textarea name="textarea" id="textarea" style="width:500px; height:100px;"></textarea></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="75" colspan="3" align="center" valign="bottom"><input type="image" name="tj" id="tj" src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/tj.jpg" /></td>
  </tr>
</table>

              </div>
          </div>
        </div>
        <div class="ny_pxshi_r right">
        	<div class="pxshi_lx">
            	<h4>联系方式</h4>
                <div class="lx_box">
                	<div class="xingming">${course.trainer.userCenter.name!}(培训师本人)</div>
                    电话：${course.trainer.userCenter.mobile!}<br />
QQ：${course.trainer.userCenter.QQ!}<br />
邮箱：${course.trainer.userCenter.email!}<br />
微信：${course.trainer.userCenter.weixin!}<br />
<br />
QQ：910283168<br />
                </div>
            </div>
            <div class="pxshi_pj">
            	<h4>学员评价</h4>
                <div class="pj_box">
                <#if course.trainer.autobotsCommentList??>
                	<ul>
                		<#list course.trainer.autobotsCommentList as t>
                		<#if t?? && t.content>
                    	<li><a href="#"><#if  t.content?length lt 19>${t.content!}<#else>${t.content?substring(18)!}...</#if></a></li>
                    	</#if>
                        </#list>
                    </ul>
                </#if> 
                </div>
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
