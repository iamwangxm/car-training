<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value='/assets/website/backend/css/style.css'/>" type="text/css" media="screen" />


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
    <div class="dqwz left">当前位置 : <a href="#">首 页</a> > <a href="#">汽车人管理中心</a> > <a href="#">申请记录</a></div>
    <div class="wdcf right"><span>2016-07-20 — 2016-08-20</span>我的财富：<font color="#FF66001">845</font></div>
    <div class="clear"></div>
    </div>
    <div class="pxshi_gl">
    	<div class="pxshi_gl_l left">
       	  <h4>汽车人管理中心</h4>
        
          <div class="lanmu">
          	<ul>
            	<li><div class="sqjl"><a href="#">申请记录</a></div></li>
                <li><div class="wsjl cn"><a href="#">完善简历</a></div></li>                             
                <li><div class="xgmm"><a href="#">修改密码</a></div></li>
                <li><div class="aqtc"><a href="#">安全退出</a></div></li>
                
            </ul>
          </div>
      </div>
        <div class="pxshi_gl_r right">
        <#if autobot?? && autobot.userCenter??>
        <form id="form1" method="post" action="/backend/autobotCompleteResume"  onSubmit="return checkform()">
        <!--隐藏域-->
        <input type="hidden" name="autobot.userCenter.personalType" value="AUTOBOT">
        <!--隐藏域-->
       	  <div class="pxshijl">
               	  <h5>基本信息</h5>
                    <div class="pxshijl_box">
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"width="420" align="left" valign="top"><table width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="69" height="40" align="right" valign="middle"><font color="#ff0000">*</font> 姓 名：</td>
        <td width="292"><input type="text" name="autobot.userCenter.name" value="${autobot.userCenter.name!}" id="name" /></td>
      </tr>
      <tr>
        <td height="40" align="right" valign="middle"><font color="#ff0000">*</font>出生年月：</td>
        <td>
        <input name="autobot.userCenter.birthday" value="${autobot.userCenter.brithday?string("yyyy-MM-dd")!}" type="date"/>
        </td>
      </tr>
      <tr>
        <td height="40" align="right" valign="middle"><font color="#ff0000">*</font>婚姻状况：</td>
        <td>
        	<#if autobot.userCenter.marryStatus.name() = 'UNMARRIED'>
        	<input checked="checked" type="radio" name="autobot.userCenter.marryStatus" value="UNMARRIED" id="ty_per10" />
        	<#else>
        	<input type="radio" name="autobot.userCenter.marryStatus" value="UNMARRIED" id="ty_per10" />
        	</#if>
			未婚
			<#if autobot.userCenter.marryStatus.name() = 'MARRIED'>
			<input checked="checked" type="radio" name="autobot.userCenter.marryStatus" value="MARRIED" id="ty_per11" />
			<#else>
			<input type="radio" name="autobot.userCenter.marryStatus" value="MARRIED" id="ty_per11" />
			</#if>
			已婚
			<#if autobot.userCenter.marryStatus.name() = 'RAISED'>
			<input checked="checked" type="radio" name="autobot.userCenter.marryStatus" value="RAISED" id="ty_per12" />
			<#else>
			<input type="radio" name="autobot.userCenter.marryStatus" value="RAISED" id="ty_per12" />
			</#if>
			离异</td>
      </tr>
    </table></td>
    <td width="439" colspan="4" align="left" valign="top"><table width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/zw.jpg" /></td>
        </tr>
      <tr>
        <td>
        
        <table width="400" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td  width="15%" height="40" align="left" valign="middle"><input type="submit" name="button" id="button" value="浏 览" /></td>
            <td width="23%" align="left" valign="middle">未选这图片。</td>
            <td width="62%" align="left" valign="middle"><input type="submit" name="button2" id="button2" value="上 传" /></td>
            </tr>
          </table>
          
          </td>
        </tr>
      <tr>
        <td><font color="#CCCCCC">请上传宽度为180px,高度为150px,格式：jpg,gif, 大小&lt;500kb的图片</font></td>
        </tr>
      </table></td>
  </tr>
  </table>
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
                    	  <tr>
                    	    <td width="76" height="40" align="right" valign="middle"><font color="#ff0000">*</font> 目前状态：</td>
                    	    <td width="262"><input type="text" name="autobot.currentWorkStatus" value="${autobot.currentWorkStatus!}" id="textfield2" /></td>
                    	    <td width="125" align="right" valign="middle"><font color="#ff0000">*</font> 当前汽车品牌：</td>
                    	    <td width="337"><input type="text" name="autobot.autoBrand" value="${autobot.autoBrand!}" id="textfield3" /></td>
                  	    </tr>
                        <tr>
                    	    <td height="40" align="right" valign="middle"><font color="#ff0000">*</font> 手 机：</td>
                    	    <td><input type="tel" name="autobot.userCenter.mobile" value="${autobot.userCenter.mobile!}" id="textfield4" /></td>
                  	    </tr>
                  	  </table>


                </div>
                </div>
                
          <div class="pxshijl">
               	  <h5>所获认证</h5>
                    <div class="pxshijl_box">
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  
     <tr>
    <td height="40" colspan="4" align="left" valign="middle"><table width="90%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="11%"><font color="#ff0000">*</font>所获认证：</td>
    <td width="89%"><textarea style="width:600px;" name="autobot.authHistroy" id="textarea2" cols="45" rows="5">${autobot.authHistroy!}</textarea></td>
  </tr>
</table></td>
    </tr>
</table>


                </div>
          </div>
          <div class="pxshijl">
               	  <h5>工作经历</h5>
                    <div class="pxshijl_box">
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  
  
  
     <tr>
    <td height="40" colspan="4" align="left" valign="middle"><table width="90%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="11%"><font color="#ff0000">*</font>工作经历：</td>
    <td width="89%"><textarea style="width:600px;" name="autobot.workingHistroy" id="textarea2" cols="45" rows="5">${autobot.workingHistroy!}</textarea></td>
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
	var name = $("[name='autobot.userCenter.name']").val();
	var brithday = $("[name='autobot.userCenter.brithday']").val();
	var marryStatus = $("[name='autobot.userCenter.marryStatus']").val();
	var currentWorkStatus = $("[name='autobot.currentWorkStatus']").val();
	var autoBrand = $("[name='autobot.autoBrand']").val();
	var mobile = $("input[name='autobot.userCenter.mobile']").val();
	var authHistroy = $("[name='autobot.authHistroy']").val();
	var workingHistroy = $("[name='autobot.workingHistroy']").val();
	
	if(name == undefined || brithday == undefined || marryStatus == undefined || currentWorkStatus == undefined autoBrand == undefined || mobile == undefined || authHistroy == undefined || workingHistroy == undefined){
		alert("带*的为必填字段 ");
		return false;
	}
	if(name == "" || brithday == "" || marryStatus == "" || currentWorkStatus == "" autoBrand == "" || mobile == "" || authHistroy == "" || workingHistroy == ""){
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
