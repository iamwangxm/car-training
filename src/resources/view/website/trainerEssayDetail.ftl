<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value="/assets/website/css/zt.css"/>" type="text/css" media="screen" />

<link rel="stylesheet" type="text/css" href="<@url value="/assets/website/css/lrtk.css"/>" />
<script src="<@url value="/assets/website/js/jquery1.42.min.js?v=1.1.0"/>"></script>
<script src="<@url value="/assets/website/js/jquery.superslide.2.1.1.js?v=1.1.0"/>" type="text/javascript"></script>
</head>

<body>
<!-- 头部开始 -->	
<#include "/assets/website/common/header.html">
<!-- 头部结束 -->	

<!-- main开始 -->


<div class="zhuanti">
    <div class="content" >
    	<div class="zt">
    	<#if trainerEssay??>
        	<div class="zt_l left">
            	<div class="wenti">
                	<div class="tubiao left"></div> 
                    <div class="wt_box right">
                    	<h4><span>30人关注该问题</span><span><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/gz2.jpg" /></span>${trainerEssay.title!}</h4>${trainerEssay.content!}
                    </div>
                </div>
            </#if>
            
            <div class="clear"></div>
        </div>
        
       
  </div>
</div>
    
	

<!-- main结束 -->
<#include "/assets/website/common/footer.html">
</body>
</html>
