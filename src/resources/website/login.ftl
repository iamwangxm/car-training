<!doctype html>
<html lang="en">
<head>
    <title>我享登录页</title>
</head>
<body>
<#include "/assets/website/common/header.html">
<!--/*主体内容*/-->

    <div class="wrap pr login">
        <section class="pa">
            <ul class="tab_login clearfix">
                <li class="on">密码登录</li>
                <li>手机动态码登录</li>
            </ul>
            <div class="logins">
                <form action="" id="loginform0">
                <input type="hidden" name="targetUrl" value=${targetUrl!} />
                    <dl>
                        <dd class="box-radius-5 pr">
                            <input name="username" class="box-radius-5" data-title="手机号码"
                                    data-reg="/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/"
                                     type="number" placeholder="请输入11位手机号" required/>
                            <img class="pa" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/x2.png?v=0.0.1" alt=""/>
                            <em class="pa warn box-radius-5">
                                <b></b><i></i><img class="fr" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/sanjiao.png?v=0.0.1" alt=""/>
                            </em>
                        </dd>
                        <dd class="box-radius-5 pr">
                            <input name="password" class="box-radius-5" type="password" data-title="密码" 
                            	placeholder="请输入6-16位字母、数字组成的登录密码" required/>
                            <em class="pa warn box-radius-5">
                                <b></b><i></i><img class="fr" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/sanjiao.png?v=0.0.1" alt=""/>
                            </em>
                            <img class="pa" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/x2.png?v=0.0.1" alt=""/>
                        </dd>
                        <!--<dt class="pr"><input class="checknode box-radius-5" maxlength="4" data-title="验证码" data-reg="/^d\{4}/" type="text" placeholder="请输入验证码" required/>-->
                            <!--<img src="" alt=""/>-->
                        <!--<em class="pa warn box-radius-5">-->
                            <!--<b></b><img class="fr" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/sanjiao.png" alt=""/>-->
                        <!--</em>-->
                        <!--</dt>-->
                    </dl>
                    <input style="display:none" id="_spring_security_remember_me2" name="rememberme" checked type="checkbox"/>
                </form>
            </div>
            <div class="logins disnone">
                <form action="" id="loginform1">
                <input type="hidden" name="targetUrl" value=${targetUrl!} />
                    <dl>
                        <dt style="display:none;"><span></span>短信动态码已发送至您的手机，请查收！</dt>
                        <dd class="box-radius-5 pr">
                            <input id="cellphone" name="username" class="box-radius-5" data-title="手机号码"
                                   data-reg="/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/"
                                   type="number" placeholder="请输入11位手机号" required/>
                            <em class="pa warn box-radius-5">
                                <b></b><i></i><img class="fr" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/sanjiao.png?v=0.0.1" alt=""/>
                            </em>
                            <img class="pa" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/x2.png?v=0.0.1" alt=""/>
                        </dd>
                        <dd class="box-radius-5 pr">
                            <input name="vercode" class="checknode box-radius-5" maxlength="6" data-title="验证码" data-reg="//"
                                   onblur="iserro($(this))" type="text" placeholder="短信动态码" required/>
                            <em class="pa warn box-radius-5">
                                <b></b><i></i><img class="fr" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/sanjiao.png?v=0.0.1" alt=""/>
                            </em>
                           <span data-url="/website/login/sendMsg" class="box-radius-5 fr getchecknode">获取短信动态码</span></dd>
                           <input style="display:none" id="_spring_security_remember_me" name="rememberme" checked type="checkbox"/>
                        <dd style="display:none;" class="captcha_box box-radius-5">
                        	 <!-- 图片验证码验正-->                
				            <div class="dif_checkbox" id="captcha_box">
						            <label for="">
							            <input class="_wid_150" id="captchacode" name="cpatch" data-title="图片验证码" placeholder="请输入图片验证码" />
							            <div class="check_map">
								            <img class="captcha" src="/website/captch/captimg?token=149823767236">
								            <input class="box-radius-5 btn_sm" id="goon" type="button" value="继续"/>
								        </div>
						            </label>
				            </div>
                        </dd>
                    </dl>
                </form>
            </div>
            <p class="remember"><span class="box-radius-5 radio iconfont icon-dui"></span>一周内自动登录 <a href="/website/password" class="fr">忘记密码？</a></p>
            <!--错误信息显示域-->
            <span class="errMsg" style="display:block; padding-left:166px;line-height: 40px;"></span>
            
            <script>
                $(".remember span").click(function(){
                	if($("#_spring_security_remember_me").prop("checked")){
                		$("#_spring_security_remember_me").prop("checked",false)
                		$("#_spring_security_remember_me2").prop("checked",false)
                	}else{
                		$("#_spring_security_remember_me").prop("checked",true)
                		$("#_spring_security_remember_me2").prop("checked",true)
                	}
                	
                    $(this).toggleClass("iconfont icon-dui");
                });
            </script>
            <div class="button box-radius-5">立即登录</div>
            <p><a href="/website/register?targetUrl=${targetUrl!}"><span>马上注册</span></a>即送50积分（相当于50元）</p>
        </section>
    </div>
    <div class="i_banner pr difbanner" style="height:510px;">
        <ul>
            <li class="pa" style="background: url('http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/banner2.jpg?v=0.0.1') center no-repeat;"></li>
        </ul>
    </div>
<div class="wrap model_group">
<#include "/assets/website/common/coin.html">
</div>
<#include "/assets/website/common/footer.html">
<!-- <script src="/assets/website/js/jq.js"></script>
<!-- <script src="/assets/website/js/common.js"></script> -->
<script>

	//图片验证码
	$(function(){
		$('.captcha_box input:button').bind('click', sendmessage);
	});
	$('img.captcha').bind('click', refreshcode);

	var curr_form = "loginform0";//当前表单
	
    $('input').bind({'blur':function(){
        iserro($(this));
        isnulls($(this));
    },'keydown':function(){
        showBot($(this));
    }});
    $(".login section img.pa").bind('click',function(){
        clearThis($(this));
    });
    function clearThis(obj){
        obj.siblings("input").val("");
        obj.hide();
    }
    function showBot(obj){
        obj.siblings('img.pa').show();
    }
    function iserro(obj){
        if(!obj.val().match(eval(obj.attr('data-reg')))){
            var name = obj.data('title');
            obj.siblings('.warn').show();
            obj.siblings('.warn').find("i").text(name + "格式不正确");
        }else{
            obj.siblings('.warn').hide();
        }
    }
    function isnulls(obj){
        if(obj.val().length < 1){
            var name = obj.data('title');
            obj.siblings('.warn').find("i").text(name + "不能为空");
        }
    }
    $('.tab_login li').bind('click',function(){
        $('input').not(':button').val("");
        $('.login section .warn,.login section dd img.pa').hide();
    
        $(this).addClass('on').siblings().removeClass('on');
        $('.logins').eq($(this).index()).show().siblings('.logins').hide();
        curr_form = 'loginform' + $(this).index();
    });
    $('div.button').bind('click',login);
    $(document).keydown(function(event){
    	if(event.which == 13){
    		login();
    	}
    });
    function login(){
    	$('div.button').unbind('click');
		var form_data;
		if(curr_form == "loginform0"){
			form_data = $('#loginform0').serialize();
		}else if(curr_form == "loginform1"){
			form_data = $('#loginform1').serialize();
		}
		$.ajax({
			 type: "POST",
		     url: "/website/login/login",
		     data: form_data,
		     error: function(request) {
	             showErrMsg("网络出错啦！");
	             $('div.button').bind('click',login);
	             return false;
	         },
		     success: function (data) {
		    	 if(data.code==200){
					 showErrMsg("登录成功！");
	            	 $('div.button').bind('click',login);
					 if(data.target == "" || data.target == null){
					 	setTimeout(function(){
			     	 			window.location.href = "/website/index";
			     	 		},300);
					 }else{
					 	setTimeout(function(){
			     	 			window.location.href = data.target;
			     	 		},300);
					 }
		    	 }else if(data.code==400){
		    	 	 showErrMsg(data.msg);
	            	 $('div.button').bind('click',login);
		    	 	 return false;
		    	 }else{
	            	 $('div.button').bind('click',login);
		    	 	 return false;
		    	 }
		     }
		});
    }
    
    function showErrMsg(errMsg){
    	$("span.errMsg").text(errMsg);
    }
    
</script>
</body>
</html>