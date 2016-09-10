<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value='/assets/website/backend/css/style.css'/>" type="text/css" media="screen" />
</head>

<body>
<#include "/assets/website/common/header.html">
	
<!-- main开始 -->
<div class="main">
	<div class="content">
    <div class="dq_box">
    <div class="dqwz left">当前位置 : <a href="#">首 页</a> > <a href="#">培训师管理中心</a> > <a href="#">完善简历</a></div>
    <div class="wdcf right"><span>2016-07-20 — 2016-08-20</span>我的财富：<font color="#FF66001">845</font></div>
    <div class="clear"></div>
    </div>
    <div class="pxshi_gl">
    	<div class="pxshi_gl_l left">
       	  <h4>培训师管理中心</h4>
        
        <#include "/assets/website/backend/common/menu.html">
        <div class="pxshi_gl_r right">
        <#if trainer?? && trainer.userCenter??>
        <form id="form1" method="post" action="/backend/trainerCompleteResume"  onSubmit="return checkform()">
        <!--隐藏域-->
        <input type="hidden" name="trainer.userCenter.personalType" value="TRAINER">
        <!--隐藏域-->
       	  <div class="pxshijl">
               	  <h5>基本信息</h5>
                    <div class="pxshijl_box">
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"width="420" align="left" valign="top"><table width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="69" height="40" align="right" valign="middle"><font color="#ff0000">*</font> 姓 名：</td>
        <td width="292"><input type="text" name="trainer.userCenter.name" id="username" value="${trainer.userCenter.name!}"/></td>
      </tr>
      <tr>
        <td height="40" align="right" valign="middle"><font color="#ff0000">*</font>出生年月：</td>
        <td>
        <input type="date" name="trainer.userCenter.brithday" value="${trainer.userCenter.brithday?string("yyyy-MM-dd")!}" />
     
      </td>
      </tr>
      <tr>
        <td height="40" align="right" valign="middle"><font color="#ff0000">*</font>婚姻状况：</td>
        <td>
        	<#if trainer.userCenter.marryStatus.name() = 'UNMARRIED'>
        	<input checked="checked" type="radio" name="trainer.userCenter.marryStatus" value="UNMARRIED" id="ty_per10" />
        	<#else>
        	<input type="radio" name="trainer.userCenter.marryStatus" value="UNMARRIED" id="ty_per10" />
        	</#if>
			未婚
			<#if trainer.userCenter.marryStatus.name() = 'MARRIED'>
			<input checked="checked" type="radio" name="trainer.userCenter.marryStatus" value="MARRIED" id="ty_per11" />
			<#else>
			<input type="radio" name="trainer.userCenter.marryStatus" value="MARRIED" id="ty_per11" />
			</#if>
			已婚
			<#if trainer.userCenter.marryStatus.name() = 'RAISED'>
			<input checked="checked" type="radio" name="trainer.userCenter.marryStatus" value="RAISED" id="ty_per12" />
			<#else>
			<input type="radio" name="trainer.userCenter.marryStatus" value="RAISED" id="ty_per12" />
			</#if>
			离异</td>
      </tr>
    </table></td>
    <td width="439" colspan="4" align="left" valign="top"><table width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/zw.jpg" /></td>
        </tr>
      <tr>
        <td>
        
        
	        <table width="400" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td  width="15%" height="40" align="left" valign="middle"><input type="button" name="button" id="button" value="浏 览" /></td>
	            <td width="23%" align="left" valign="middle">未选这图片。</td>
	            <td width="62%" align="left" valign="middle"><input type="button" name="button2" id="button2" value="上 传" /></td>
	            </tr>
	          </table></td>
	        </tr>
	      <tr>
	        <td><font color="#CCCCCC">请上传宽度为180px,高度为150px,格式：jpg,gif, 大小&lt;500kb的图片</font></td>
	        </tr>
	      </table>
	      
	      
      </td>
  </tr>
  </table>
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                    	    <td height="40" align="right" valign="middle"><font color="#ff0000">*</font> 学历：</td>
                    	    <td>
                    	    <select name="trainer.education" id="education">
                    	    <option value="">请选择</option>
                    	    <#if trainer.education.name() = 'JUNIORHIGHSCHOOL'>
							<option selected="selected" value="JUNIORHIGHSCHOOL">初中</option>
							<#else>
							<option value="JUNIORHIGHSCHOOL">初中</option>
							</#if>
							<#if trainer.education.name() = 'HIGHSCHOOL'>
							<option selected="selected" value="HIGHSCHOOL">高中</option>
							<#else>
							<option value="HIGHSCHOOL">高中</option>
							</#if>
							<#if trainer.education.name() = 'COLLEGE'>
							<option selected="selected" value="COLLEGE">大学</option>
							<#else>
							<option value="COLLEGE">大学</option>
							</#if>
							<#if trainer.education.name() = 'MASTER'>
							<option selected="selected" value="MASTER">研究生</option>
							<#else>
							<option value="MASTER">研究生</option>
							</#if>
							<#if trainer.education.name() = 'DOCTOR'>
							<option selected="selected" value="DOCTOR">博士</option>
							<#else>
							<option value="DOCTOR">博士</option>
							</#if>
							<#if trainer.education.name() = 'POSTDOCTOR'>
							<option selected="selected" value="POSTDOCTOR">博士后</option>	
							<#else>
							<option value="POSTDOCTOR">博士后</option>
							</#if>
                            </select></td>
                    	    
                    	    <td align="right" valign="middle"><font color="#ff0000">*</font> 手机：</td>
                    	    <td><input type="tel" name="trainer.userCenter.mobile" id="textfield4" value="${trainer.userCenter.mobile!}" /></td>
                  	    </tr>
                  	  </table>


                </div>
                </div>
            
           <!--     
          <div class="pxshijl">
               	  <h5>求职意向</h5>
                    <div class="pxshijl_box">
                    	
                	</div>
          </div>
          -->
          
          <div class="pxshijl">
               	  <h5>培训师简介</h5>
                    <div class="pxshijl_box">
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  
  
  
     <tr>
    <td height="40" colspan="4" align="left" valign="middle"><table width="90%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="11%"><font color="#ff0000">*</font>培训师简介：</td>
    <td width="89%"><textarea style="width:600px;" name="trainer.userCenter.intro" id="intro" cols="45" rows="5">${trainer.userCenter.intro!}</textarea></td>
  </tr>
</table></td>
    </tr>
</table>


                </div>
          </div>
          <div class="pxshijl">
               	  <h5>主讲课程</h5>
                    <div class="pxshijl_box">
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  
  
  
     <tr>
    <td height="40" colspan="4" align="left" valign="middle"><table width="90%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="11%"><font color="#ff0000">*</font>主讲课程：</td>
    <td width="89%"><textarea style="width:600px;" name="trainer.mainCourse" id="textarea2" cols="45" rows="5">${trainer.mainCourse!}</textarea></td>
  </tr>
</table></td>
    </tr>
</table>


                </div>
          </div>
          <div class="tj">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="60" align="center" valign="middle">
                    <input type="submit" style="width:58px;height:28px;background-repeat:no-repeat;background-image:url(http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/bc.jpg);border:0;" value=""/>
                     &nbsp;&nbsp;&nbsp;&nbsp;</td>
                  </tr>
                </table>
              </div>
      </div>
      </form>
      </#if>
        <div class="clear"></div>
    
    </div>
    </div>
</div>

<script>

function checkform(){
	var name = $("[name='trainer.userCenter.name']").val();
	var education = $("[name='trainer.education']").val();
	var brithday = $("[name='trainer.userCenter.brithday']").val();
	var marryStatus = $("[name='trainer.userCenter.marryStatus']").val();
	var mobile = $("input[name='trainer.userCenter.mobile']").val();
	var intro = $("[name='trainer.userCenter.intro']").val();
	var mainCourse = $("[name='trainer.mainCourse']").val();
	
	if(name == undefined || education == undefined || brithday == undefined || marryStatus == undefined || mobile == undefined || intro == undefined || mainCourse == undefined){
		alert("带*的为必填字段 ");
		return false;
	}
	if(name == "" || education == "" || brithday == "" || marryStatus == "" || mobile == "" || intro == "" || mainCourse == ""){
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
