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
    <div class="dqwz left">当前位置 : <a href="#">首 页</a> > <a href="#">培训师管理中心</a> > <a href="#">申请记录</a></div>
    <div class="wdcf right"><span>2016-07-20 — 2016-08-20</span>我的财富：<font color="#FF66001">845</font></div>
    <div class="clear"></div>
    </div>
    <div class="pxshi_gl">
    	<div class="pxshi_gl_l left">
       	  <h4>培训师管理中心</h4>
        
          <div class="lanmu">
          	<ul>
            	<li><div class="sqjl cn"><a href="培训师——申请记录.html">申请记录</a></div></li>
                <li><div class="wsjl"><a href="培训师——完善简历.html">完善简历</a></div></li>
                <li><div class="wdwz"><a href="培训师——我的文章.html">我的文章</a></div></li>
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
                        <td width="40" height="50" align="center" valign="middle" bgcolor="#f0faff"><strong>选择</strong></td>
                        <td width="200" align="center" valign="middle" bgcolor="#f0faff"> <strong>企业名称</strong></td>
                        <td width="100" align="center" valign="middle" bgcolor="#f0faff"><strong>职位名称</strong></td>
                        <td width="55" align="center" valign="middle" bgcolor="#f0faff"><strong>工作类型</strong></td>
                        <td width="55" align="center" valign="middle" bgcolor="#f0faff"><strong>工作性质</strong></td>
                        <td width="200" align="center" valign="middle" bgcolor="#f0faff"><strong>工作地点</strong></td>
                        <td width="60" align="center" valign="middle" bgcolor="#f0faff"><strong>发布时间</strong></td>
                        <td width="70" align="center" valign="middle" bgcolor="#f0faff"> <strong> 操作 </strong></td>
                      </tr>
                      
                      <#if deliveryResumeList.result?size gt 0>
                      <#list deliveryResumeList.result as t>
                      <#if t?? && t.jobs??>
                      <tr>
                        <td  height="40" align="center" valign="middle" bgcolor="#ffffff"><input type="checkbox" name="checkbox" id="checkbox" /></td>
                        <td  align="center" valign="middle" bgcolor="#ffffff" class="sq"><a href="#">${t.jobs.company.name!} </a></td>
                        <td align="center" valign="middle" bgcolor="#ffffff"class="sq"><a href="#">${t.jobs.name!}</a></td>
                        <td  align="center" valign="middle" bgcolor="#ffffff">销售</td>
                        <td align="center" valign="middle" bgcolor="#ffffff">${t.jobs.jobType!}</td>
                        <td  align="center" valign="middle" bgcolor="#ffffff">${t.jobs.region.fullname!}</td>
                        <td  align="center" valign="middle" bgcolor="#ffffff">${t.createDate!}</td>
                        <td align="center" valign="middle" bgcolor="#ffffff"  class="caozuo"><a href="#">查看</a>&nbsp;&nbsp;  <a href="#">删除</a></td>
                      </tr>
                      </#if>
                      </#list>
                      </#if>
                      
                      <tr>
                        <td  height="40" align="center" valign="middle" bgcolor="#ffffff"><input type="checkbox" name="checkbox" id="checkbox" /></td>
                        <td colspan="7"  align="left" valign="middle" bgcolor="#ffffff" class="sq"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="80" align="center" valign="middle" class="quanxuan"><a href="#">全 选</a></td>
                            <td width="163"><input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/sc.jpg" /></td>
                          </tr>
                        </table></td>
                      </tr>
                    </tbody>
                  </table>
              </#if>
        

			<#if deliveryResumeList?? && deliveryResumeList.result?? && deliveryResumeList.result?size gt 0>
            	<div class="fypage" >
            	
            	<#if pageNo gt 5>
            	<a data-class="p5" href="javascript:void(0)" onclick="prevFivePage()"">上五页</a>
            	<#else>
            	<span data-class="p5">上五页</span>
            	</#if>
            	<#if pageNo gt 1>
            	<a data-class="p1" href="/backend/applyJobHistory?pageNo=${pageNo-1}">上一页</a>
            	<#else>
            	<span data-class="p1" class="">上一页</span>
            	</#if>
            	
            	<div data-class="pag" style="padding:0px;margin:0px;display:inline;">
            	<#if pageNo lt 6>
            	<#list 1..5 as t>
            	<#if t = pageNo>
            	<span>${t!}</span>
            	<#else>
            	<a href="/backend/applyJobHistory?pageNo=${t!}">${t!}</a>
            	</#if>
            	<#if t = deliveryResumeList.totalPage>
            	<#break>
            	</#if>
            	</#list>
            	
            	<#elseif pageNo%5 gt 0>
            	<#list (pageNo/5)?floor*5+1..(pageNo/5)?floor*5+5 as t>
            	<#if t = pageNo>
            	<span>${t!}</span>
            	<#else>
            	<a href="/backend/applyJobHistory?&pageNo=${t!}">${t!}</a>
            	</#if>
            	<#if t = deliveryResumeList.totalPage>
            	<#break>
            	</#if>
            	</#list>
            	
            	<#elseif pageNo%5 = 0>
            	<#list ((pageNo/5)?floor-1)*5+1..(pageNo/5)?floor*5 as t>
            	<#if t = pageNo>
            	<span>${t!}</span>
            	<#else>
            	<a href="/backend/applyJobHistory?pageNo=${t!}">${t!}</a>
            	</#if>
            	<#if t = deliveryResumeList.totalPage>
            	<#break>
            	</#if>
            	</#list>
            	</#if>
            	</div>
            	
            	<#if (deliveryResumeList.totalPage - pageNo) gt 0>
            	<a data-class="n1" href="/backend/applyJobHistory?pageNo=${pageNo+1}">下一页</a>
            	<#else>
            	<span data-class="n1" class="">下一页</span>
            	</#if>
            	<#if (deliveryResumeList.totalPage - ((pageNo/5)?ceiling * 5)) gt 4>
            	<a data-class="n5" href="javascript:void(0)" onclick="nextFivePage()">下五页</a>
            	<#else>
            	<span data-class="n5">下五页</span>
            	</#if>
            	 
            	跳转到 
            	<select name="PageSelect" onchange="jumpPage()">
            	<#list 1..deliveryResumeList.totalPage as t>
            	<#if t = pageNo>
            	<option selected="selected" value="${t!}">第${t!}页</option>
            	<#else>
            	<option value="${t!}">第${t!}页</option>
            	</#if>
            	</#list>
               </select>
               </div>
               </#if>    	  

        
      </div>
        <div class="clear"></div>
    
    </div>
    </div>
</div>

<!-- main结束 -->

<!--分页有关js-->
    <script>
    
		var pageNo = ${pageNo};
		<#if deliveryResumeList??>
			var totalPage = ${deliveryResumeList.totalPage};
		<#else>
			var totalPage = 0;
		</#if>
		var tarUrl = "/backend/applyJobHistory?";
		
    	function prevFivePage(){
    		var pag = '';
    		for(var i = Math.floor(pageNo/5) * 5 - 4; i<=Math.floor(pageNo/5)*5;i++){
				pag += '<a href="' + tarUrl + 'pageNo=' + i + '">' + i + '</a>';
    		}
    		pageNo = Math.floor(pageNo/5) * 5 - 4;
    		$("div.fypage").find("div[data-class=pag]").html(pag);
    		resetPreNex();
    	}
    	function nextFivePage(){
    		var pag = '';
    		for(var i = Math.ceil(pageNo/5) * 5 + 1; i<=Math.ceil(pageNo/5) * 5+5;i++){
				pag += '<a href="' + tarUrl + 'pageNo=' + i + '">' + i + '</a>';
    		}
    		pageNo = Math.ceil(pageNo/5) * 5 + 1;
    		$("div.fypage").find("div[data-class=pag]").html(pag);
    		resetPreNex();
    	}
    	function resetPreNex(){
    		if(pageNo <= 5){
    			$("[data-class=p5]").replaceWith('<span data-class="p5">上五页</span>');
    		}else{
    			$("[data-class=p5]").replaceWith('<a data-class="p5" href="javascript:void(0)" onclick="prevFivePage()"">上五页</a>');
    		}
    		if(totalPage > Math.ceil(pageNo/5) * 5 + 4){
    			$("[data-class=n5]").replaceWith('<a data-class="n5" href="javascript:void(0)" onclick="nextFivePage()"">下五页</a>');
    		}else{
    			$("[data-class=n5]").replaceWith('<span data-class="n5">下五页</span>');
    		}
    		
    	}
    	
    	function jumpPage(){
    		window.location.href = tarUrl + 'pageNo=' + $("select[name=PageSelect]").val();	
    	}
    	
    </script>

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
