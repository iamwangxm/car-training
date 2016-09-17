<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value='/assets/website/backend/css/style.css'/>" type="text/css" media="screen" />
<script src="<@url value="/assets/website/js/jquery-1.8.0.min.js?v=1.1.0"/>"></script>
</head>

<body>
<#include "/assets/website/common/header.html">
	
<!-- main开始 -->
<div class="main">
	<div class="content">
    <div class="dq_box">
    <div class="dqwz left">当前位置 : <a href="#">首 页</a> > <a href="#">企业管理中心</a> > <a href="#">发布职位</a></div>
    <div class="wdcf right"><span>2016/07/20—2016/08/20</span>我的财富：<font color="#FF66001">845</font></div>
    <div class="clear"></div>
    </div>
    <div class="pxshi_gl">
    	<div class="pxshi_gl_l left">
        
        <#include "/assets/website/backend/common/menu.html">
        
        <div class="pxshi_gl_r right">
        
        <form id="form1" method="post" action="/backend/publishedJob"  onSubmit="return checkform()">
        
       	  <div class="pxshijl">
               	  <h5>职位描述</h5>
                    <div class="pxshijl_box">
                   	 <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="79" height="40" align="right" valign="middle"><font color="#ff0000">*</font> 职位名称：</td>
    <td width="721"><input type="text" name="Job.name" id="Job.name" /></td>
  </tr>

  <tr>
    <td width="79" height="40" align="right" valign="middle"><font color="#ff0000">*</font> 工作性质：</td>
    <td width="721"><input type="radio" name="Job.jobType" value="FULLTIME" id="ty_per7" />
全职&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="Job.jobType" value="PARTTIME" id="ty_per8" />
兼职</td>
  </tr>
  <tr>
    <td height="150" align="right" valign="top"><font color="#ff0000">*</font> 职位描述：</td>
    <td align="left" valign="top"><textarea style="width:600px;" name="Job.jobDescription" id="Job.jobDescription" cols="45" rows="5"></textarea></td>
  </tr>
</table>
 
            </div>
          </div>
          
          <div class="tj">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="60" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/bc.jpg" /> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/fb.jpg" /></td>
                  </tr>
            </table>
          </div>
      </div>
      
      </form>
      
        <div class="clear"></div>
    
    </div>
    </div>
</div>

<script>

function checkform(){
	var name = $("[name='Job.name']").val();
	var jobType = $("[name='Job.jobType']").val();
	var jobDescription = $("[name='Job.jobDescription']").val();
	
	if(name == undefined || jobType == undefined || jobDescription == undefined){
		alert("带*的为必填字段 ");
		return false;
	}
	if(name == "" || jobType == "" || jobDescription == ""){
		alert("带*的为必填字段 ");
		return false;
	}
	
	return true;
}

</script>

<!-- main结束 -->
<#--<#include "/assets/backend/common/footer.html">-->

</body>
</html>
