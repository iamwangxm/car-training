<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>培聘网</title>
<link rel="stylesheet" href="<@url value='/assets/website/backend/css/login_style.css'/>" type="text/css" media="screen" />
<script type="text/javascript" src="<@url value='/assets/website/backend/js/jquery-1.8.0.min.js'/>"></script>
<script type="text/javascript" src="<@url value='/assets/website/backend/js/common.js'/>"></script>
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
<#include "/assets/website/common/header.html">
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
                  <td height="60" colspan="4" align="left" valign="middle" style="background:url(http://obu3flkwk.bkt.clouddn.com/backend/images/icon2.jpg) no-repeat left center; padding:20px 0px; height:30px; line-height:30px; padding-left:30px;">每个手机只能申请一个账号</td>
                  </tr>
                <tr>
                  <td width="106" height="60" align="right" valign="middle"><font color="#ff0000">*</font>个人账号：</td>
                  <td colspan="2"><input style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="text" name="gr_username" id="gr_username"  data-reg="/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/" placeholder="请输入11位手机号" required/></td>
                  <td width="282"><font color="#999999">作为登录账号，请填写未注册过的手机</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="gr_password" id="gr_password"   data-reg="/^[A-Za-z0-9]{6,16}$/"  placeholder="请输入6-16位字母、数字组成的登录密码" required/></td>
                  <td><font color="#999999">6~16个字符，包含字母，数字，特殊符号</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>确认密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="gr_confirmPassword" id="gr_confirmPassword"   data-reg="/^[A-Za-z0-9]{6,16}$/"  placeholder="请再次输入登录密码" required/></td>
                  <td><font color="#999999">请再次输入密码</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>验证码：</td>
                  <td width="100"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" type="text" name="gr_verCode" id="gr_verCode" /></td>
                  <td width="72"> 
                      <input type="button" id="gr_msgsend" value="免费获取验证码" onclick="javascript:settime(this);sendmsg(this.id);return false;" style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" /></td>
                  <td><font color="#999999">请输入手机验证码</font></td>
                </tr>
                <tr>
                  <td height="60" colspan="4" align="center" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="6%" height="33">&nbsp;</td>
                      <td width="94%"><input name="personalType" type="radio" id="personalType" value="AUTOBOT" />
汽车人
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <input name="personalType" type="radio" id="personalType" value="TRAINER" />
培训师</td>
                    </tr>
                  </table></td>
                  </tr>
                <tr>
                  <td height="80" colspan="4" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="http://obu3flkwk.bkt.clouddn.com/backend/images/tj.jpg" onClick='javascript:gr_register();return false;'/></td>
                </tr>
              </table>
              </form>
			</div>
			<div id="item_con_1" style="display:none">
			  <form action="" id="loginform1">
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="60" colspan="4" align="left" valign="middle" style="background:url(http://obu3flkwk.bkt.clouddn.com/backend/images/icon2.jpg) no-repeat left center; padding:20px 0px; height:30px; line-height:30px; padding-left:30px;">每个手机只能申请一个账号</td>
                  </tr>
                <tr>
                  <td width="106" height="60" align="right" valign="middle"><font color="#ff0000">*</font>企业账号：</td>
                  <td colspan="2"><input style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="text" name="qy_username" id="qy_username"  data-reg="/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/" placeholder="请输入11位手机号" required/></td>
                  <td width="282"><font color="#999999">作为登录账号，请填写未注册过的手机</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="qy_password" id="qy_password"   data-reg="/^[A-Za-z0-9]{6,16}$/"  placeholder="请输入6-16位字母、数字组成的登录密码" required/></td>
                  <td><font color="#999999">6~16个字符，包含字母，数字，特殊符号</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>确认密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="qy_confirmPassword" id="qy_confirmPassword"   data-reg="/^[A-Za-z0-9]{6,16}$/"   placeholder="请再次输入登录密码" required/></td>
                  <td><font color="#999999">请再次输入密码</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>验证码：</td>
                  <td width="100"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" type="text" name="qy_verCode" id="qy_verCode" /></td>
                  <td width="72" align="left"> 
                   <input type="button" id="qy_msgsend" style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" value="免费获取验证码" onclick="settime(this);sendmsg(this.id);return false;" /></td>
                  <td><font color="#999999">请输入手机验证码</font></td>
                </tr>
                <tr>
                  <td height="60" colspan="4" align="center" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="6%" height="33">&nbsp;</td>
                      <td width="94%"><input name="companyType" type="radio" id="COMPANY" value="COMPANY"  />
培训企业
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <input name="companyType" type="radio" id="companyType" value="STORE" />
汽车公司</td>
                    </tr>
                  </table></td>
                  </tr>
                <tr>
                  <td height="80" colspan="4" align="center" valign="middle"><img id="imageField" src="http://obu3flkwk.bkt.clouddn.com/backend/images/tj.jpg"  onClick='qy_register()'/></td>
                </tr>
              </table>
              </form>
            <!--错误信息显示域-->
            <span class="errMsg" style="display:block; padding-left:166px;line-height: 40px;"></span>
			</div>
			
		</div>
	</div>
        
        </div>
        <div class="zc_r right">已有培聘账号？<a href="<@url value='/backend/login'/>">立即登录</a>。</div>
        <div class="clear"></div>
    </div>
    </div>
</div>
<script>

function gr_register(){
	var form_data={};
	var username = $("#loginform0").find("#gr_username").val();
	var password = $("#loginform0").find("#gr_password").val();
	var comfirmPassword = $("#loginform0").find("#gr_confirmPassword").val();
	var vercode = $("#loginform0").find("#gr_verCode").val();
	var personalType = $("input[name='personalType']:checked").val();
	
	var userType = 'PERSONAL';
	if(username==''||username==null){
		alert('请输入用户名');
		return false;
	}
	if(password==''||password==null){
		alert('请输入用户密码');
		return false;
	}
	if(comfirmPassword==''||comfirmPassword==null){
		alert('请输入确认密码');
		return false;
	}
	if(comfirmPassword!=password){
		alert('您 输入的密码和确认密码不一致');
		return false;
	}
	if(vercode==''||vercode==null){
		alert('请选择短信验证码');
		return false;
	}
	if(personalType==''||personalType==null||personalType=='undefined'){
		alert('请选择个人类型');
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
	     url: "/backend/register/register",
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
	    	 }else{
	    	 if(data.code==400){
	    	 	 showErrMsg(data.msg);
	    	 	 return false;
	    	 }else if(data.code==402){
	    	  	showErrMsg(data.msg);
	    	 	return false;
	    	 }else if(data.code==405){
	    	  	showErrMsg(data.msg);
	    	 	return false;
	    	 }
	     }
	    }
	});
}

function qy_register(){
	var form_data={};
	var username = $("#loginform1").find("#qy_username").val();
	var password = $("#loginform1").find("#qy_password").val();
	var comfirmPassword = $("#loginform1").find("#qy_confirmPassword").val();
	var vercode = $("#loginform1").find("#qy_verCode").val();	
	var companyType = $("input[name='companyType']:checked").val();
	var userType = 'COMPANY';
	
	if(username==''||username==null){
		alert('请输入手机号');
		return false;
	}
	if(password==''||password==null){
		alert('请输入用户密码');
		return false;
	}
	if(comfirmPassword==''||comfirmPassword==null){
		alert('请输入确认密码');
		return false;
	}
	if(comfirmPassword!=password){
		alert('您 输入的密码和确认密码不一致');
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
	if(companyType==''||companyType==null||companyType=='undefined'){
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
	     url: "/backend/register/register",
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
	    	 }else if(data.code==402){
	    	  showErrMsg(data.msg);
	    	 return false;
	    	 }else if(data.code==405){
	    	  showErrMsg(data.msg);
	    	 return false;
	    	 }else{
	    	 	 return false;
	    	 }
	     }
	});
}

function showErrMsg(errMsg){
	alert(errMsg);
}
    
 function sendmsg(s_type){
 	var username='';
 	var userType='';
	var form_data={};
	 if(s_type=='gr_msgsend'){
	 username = $("#loginform0").find("#gr_username").val();
	 userType= 'PERSONAL';
	 }else if(s_type=='qy_msgsend'){
	  username = $("#loginform1").find("#qy_username").val();
	  userType= 'COMPANY';
	 }
	if(username==''||username==null){
		alert('请输入手机号');
		return false;
	}
	
	form_data.username = username;
	form_data.userType = userType;
	$.ajax({
		 type: "POST",
	     url: "/backend/register/sendmsg",
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
</body>
</html>
