<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />


</head>

<body>
<!-- 头部开始 -->	
<div class="top">
	<div class="content">
    	<div class="logo left"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/logo.jpg" /></div>
        <div class="nav_box left">
        	<div class="nav">
            	<ul>
            	<li><a href="#">首页</a></li>
                <li><a href="#">培训师</a></li>
                <li><a href="#">培训需求</a></li>
                <li><a href="#">汽车人</a></li>
                <li><a href="#">汽车人需求</a></li>
                <li><a href="#">培训学院</a></li>
                <li><a href="#">公开课</a></li>
                
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
<div class="main">
	<div class="content">
    <div class="dq_box">
    <div class="dqwz left">当前位置 : <a href="#">首 页</a> > <a href="#">培训师管理中心</a> > <a href="#">我的文章</a></div>
    <div class="wdcf right"><span>2016-07-20 — 2016-08-20</span>我的财富：<font color="#FF66001">845</font></div>
    <div class="clear"></div>
    </div>
    <div class="pxshi_gl">
    	<div class="pxshi_gl_l left">
       	  <h4>培训师管理中心</h4>
        
          <div class="lanmu">
          	<ul>
            	<li><div class="sqjl"><a href="培训师——申请记录.html">申请记录</a></div></li>
                <li><div class="wsjl"><a href="培训师——完善简历.html">完善简历</a></div></li>
                <li><div class="wdwz cn"><a href="培训师——我的文章.html">我的文章</a></div></li>
                <li><div class="wdgkk"><a href="#">我的公开课</a></div></li>
                <li><div class="xgmm"><a href="培训师——修改密码.html">修改密码</a></div></li>
                <li><div class="aqtc"><a href="#">安全退出</a></div></li>
                
            </ul>
          </div>
      </div>
        <div class="pxshi_gl_r right">
        <#if deliveryResumeList?? && deliveryResumeList.result??>
         <table bgcolor="#dedede" border="0" cellpadding="4" cellspacing="1" align="center" width="860">
                    <tbody>
                      <tr>
                        <td width="50" height="50" align="center" valign="middle" bgcolor="#f0faff"><strong>选择</strong></td>
                        <td width="50" align="center" valign="middle" bgcolor="#f0faff"> <strong>序号</strong></td>
                        <td align="center" valign="middle" bgcolor="#f0faff"><strong>文章标题</strong></td>
                        <td width="60" align="center" valign="middle" bgcolor="#f0faff"><strong>发布时间</strong></td>
                        <td width="70" align="center" valign="middle" bgcolor="#f0faff"> <strong> 操作 </strong></td>
                      </tr>
                      
                      <#if deliveryResumeList.result?size gt 0>
                      <#list deliveryResumeList.result as t>
                      <#if t?? && t.jobs??>
                      <tr>
                        <td  height="40" align="center" valign="middle" bgcolor="#ffffff"><input type="checkbox" name="checkbox" id="checkbox" /></td>
                        <td  align="center" valign="middle" bgcolor="#ffffff" class="sq">${t_index + 1}</td>
                        <td align="center" valign="middle" bgcolor="#ffffff"class="sq"><a href="#">${t.title!} </a></td>
                        <td  align="center" valign="middle" bgcolor="#ffffff">${t.publishDate!}</td>
                        <td align="center" valign="middle" bgcolor="#ffffff"  class="caozuo"><a href="#">查看</a>&nbsp;&nbsp;  <a href="#">删除</a></td>
                      </tr>
                     </#if>
                      </#list>
                      </#if>

                        <td  height="40" align="center" valign="middle" bgcolor="#ffffff"><input type="checkbox" name="checkbox" id="checkbox" /></td>
                        <td colspan="4"  align="left" valign="middle" bgcolor="#ffffff" class="sq"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="80" align="center" valign="middle" class="quanxuan"><a href="#">全 选</a></td>
                            <td width="163"><input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/sc.jpg" /></td>
                          </tr>
                        </table></td>
                      </tr>
                    </tbody>
                  </table>
          </#if>
         <div class="fypage" ><span>上五页</span><span class="">上一页</span><span>1</span><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">下一页</a><a href="#">下五页</a>  跳转到 <select name="PageSelect" onchange=""><option value="" selected="selected">第01页</option><option value="">第02页</option><option value="">第03页</option><option value="">第04页</option><option value="">第05页</option><option value="">第06页</option><option value="index_7.html">第07页</option>
                
               
          </select></div>    	  

        
      </div>
        <div class="clear"></div>
    
    </div>
    </div>
</div>

<!-- main结束 -->
<!-- footer开始 -->
<div class="footer">
	<div class="content">
    	
      <div class="bq">
       		培聘网 www.peipin.net 专业的汽车培训招聘平台  沪ICP备09083***号<br /> 

Copyright©2000-2016 peipin.net All Rights Reserved


        </div>
    </div>
</div>
<!-- footer结束 -->


</body>
</html>
