<!doctype html>
<html lang="en">
<head>
    <title>我享注册页</title>
</head>
<body>
<#include "/assets/website/common/header.html">
<!--/*主体内容*/-->
<div class="wrap model_group">
    <div class="inter_main">
        <div class="inter_title">
            <p><span>会员注册</span>注册即送50积分（相当于50元）</p>
        </div>
          <div class="center_rig clearfix">
            <div class="vip_form fl">
            <form action="/website/register/register" id="form_register">
            <input type="hidden" name="targetUrl" value=${targetUrl!} />
	            <ul>
	                <li><label for=""><span><em>*</em>手机号</span>
	                    <input id="cellphone" name="username" class="box-radius-5" data-title="手机号码"
	                           data-reg="/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/"
	                           onblur="iserr($(this))" type="number" placeholder="请输入11位手机号" required/></label>
	                    <span></span></li>
	                <li><label for=""><span><em>*</em>验证码</span><input id="vercode" name="vercode" class="box-radius-5" maxlength="6" data-title="验证码"
	                                                                   onblur="isnull($(this))" type="text"
	                                                                   placeholder="请输入短信验证码" required/><b
	                     data-url="/website/register/sendmessgge" class="box-radius-5 getchecknode">获取短信验证码</b></label><span class="show_msg"></span></li>
	           <li>
	        <!-- 图片验证码验正-->                
            <div class="captcha_box" id="captcha_box">
		            <label for="">
		            <span><em>*</em>图片验证码</span><input id="captchacode" name="cpatch" data-title="图片验证码" placeholder="请输入图片验证码" />
		            <div class="j_check_map">	
		            <span></span><img class="captcha" src="/website/captch/captimg?token=149823767236">
		            <input class="box-radius-5 btn_sm" id="goon" type="button" value="继续"/>
		            <div>
		            </label>
            </div>
	                   </li>     
	                <li><label for=""><span><em>*</em>密码</span><input id="password" name="password" class="box-radius-5 recheck" type="password" data-title="密码"  data-pass=""
	                                                                  data-reg="/^[A-Za-z0-9]{6,16}$/"
	                                                                  onblur="iserr($(this))"
	                                                                  placeholder="请输入6-16位字母、数字组成的登录密码"
	                                                                  required/></label><span></span></li>
	                <li><label for=""><span><em>*</em>确认密码</span><input id="con_pass" class="box-radius-5 recheck" data-pass=""
	                                                                    type="password" data-title="密码"
	                                                                    data-reg="/^[A-Za-z0-9]{6,16}$/"
	                                                                    onblur="isequl($(this))"
	                                                                    placeholder="请再次输入登录密码"
	                                                                    required/></label><span></span></li>
	            </ul>
            </form>
            
             <!--错误信息显示域-->
            <span class="errMsg" style="display:block; padding-left:166px;line-height: 40px;"></span>
            
            <div id="i_register" class="button box-radius-5 dif_button">立即注册</div>
            <p class="now_login">已经有账号？<a class="box-radius-5" href="<@url value='/website/login'/>">马上登入</a> </p>
        </div>
         <div class="fr aside_login">
                <a href=""><img src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/register.png?v=0.0.1" alt=""/></a>
        </div>
    </div> </div>
  <#include "/assets/website/common/coin.html">
</div>
<#include "/assets/website/common/footer.html">
<script src="/assets/website/js/jq.js?v=0.0.1"></script>


<script>
	
	//图片验证码
	$(function(){
		$('div.captcha_box input:button').bind('click', sendmessage);
	});
	$('img.captcha').bind('click', refreshcode);
	
	$('div.button').bind('click', register);
    function register(){
    	var curr_form = $('div.button').siblings('form');
          var inputs = curr_form.find('input');
          inputs.blur();
          if(!inputs.hasClass('on')){
			$('div.button').unbind('click');
			//$('#submit_btn').css('background-color', '#d7d7d7');
			$.ajax({
				 type: "POST",
			     url: "/website/register/register",
			     data: $("#form_register").serialize(),
			     error: function(request) {
		             alert("网络错误！");
		             $('div.button').bind('click', register);
		         },
			     success: function (data) {
			     	 if(data.code == 400){
			     	 	showErrMsg(data.msg);
			     	 	$('div.button').bind('click', register);
			     	 }else if(data.code == 200){
			     	 	showErrMsg(data.msg);
			     	 	if(data.target == "" || data.target == null){
			     	 		setTimeout(function(){
			     	 			window.location.href = "/website/login";
			     	 		},2000);
						 }else{
			     	 		setTimeout(function(){
			     	 			window.location.href = data.target;
			     	 		},2000);
						 }
			     	 	$('div.button').bind('click', register);
			    	 }
			     }
			});
		}
	}
</script>
</body>
</html>