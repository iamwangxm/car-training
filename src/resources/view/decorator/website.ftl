<!DOCTYPE html>
<html>
<#compress><#escape x as x?html>
<head>
<title><#noescape>${title}</#noescape></title>
<meta charset="utf-8">
<link rel="shortcut icon" href="<@url value="/assets/images/favicon.ico"/>" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    
    <#if request.requestURI?starts_with('/website/index')>
    <meta name="keyword" content="汽车培聘网-汽车、招聘、培训一站式的服务网站"/>
	<#else>
	<meta name="keyword" content=""/>
    <meta name="Description" content=""/>
    </#if>
    
    <link href="<@url value="/assets/website/css/gkk.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />
    <link href="<@url value="/assets/website/css/gkk2.css?v=1.1.6"/>" type="text/css" rel="stylesheet" />
    <link href="<@url value="/assets/website/jquery.jslides.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />
    <link href="<@url value="/assets/website/_notes/style.css.mno?v=1.1.0"/>" type="text/css" rel="stylesheet" />
    <link href="<@url value="/assets/website/css/lrtk.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />
    <link href="<@url value="/assets/website/css/pxshi.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />
    <link href="<@url value="/assets/website/css/qcr.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />
    <link href="<@url value="/assets/website/css/qcren.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />
	<link href="<@url value="/assets/website/css/style.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />	
	<link href="<@url value="/assets/website/css/zt.css?v=1.1.0"/>" type="text/css" rel="stylesheet" />	
    <script src="<@url value="/assets/website/js/jquery-1.8.0.min.js?v=1.1.0"/>"></script>
    <script src="<@url value="/assets/website/js/jquery.jslides.js?v=1.1.1"/>"></script>
    <script src="<@url value="/assets/website/js/jquery.superslide.2.1.1.js?v=1.1.0"/>"></script>
    <script src="<@url value="/assets/website/js/jquery1.42.min.js?v=1.1.0"/>"></script>
    <title>Weshare我享度假</title>
    
<#noescape>${head}</#noescape>
</head>
<body>
<#if action.hasActionMessages() || action.hasActionErrors()>
<@s.actionerror />
<@s.actionmessage />
</#if>
<#noescape>${body}</#noescape>

</body>
</html></#escape></#compress>