<!doctype html>
<html lang="en">
<head>
    <title>我享重置密码页</title>
</head>
<body>
<#include "/assets/website/common/header.html">
<!--/*主体内容*/-->
<div class="wrap model_group">
    <div class="inter_main clearfix">
        <div class="inter_title">
            <p><span>重置密码</span></p>
        </div>
       <div class="vip_form fl">
            <form action="/website/password/reset" id="form_setPassword">
            <ul>
                 <li><label for=""><span><em>*</em>手机号</span>
                    <input id="cellphone" name="username" class="box-radius-5" data-title="手机号码"
                           data-reg="/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/"
                           onblur="iserr($(this))" type="number" placeholder="请输入11位手机号" required/></label>
                    <span></span></li>
                <li><label for=""><span><em>*</em>验证码</span><input name="vercode" class="box-radius-5" maxlength="6" data-title="验证码"
                                                                   onblur="isnull($(this))"  type="text"
                                                                   placeholder="请输入短信验证码" required/><b
                        class="box-radius-5 getchecknode" data-url="/website/password/sendMsg" >获取短信验证码</b></label><span class="show_msg"></span></li>
                <li><label for=""><span><em>*</em>密码</span><input name="password" class="box-radius-5 recheck" type="password" data-title="密码"  data-pass=""
                                                                  data-reg="/^[A-Za-z0-9]{6,16}$/"
                                                                  onblur="iserr($(this))"
                                                                  placeholder="请输入6-16位字母、数字组成的登录密码"
                                                                  required/></label><span></span></li>
                <li><label for=""><span><em>*</em>确认密码</span><input class="box-radius-5 recheck" data-pass=""
                                                                    type="password" data-title="密码"
                                                                    data-reg="/^[A-Za-z0-9]{6,16}$/"
                                                                    onblur="isequl($(this))"
                                                                    placeholder="请再次输入登录密码"
                                                                    required/></label><span></span></li>
            </ul>
            </form>
            
            <!--错误信息显示域-->
            <span class="errMsg" style="display:block; padding-left:166px;line-height: 40px;"></span>
            
		<div id="submit" class="button box-radius-5 dif_button" >提交</div>
	</div>
        
    <div class="fr aside_login">
        <a href="/website/login" class="buttons box-radius-5">登入</a>
        <a href="/website/register" class="buttons box-radius-5">注册</a>
    </div>
    </div>
<#include "/assets/website/common/coin.html">
</div>
<#include "/assets/website/common/footer.html">

<script src="/assets/website/js/jq.js?v=0.0.1"></script>

<script>


	 $(function(){
        /*提交*/
        $('div#submit').bind('click',function(){
            var inputs = $(this).siblings('form').find('input');
            inputs.blur();
//            if(!inputs.hasClass('on')){
                  secend();
//            }
        });
    });

	function secend(){
		$.ajax({
			type : 'POST',
			url : "/website/password/reset",
	     	data: $("#form_setPassword").serialize(),
	     	dataType : 'json',
			error: function(request) {
	             alert("网络异常！");
	         },
		     success: function (data) {
		     	 if(data.code == 400){
		     	 	showErrMsg(data.msg);
		     	 }else if(data.code == 200){
		     	 	showErrMsg(data.msg);
		     	 	window.location= '/logout';
		    	 }
		     }
		});
		
	}
	
	
</script>


</body>
</html>