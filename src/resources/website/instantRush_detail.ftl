<!DOCTYPE html>
<#escape x as x?html><html>
<head>
<link href="<@url value="/assets/website/11.1/css/activity.css?v=0.1.1"/>" type="text/css" rel="stylesheet" />
 
<title>Weshare我享度假</title>

</head>
<body ng-controller="Main">

<#include "/assets/website/common/header.html">

<div class="detail-banner" style="background:url('<@url value="${(irc.backImg)!}"/>') no-repeat">
	<#if irc??>
    <div class="wrap">
        <p class="detail-title">${irc.resort.name!}<a href="<@url  value="/website/resort?resort.id="+irc.resort.id />" class="detail-goto"> 详情介绍></a></p>
        <#assign sworxw = irc.startTime?string("HH")?number >
              	<#assign sworxw2 = 12 >
        <p class="des-con"><#if sworxw<sworxw2 >上午<#else>下午</#if><em>${irc.startTime?string("h:mm")}</em>开抢    2016年免费度假屋入住体验 度假屋面积80-82㎡      ${irc.roomDescribe!}</p>
        <form action="<@url  value="/website/instantRush/detail" />" method="post">
        <input type="hidden" name="irc.id" value=${irc.id} />
        <div><span class="time"  style="">倒计时：<b>00</b> 天 <b>00</b>：<b>00</b>：<b>00</b></span>
        <#if irCode??>
        <#else>
        		
        			<#if data?? && '${data.amountPhoto}' != 'amount0'>
	        			 <span class="input-con"> <input disabled type="text" name="irCode" placeholder="输入秒杀码" class="input-code"/>
                       		<button class="btn" disabled>开始</button>
                   		</span>
        			<#else>
                  		<div class="after-tips" style="display:none;">
		         			本场秒杀已结束。
	        			</div>
           			</#if>
                   
                   
        </#if>
        </div>
        </form>
    </div>
    <#else>
    	没有活动
    </#if>
    
</div>



<div class="wrap clearfix detail-bg">

<#if canRush==false>
			<#if data??>
				<img src="<@url  value="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/11.1/images/${data.amountPhoto!}.jpg?v=0.0.1" />" />
			<#else>
	        	<img src="<@url  value="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/11.1/images/amount0.jpg?v=0.0.1" />" />
			</#if>
<#else>

    <h2>请选择你要入住档期秒杀</h2>
    <#if schedules??>
    <div class="detail-left">
       <span> ${schedules?first.startTime?string("yyyy年")}</span>
        <div class="line">
           <#if 1 gte firstMonth> <div class="circle-title circle-${1-firstMonth+1}"><span class="circle"></span> 1月</div></#if>
           <#if 2 gte firstMonth> <div class="circle-title circle-${2-firstMonth+1}"><span class="circle"></span> 2月</div></#if>
           <#if 3 gte firstMonth> <div class="circle-title circle-${3-firstMonth+1}"><span class="circle"></span> 3月</div></#if>
           <#if 4 gte firstMonth> <div class="circle-title circle-${4-firstMonth+1}"><span class="circle"></span> 4月</div></#if>
           <#if 5 gte firstMonth> <div class="circle-title circle-${5-firstMonth+1}"><span class="circle"></span> 5月</div></#if>
           <#if 6 gte firstMonth> <div class="circle-title circle-${6-firstMonth+1}"><span class="circle"></span> 6月</div></#if>
           <#if 7 gte firstMonth> <div class="circle-title circle-${7-firstMonth+1}"><span class="circle"></span>7月</div></#if>
           <#if 8 gte firstMonth> <div class="circle-title circle-${8-firstMonth+1}"><span class="circle"></span> 8月</div></#if>
           <#if 9 gte firstMonth> <div class="circle-title circle-${9-firstMonth+1}"><span class="circle"></span> 9月</div></#if>
           <#if 10 gte firstMonth> <div class="circle-title circle-${10-firstMonth+1}"><span class="circle"></span> 10月</div></#if>
           <#if 11 gte firstMonth> <div class="circle-title circle-${11-firstMonth+1}"><span class="circle"></span> 11月</div></#if>
           <#if 12 gte firstMonth> <div class="circle-title circle-${12-firstMonth+1}"><span class="circle"></span> 12月</div></#if>
        </div>
    </div>
    <div class="detail-right">
    	<#if 1 gte firstMonth>
        <ul>
        <#list schedules as schedule>
        	<#if schedule.month==1 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        
        </ul></#if>
        <#if 2 gte firstMonth><ul>
        
        <#list schedules as schedule>
        	<#if schedule.month==2 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
        <#if 3 gte firstMonth><ul>
        
        <#list schedules as schedule>
        	<#if schedule.month==3 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
       <#if 4 gte firstMonth>  <ul>
       
        <#list schedules as schedule>
        	<#if schedule.month==4 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
        <#if 5 gte firstMonth> <ul>
       
        <#list schedules as schedule>
        	<#if schedule.month==5 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
      <#if 6 gte firstMonth>   <ul>
       
        <#list schedules as schedule>
        	<#if schedule.month==6 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
        <#if 7 gte firstMonth>  <ul>
      
        <#list schedules as schedule>
        	<#if schedule.month==7 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list>
        </ul> </#if>
        <#if 8 gte firstMonth>   <ul>
     
        <#list schedules as schedule>
        	<#if schedule.month==8 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
      <#if 9 gte firstMonth>   <ul>
       
        <#list schedules as schedule>
        	<#if schedule.month==9 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
     <#if 10 gte firstMonth>     <ul>
      
        <#list schedules as schedule>
        	<#if schedule.month==10 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
     <#if 11 gte firstMonth>     <ul>
      
        <#list schedules as schedule>
        	<#if schedule.month==11 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
       <#if 12 gte firstMonth>   <ul>
      
        <#list schedules as schedule>
        	<#if schedule.month==12 >
	        	<li><p><em>${schedule.startTime?string("d")}</em>日-<em>${schedule.endTime?string("d")}</em>日</p>
	                <p>${schedule.describe!}</p>
	                <p><em class="pro_num" id="${schedule.id}"></em>套剩余<a href="javascript:rush('${schedule.id!}');" class="seckill">秒杀</a></p>
	            </li>
        	</#if>
        </#list> 
        </ul></#if>
 </#if>       
    </div>
    
</div>
</#if>
<#include "/assets/website/common/footer.html">
<script>
    var backTime={
        startTime:'${curent?string("yyyy-MM-dd HH:mm:ss")}',
        endTime:'${irc.startTime?string("yyyy-MM-dd HH:mm:ss")}',/*计入格式为'2015-10-13 15:00:00'*/
        nowTime: '${curent?string("yyyy-MM-dd HH:mm:ss")}',
        msg:'敬请等待！',
        tog:true,
        title:'倒计时：',
        obj:$('.time')
    }
</script>
<script src="<@url value="/assets/website/11.1/js/common.js?v=0.1.1"/>"></script>
<script>
	function rush(sid){
	 	$.ajax({
					type:'GET',
					dataType:'json',
					url:"<@url value="/website/InstantRush/rush?schedule.id="/>"+sid+"&irCode=${irCode!}",
					error: function(request) {
			             createTips("网络异常!");
				    },
					success:function(result){
					if(result.code == 100){
							createTipsCeng('请登录后再试','确认');
						} else if(result.code == 200){
						    window.location="<@url value="/website/InstantRush/ok?irc.id=${irc.id}"/>"
						}else{
						     if(result.remain!=0){
               				 	createTipsCeng('抱歉,你没有秒杀到,<br/>请选择其他档期再试试手气。','再试一次');
               				 	 getCnt(); 
               				 }else{
               				 	if(!result.next){
               				 		window.location="<@url value="/website/InstantRush/fail"/>"
               				 	}else{
               				 		createTipsCeng1('抱歉,你没有秒杀到,<br/>本场已结束<br/>下一场将在今天'+result.next+'进行。','确认','/website/InstantRush');
               				 		getCnt(); 
               				 	}
               				 	
               				   
               				 }
						}
					}
				});
	  
	}

	<#if canRush=true>

   
    var pro_num = $('.pro_num'), products = $('.detail-right ul li'), html = '<div class="complete-index">已经抢完了</div>';
    products.bind({'mouseover':function(){
        $(this).addClass('in');
    },'mouseleave':function(){
        $(this).removeClass('in');
    }});
    
    function getCnt(){
    
        $.get('<@url value="/website/InstantRush/getSchedulesAmount?irc.id=${irc.id}"/>',function(res){
            for(var i = 0; i < res.amountamount.length; i++){
            	if( pro_num.eq(i).attr("id")==res.amountamount[i].id){
	                pro_num.eq(i).text(res.amountamount[i].remain);
	                if(res.amountamount[i].remain > 0){
	                    //products.eq(i).bind('hover',li_hover);
	                }else{
	                    products.eq(i).append(html).find('.seckill').remove().unbind();
	                }
                }
            }
        });
    }
      
    
    getCnt(); 
    
  </#if>
</script>
</body>
</html></#escape>