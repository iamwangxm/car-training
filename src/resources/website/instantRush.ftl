<!DOCTYPE html>
<#escape x as x?html><html>
<head>
<link href="<@url value="/assets/website/11.1/css/activity.css?v=0.1.1"/>" type="text/css" rel="stylesheet" />
<script src="<@url value="/assets/website/11.1/js/common.js?v=0.1.1"/>"></script>
<title>Weshare我享度假</title>
</head>
<body>
<#if inAction>

<#include "/assets/website/common/header.html">

    <div class="banner"></div>
    <div class="wrap">
        <div class="content clearfix">
            <div class="con_left">
                <h2>如何获得秒杀码？</h2>
                <p>1. 点击以下任意图标分享给好友</p>
                
                <div class="bdsharebuttonbox">
                <a href="http://connect.qq.com/widget/shareqq/index.html?url=http://www.weshare12.com/&amp;desc=%23weshare我享度假%23 曾经有一周度假屋免费试住机会放在我面前，我没有珍惜，如果上天再给我一个机会，我会立刻、马上、现在下手！&amp;summary=&amp;site=weshare12" target="_blank" class="qzone" title="点击分享到QQ空间吧" ></a>
                <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博">
                <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"#weshare我享度假# 曾经有一周度假屋免费试住机会放在我面前，我没有珍惜，如果上天再给我一个机会，我会立刻、马上、现在下手！","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                <!--div class="weixin" style="display:none;position: absolute;z-index: 3;width: 200px;height:200px; background: red">我是微信我怕谁</div-->
                <p>2. 成功分享后可获得秒杀码；</p>
                <p>3. 输入秒杀码开始秒杀；</p>
                <p>4. 幸运者获得2016年特定周的<br/>
                    &nbsp;&nbsp; 度假屋免费一周入住权。</p>
                <div>
                    <img src="<@url value="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/11.1/images/code.jpg?v=0.0.1"/>">
                    <p>扫一扫</br>
                    关注“Weshare 我享度假”</br>
                   <span> 一手掌握终<em>极秒杀攻略</em></br>
                    <em>度假屋预告</em>早知道！</span></p>
                </div>
            </div>
            <div class="con_right">
            <form action="<@url  value="/website/instantRush/detail" />" method="post">
                <div><span class="time"  style="">倒计时：<b>00</b> 天 <b>00</b>：<b>00</b>：<b>00</b></span>
                   <span class="input-con"> <input disabled type="text" placeholder="输入秒杀码" name="irCode" class="input-code"/>
                      <button class="btn" type="button" disabled>开始</button> 
                   </span>
                </div>
                <span style="color:red;" class="errMsg"></span>
             </form>
             
             	<#if data??>
             		<input id="hidden_input_2" type="hidden"  value="${data.amount!}" />
             	<#else>
             		<input id="hidden_input_2" type="hidden"  value="0" />
             	</#if>
             	
             	<#if data??>
             		<input id="hidden_input_3" type="hidden"  value="${data.amount2!}" />
             	<#else>
             		<input id="hidden_input_3" type="hidden"  value="0" />
             	</#if>
             	
	         	<div class="after-tips" style="display:none;">
	         		本周秒杀已结束.
	        	</div>
             	
               <p class="tips"> 请提前领取预订码(仅限<em>活动当天</em>有效)，方可参与秒杀。</p>
            	
            	
			            	<div class="con-con">
			                    <h3>第三波${start?string("M月d日")}<span>${start?string("E")}</span></h3>
                    <#if cottages??>
                       <#list cottages as cottage>
			                    	  <#assign insworxw = cottage.startTime?string("HH")?number >
			              				<#assign insworxw2 = 12 >
			                    	 
			                    	  <div class="con-title">${cottage.resort.name!}</div>
					                    <p class="des-con"><#if insworxw<insworxw2 >上午<#else>下午</#if><em>${cottage.startTime?string("hh:mm")}</em>开抢      2016年免费度假屋入住体验 度假屋面积80-82㎡     ${cottage.roomDescribe!}</p>
					                    <a href="<@url  value="/website/InstantRush/detail?irc.id="+cottage.id />" class="con-detail">
					                    	<img src="<@url  value=cottage.cottageImg />_640x480">
					                    	<img src="<@url  value=cottage.cottageImg2 />_640x480">
					                    </a>
			                    	  </div>
                	  </#list>
                    </#if>
                    
                    
			            	</div>
            	
        </div>
    </div>

<#include "/assets/website/common/footer.html">

	<script>
		
	
		//	显示活动结束之后的提示语
		$(function(){
			var amount = $("#hidden_input_2").val();
			var amount2 = $("#hidden_input_3").val();
			var show = false;
			if(amount <= 0 && amount2 <= 0){
				show = true;
			}
			if(show){
				$("form").hide();
				$("p.tips").hide();
				$("div.after-tips").show();
			}
			if(amount <= 0 && amount2 > 0 ){
				
			}
		});
	
		$("button.btn").bind('click',checkInstantCode);
		//检查秒杀吗是否正确
		function checkInstantCode(){
			
		var code = $("input[name='irCode']").val();
		var url = "/website/instant/checkCode";
		var param = {"code":code};

		$.ajax({
			type:'get',
			url:url,
			data:param,
			dataType:'json',
			success:function(result){
				if(result.code == 200){
					$("form")[0].submit();
				}else{
					showErrMsg(result.msg);
				}
			}
		});		
				
		}
		
		function showErrMsg(msg){
			$("span.errMsg").text(msg);
		}
	</script>

    <script>
        var backTime={
            startTime:'${curent?string("yyyy-MM-dd HH:mm:ss")}',
        	endTime:'${start?string("yyyy-MM-dd HH:mm:ss")}',/*计入格式为'2015-10-13 15:00:00'*/
       		nowTime: '${curent?string("yyyy-MM-dd HH:mm:ss")}',
            msg:'敬请等待！',
            tog:true,
            title:'倒计时：',
            obj:$('.time')
        }
        //微信显示隐藏
        $(".bds_weixin").click(function(){
            $(".weixin").show();
            setTimeout(function () {
                $(".weixin").hide(); },3000);
        });

        //点分享后弹出秒杀码
        $(".bdsharebuttonbox a").click(function(){
        		$.ajax({
					type:'GET',
					dataType:'json',
					url:"<@url value="/website/InstantRush/getCode"/>",
					error: function(request) {
			             createTips("网络异常!");
				    },
					success:function(result){
						if(result.code == 200){
							if(!!result.irCode==true){
							setTimeout(function () {
								createTipsCeng("秒杀码为"+result.irCode+"<br/>(仅限活动当天有效 )",'确定');
								},3000);
							}
						
						}else if(result.code == 401){
							createTipsCeng1("请先登录才可领取",'确定','<@url value="/website/login?targetUrl=/website/instantRush"/>');
						}
					}
				});
				
				
        
            //setTimeout(function () {
            //    createTipsCeng("秒杀码为28589<br/>(仅限活动当天有效 )",'确定');
            //},3000);
        })

    </script>
    <script src="<@url value="/assets/website/11.1/js/common.js?v=0.1.1"/>"></script>
    <#else>
    	没有活动安排
    </#if>
</body>
</html></#escape>