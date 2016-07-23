<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#escape x as x?html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="../css/pxshi.css" type="text/css" media="screen" />
</head>

<body>
<!-- 头部开始 -->	
<#include "/assets/website/common/header.html">
<!-- 头部结束 -->	

<!-- main开始 -->
<div class="content">
    <div class="ny">
     	<div class="sousuo_box">
        	<div class="pxly">
            	<h4>业务领域:</h4>
                <div class="pxly_box">
                	<ul>
                    	<li><a href="#">销售</a></li>
                        <li><a href="#">产品</a></li>
                        <li><a href="#">非技术</a></li>
                        <li><a href="#">技术</a></li>
                        <li><a href="#">管理</a></li>
                        <li><a href="#">财务</a></li>
                        <li><a href="#">市场营销</a></li>
                        <li><a href="#">客户关系</a></li>
                        <li><a href="#">人事</a></li>
                        <li><a href="#">生产</a></li>
                        <li><a href="#">领导力</a></li>
                        <li><a href="#">新能源</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <div class="scxs">
            	<h4>执行类型:</h4>
                <div class="pxly_box">
                	<ul>
                    	<li><a href="#">开发</a></li>
                        <li><a href="#">培训</a></li>
                        <li><a href="#">辅导</a></li>
                        <li><a href="#">项目管理</a></li>
                        <li><a href="#">经销商托管</a></li>
                        
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <div class="pxsj">
            	<h4>培训经验:</h4>
                <div class="pxly_box">
                	<ul>
                    	<li><a href="#">5年内</a></li>
                        <li><a href="#">5-10年</a></li>
                        <li><a href="#">10-15年</a></li>
                        <li><a href="#">15-20年</a></li>
                        <li><a href="#">20年以上</a></li>
                        
                    </ul>
                </div>
                <div class="clear"></div>
            	
            </div>
            <div class="sou">
           	  <h4>关键字</h4>
                <div class="sou_box">
                  <table width="590px" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="505px"><input style=" background:url(http://7xtuyf.com1.z0.glb.clouddn.com/website/images/ss_bg.jpg) no-repeat left 1px; height:35px; line-height:35px;   width:501px; border:none; padding-left:4px; " type="text" name="user_login"  placeholder="请输入关键字，如销售市场" validate-title="请输入关键字，如销售市场" /></td>
                      <td width="85px" height="35px"><input style="border:none;" type="image" src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/ss.jpg" /></td>
                    </tr>
                  </table>
                </div>
          </div>
        </div>
        
        <#if trainerList??>
       <#if businessCategoryEnum??>
    		<#list businessCategoryEnum?keys as key>
    			<div class="xiaoshou_box">
    				<h4><span><a href="#">更多>></a></span>${businessCategoryEnum.get(key)!}</h4>
    				
    				<div class="pxshi">
    					<ul>
    						<#list trainerList as t>
	    						<#if t?? && t.businessCategory??>
	    						  <#list t.businessCategory as b>
	    						  	<#if b = key>
	    						  		<#if t_index = 0>
    						   		<li style="border:2px solid #ff7d00; padding:0px;">
    						   			<div class="pxshi_pic"><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/pxshi1.jpg" /></a></div>
    						   			<div class="pxshi_intro">
					                    	<div class="pxshi_name">
					                        	<div class="pxshi_xm left"><a href="#">王欣平</a></div>
					                          <div class="pxshi_pl right"><a href="#">34人</a><span>评论</span></div>
					                            
					                            <div class="clear"></div>
					                        </div>
					                          <div class="pxshi_zp"><a href="#">传统企业互联网转型总教头</a></div>
					                        <div class="pxshi_rz">
					                        	<span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/hot.jpg" /></a></span>
					                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zan.jpg" /></a></span>
					                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zheng.jpg" /></a></span>
					                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/xin.jpg" /></a></span>
					                             <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zishen.jpg" /></a></span> 
					                              <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/dav.jpg" /></a></span>  
					                        </div>
					                    </div>
    						   		</li>
    						   <#else>
    						   		<li>
    						   			<div class="pxshi_pic"><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/pxshi1.jpg" /></a></div>
					                    <div class="pxshi_intro">
					                    	<div class="pxshi_name">
					                        	<div class="pxshi_xm left"><a href="#">王欣平</a></div>
					                          <div class="pxshi_pl right"><a href="#">34人</a><span>评论</span></div>
					                            
					                            <div class="clear"></div>
					                        </div>
					                          <div class="pxshi_zp"><a href="#">传统企业互联网转型总教头</a></div>
					                        <div class="pxshi_rz">
					                        	<span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/hot.jpg" /></a></span>
					                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zan.jpg" /></a></span>
					                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zheng.jpg" /></a></span>
					                            <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/xin.jpg" /></a></span>
					                             <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zishen.jpg" /></a></span> 
					                              <span><a href="#"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/dav.jpg" /></a></span>  
					                        </div>
					                    </div>
    						   		</li>
    						   </#if>
	    						  		<#break>
	    						  	</#if>
	    						  </#list>
	    						</#if>
    						</#list>
    					</ul>
    				</div>
    			</div>
    			
        	</#list>
      </#if>
      </#if>
        
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
</div><!-- footer结束 -->
</body>
</html></#escape>