<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value='/assets/website/backend/css/login_style.css'/>" type="text/css" media="screen" />
<script type="text/javascript" src="<@url value='/assets/website/backend/js/jquery.min.js'/>"></script>
<script type="text/javascript" src="<@url value='/assets/website/backend/js/jquery.js'/>"></script>
<script type="text/javascript">

function displayimg()
{
	$("#img1").show();
	}
	function hidimg()
	{
		$("#img1").hide();
		}
</script>
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
    <div class="zc">
    	<div class="zc_l left">
        	<div class="links">
		<div class="linksTop">
			<ul id="tags1">
				<li class="cn" onclick="selectTag('item_con_0',this)">个人注册</li>
				<li onclick="selectTag('item_con_1',this)">企业注册</li>
			</ul>
		</div>
		<div class="linksmain" id="item_con">
			<div id="item_con_0">
			  <form action="" id="loginform0">
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="60" colspan="4" align="left" valign="middle" style="background:url(http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/zc_icon2.jpg) no-repeat left center; padding:20px 0px; height:30px; line-height:30px; padding-left:30px;">每个手机只能申请一个账号</td>
                  </tr>
                <tr>
                  <td width="106" height="60" align="right" valign="middle"><font color="#ff0000">*</font>手机：</td>
                  <td colspan="2"><input style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="text" name="gr_username" id="gr_username" /></td>
                  <td width="282"><font color="#999999">作为登录账号，请填写未注册过的手机或邮箱</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="gr_password" id="gr_password" /></td>
                  <td><font color="#999999">6~16个字符，包含字母，数字，特殊符号</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>确认密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="gr_confirmPassword" id="gr_confirmPassword" /></td>
                  <td><font color="#999999">请再次输入密码</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>验证码：</td>
                  <td width="100"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" type="text" name="gr_verCode" id="gr_verCode" /></td>
                  <td width="72"> 
                      <input type="button" id="btn" value="免费获取验证码" onclick="settime(this)" /></td>
                  <td><font color="#999999">请输入手机验证码</font></td>
                </tr>
                <tr>
                  <td height="60" colspan="4" align="center" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="6%" height="33">&nbsp;</td>
                      <td width="94%"><input name="personalType" type="radio" id="personalType" value="AUTOBOT" checked="checked" />
汽车人
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <input name="personalType" type="radio" id="personalType" value="TRAINER" />
培训师</td>
                    </tr>
                  </table></td>
                  </tr>
                <tr>
                  <td height="80" colspan="4" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/tj.jpg" onClick='javascript:gr_register();'/></td>
                </tr>
              </table>
              </form>
			</div>
			<div id="item_con_1" style="display:none">
			  <form action="" id="loginform1">
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="60" colspan="4" align="left" valign="middle" style="background:url(http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/icon2.jpg) no-repeat left center; padding:20px 0px; height:30px; line-height:30px; padding-left:30px;">每个邮箱只能申请一个账号</td>
                  </tr>
                <tr>
                  <td width="106" height="60" align="right" valign="middle"><font color="#ff0000">*</font>邮箱：</td>
                  <td colspan="2"><input style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="text" name="qy_username" id="qy_username" /></td>
                  <td width="282"><font color="#999999">作为登录账号，请填写未注册过的手机</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="qy_password" id="qy_password" /></td>
                  <td><font color="#999999">6~16个字符，包含字母，数字，特殊符号</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>确认密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="qy_confirmPassword" id="qy_confirmPassword" /></td>
                  <td><font color="#999999">请再次输入密码</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>验证码：</td>
                  <td width="100"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" type="text" name="qy_verCode" id="qy_verCode" /></td>
                  <td width="72"> 
                   <input type="button" id="btn" value="免费获取验证码" onclick="settime(this)" /></td>
                  <td><font color="#999999">请输入手机验证码</font></td>
                </tr>
                <tr>
                  <td height="60" colspan="4" align="center" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="6%" height="33">&nbsp;</td>
                      <td width="94%"><input name="companyType" type="radio" id="COMPANY" value="radio2" checked="checked" />
培训企业
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <input name="companyType" type="radio" id="companyType" value="STORE" />
汽车公司</td>
                    </tr>
                  </table></td>
                  </tr>
                <tr>
                  <td height="80" colspan="4" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/tj.jpg"  onClick='javascript:qy_register();'/></td>
                </tr>
              </table>
              </form>
			</div>
			
		</div>
	</div>
        
        </div>
        <div class="zc_r right">已有培聘账号？<a href="#">立即登录</a>。</div>
        <div class="clear"></div>
    </div>
    </div>
</div>
<script>

function gr_register(){
	var form_data={};
	var username = $("#loginform0").find("#gr_username").val();
	var password = $("#loginform0").find("#gr_password").val();
	var vercode = $("#loginform0").find("#gr_verCode").val();
	var personalType = $("#loginform0").find("#personalType").val();
	
	var userType = 'PERSONAL';
	if(username==''||username==null){
		alert('请输入用户名');
		return false;
	}
	if(password==''||password==null){
		alert('请输入密码');
		return false;
	}
	if(vercode==''||vercode==null){
		alert('请选择短信验证码');
		return false;
	}
	if(personalType==''||personalType==null){
		alert('请选择企业类型');
		return false;
	}
	if(userType==''||userType==null){
		alert('请选择用户登陆类型');
		return false;
	}
	form_data.username = username;
	form_data.password = password;
	form_data.vercode = vercode;
	form_data.userType = userType;
	form_data.personalType = personalType;
	$.ajax({
		 type: "POST",
	     url: "/backend/register",
	     data: form_data,
	     error: function(request) {
             showErrMsg("网络出错啦！");
             return false;
         },
	     success: function (data) {
	    	 if(data.code==200){
				 showErrMsg("注册成功！");
				 if(data.target == "" || data.target == null){
				 	setTimeout(function(){
		     	 			window.location.href = "/backend/applyJobHistory";
		     	 		},300);
				 }else{
				 	setTimeout(function(){
		     	 			window.location.href = data.target;
		     	 		},300);
				 }
	    	 }else if(data.code==400){
	    	 	 showErrMsg(data.msg);
	    	 	 return false;
	    	 }else{
	    	 	 return false;
	    	 }
	     }
	});
}

function qy_register(){
	var form_data={};
	var username = $("#loginform1").find("#qy_username").val();
	var password = $("#loginform1").find("#qy_password").val();
	var vercode = $("#loginform1").find("#gr_verCode").val();	
	var companyType = $("#loginform1").find("#companyType").val();
	var userType = 'COMPANY';
	
	if(username==''||username==null){
		alert('请输入用户名');
		return false;
	}
	if(password==''||password==null){
		alert('请输入密码');
		return false;
	}
	if(vercode==''||vercode==null){
		alert('请输入短信验证码');
		return false;
	}
	if(userType==''||userType==null){
		alert('请选择用户登陆类型');
		return false;
	}
	if(companyType==''||companyType==null){
		alert('请选择企业类型');
		return false;
	}
	
	form_data.username = username;
	form_data.password = password;
	form_data.vercode = vercode;
	form_data.userType = userType;
	form_data.companyType = companyType;
	$.ajax({
		 type: "POST",
	     url: "/backend/register",
	     data: form_data,
	     error: function(request) {
             showErrMsg("网络出错啦！");
             return false;
         },
	     success: function (data) {
	    	 if(data.code==200){
				 showErrMsg("注册成功！");
				 if(data.target == "" || data.target == null){
				 	setTimeout(function(){
		     	 			window.location.href = "/backend/companyJobManage";
		     	 		},300);
				 }else{
				 	setTimeout(function(){
		     	 			window.location.href = data.target;
		     	 		},300);
				 }
	    	 }else if(data.code==400){
	    	 	 showErrMsg(data.msg);
	    	 	 return false;
	    	 }else{
	    	 	 return false;
	    	 }
	     }
	});
}

function showErrMsg(errMsg){
	$("span.errMsg").text(errMsg);
}
    
 function sendmsg(username){
	var form_data={};
	
	if(username==''||username==null){
		alert('请输入手机号');
		return false;
	}
	
	
	form_data.username = username;
	$.ajax({
		 type: "POST",
	     url: "/backend/register/sendMsg",
	     data: form_data,
	     error: function(request) {
             showErrMsg("网络出错啦！");
             return false;
         },
	     success: function (data) {
	    	 if(data.code==200){
				 showErrMsg("发送成功！");
	    	 }else if(data.code==400){
	    	 	 showErrMsg(data.msg);
	    	 	 return false;
	    	 }else{
	    	 	 return false;
	    	 }
	     }
	});
}

var countdown=60; 
function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
}
</script>
<!-- main结束 -->
<#include "/assets/website/backend/common/footer.html">
<script type="text/javascript" src="js/common.js"></script>
</body>
</html>
