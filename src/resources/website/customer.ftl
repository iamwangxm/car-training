<!DOCTYPE html>
<#escape x as x?html><html>
<head>
    <title>我享会员中心</title>
</head>
<body>
<#include "/assets/website/common/header.html">
<div class="wrap model_group">
    <section class="center_main clearfix">
        <aside class="fl">
            <h3 class="vip_location onit" data-id="0">我的Weshare</h3>
            <ul>
                <li><em><span>+</span>订单中心</em>
                    <dl>
                        <dd class="vip_location" data-id="1">活动订单</dd>
                    </dl>
                </li>
                <li><em><span>+</span>记录中心</em>
                    <dl>
                        <dd class="vip_location" data-id="2">我的秒杀码</dd>
                    </dl>
                </li>
                <li><em><span>+</span>资产中心</em>
                    <dl>
                        <dd class="vip_location" data-id="3">我的积分</dd>
                    </dl>
                </li>
                <li><em><span>+</span>个人中心</em>
                    <dl>
                        <dd class="vip_location" data-id="0_1">个人资料</dd>
                        <#if customer?? && customer.password??>
                        	<dd class="vip_location" data-id="4">修改密码</dd>
                        <#else>
                        	<dd class="vip_location" data-id="5">设置密码</dd>
                        </#if>
                    </dl>
                </li>
            </ul>
        </aside>
        <div class="center_rig">
        
        <div class="vip_form vip_form0">
            <h3>我的Weshare</h3>
            <div class="user_msg">
                <div class="user_map fl">
                	<#if customer?? && customer.headImgUrl??>
                		<img src='${customer.headImgUrl!}' />
                	<#else>
                		<img src='http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/defult_headimg.png?v=0.0.1' />
                	</#if>
                </div>
                <dl>
                    <dd>
                    	<#if customer??>
	                    	<#if customer.name??>
	                    		${customer.name!}<#if customer.nickname??>（${customer.nickname!}）</#if>
	                    	<#else>
	                    		${customer.nickname!}
	                    	</#if>
	                    </#if>
                    </dd>
                    <dd><#if customer??>${customer.memberType!}</#if></dd>
                    <dd>手机：<#if customer?? && customer.mobile??>${customer.mobile?substring(0,3)}****${customer.mobile?substring(7)}</#if></dd>
                    <dd><a class="vip_location" data-id="0_1">编辑个人资料</a></dd>
                </dl>
            </div>
        </div>
        <div class="vip_form vip_form0_1 disnone">
            <h3>个人资料</h3>
            <form action="/website/customer/modifyInfo" id="vip_form0">
                <ul>
                    <li><label for=""><span>手机号</span><#if customer?? && customer.mobile??>${customer.mobile?substring(0,3)}****${customer.mobile?substring(7)}</#if></label></li>
                    <li><label for=""><span>会员等级</span></label><#if customer??>${customer.memberType!}</#if></li>
                    <li><label for=""><span><em></em>真实姓名</span><input class="box-radius-5 recheck" type="text" data-title="姓名"  data-pass=""
                                                                      data-reg="/^([\u4E00-\u9FA5]+|[a-zA-Z]+)$/"
                                                                      name="customer.name"
                                                                      value="<#if customer??>${customer.name!}</#if>"
                                                                      required/></label><span></span></li>
                    <li><label for=""><span><em></em>昵称</span><input class="box-radius-5 recheck" type="text" data-title="昵称"  data-pass=""
                                                                       data-reg="/^([\u4E00-\u9FA5]+|[a-zA-Z]+)$/"
                                                                       name="customer.nickname"
                                                                       value="<#if customer??>${customer.nickname!}</#if>"
                                                                       required/></label><span></span></li>
                    <li><label for=""><span><em></em>身份证号</span><input class="box-radius-5 recheck" type="text" data-title="身份证号"  data-pass=""
                                                                       data-reg="/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/"
                                                                       name="customer.idCard" 
                                                                       value="<#if customer??>${customer.idCard!}</#if>"
                                                                       required/></label><span></span></li>
                    <li class="sex">
                    	<label for=""><span>性别</span>
	                    	<#if customer?? && customer.gender?? && customer.gender!=enums.Gender.FEMALE>
	                    		<input type="radio" name="sex_radio" checked data-name="${enums.Gender.MALE.getName()}"/><em>男</em><input type="radio" name="sex_radio" data-name="${enums.Gender.FEMALE.getName()}"/><em>女</em>
	                    	<#else>
	                    		<input type="radio" name="sex_radio" data-name="${enums.Gender.MALE.getName()}"/><em>男</em><input type="radio" name="sex_radio" checked data-name="${enums.Gender.FEMALE.getName()}"/><em>女</em>
	                    	</#if>
	                    	<input id="cust_gender" type="hidden" name="customer.gender" value="<#if customer?? && customer.gender??>${customer.gender.getDisplayName()!}</#if>"/>
                    	</label>
                    </li>
                    <li class="birth"><label for=""><span>生日</span>
                        <select class="box-radius-5" data-name="<#if customer?? && customer.birthday??>${customer.birthday?string('yyyy')}</#if>" id="selYear">
                            <option value=""></option>
                        </select> 年
                        <select class="box-radius-5" data-name="<#if customer?? && customer.birthday??>${customer.birthday?string('MM')}</#if>" id="selMonth">
                            <option value=""></option>
                        </select>   月
                        <select class="box-radius-5" data-name="<#if customer?? && customer.birthday??>${customer.birthday?string('dd')}</#if>" id="selDay">
                            <option value=""></option>
                        </select>  日
                        <input id="cust_birthday" name="customer.birthday" type="hidden" value="<#if customer?? && customer.birthday??>${customer.birthday?string('yyyy-MM-dd')}</#if>"/>
                    </label></li>
                    <li class="dress"><label for=""><span>联系地址</span>
                        <select class="box-radius-5" data-id="<#if region?? && region.parent?? && region.parent.parent??>${region.parent.parent.id!}</#if>" id="province">
	                    	<option value=""></option>
                        </select>
                        <select class="box-radius-5" data-id="<#if region?? && region.parent??>${region.parent.id!}</#if>" id="city">
	                        <option value=""></option>
                        </select>
                        <select class="box-radius-5" data-id="<#if region??>${region.id!}</#if>" id="area">
	                        <option value=""></option>
                        </select><br/>
                        <input id="parent" name="parent" type="hidden" value="<#if region??>${region.id!}</#if>"/>
                        <input name="contact.address" class="box-radius-5" type="text" value="<#if contact??>${contact.address!}</#if>" required/>
                    </label><span></span></li>
                </ul>
            </form>
            
            <!--错误信息显示域-->
            <span class="errMsg" style="display:block; padding-left:166px;line-height: 40px;"></span>
            
            <div class="button box-radius-5">提交</div>
        </div>
        <div class="vip_form vip_form1 disnone">
            <h3>活动订单</h3>
            <ul class="order">
            	<#if orders?? && orders?size gt 0>
            		<#list orders as order>
		                <li>
		                    <h4><span>订单号：<em>${order.id!}</em></span><span>下单时间：<em>${order.orderTime?string("yyyy-MM-dd HH:mm")}</em></span></h4>
		                    <ol>
		                        <li class="orderLi1"><img src="${order.instantRushCottage.houseImg!}" alt=""/></li>
		                        <li class="orderLi2">
		                            <table>
		                                <tr><td>${order.instantRushCottageSchedule.instantRushCottage.resort.name!}</td></tr>
		                                <tr><td><#--${order.instantRushCottage.cottage.unit!}--></td></tr>
		                            </table>
		                        </li>
		                        <li class="orderLi3">
		                            <table>
		                                <tr><td>入住日期：</td><td>${order.instantRushCottageSchedule.startTime?string("yyyy年MM月dd日")}</td></tr>
		                                <tr><td>退房日期：</td><td>${order.instantRushCottageSchedule.endTime?string("yyyy年MM月dd日")}</td></tr>
		                                <tr><td>共计：</td><td>${order.instantRushCottageSchedule.dayCnt}晚</td></tr>
		                            </table>
		                        </li>
		                        <li class="orderLi4">
		                            <table>
		                            <#if order.instantRushCottage.id=="0twIdKQ6XAojHwSNtkzdaN">
		                            	<tr><td>待确认<br/>请拨打 400-090-6655</td></tr>
	                            	<#else>
			                            <#if order.orderStatus=="完成">
			                            	<tr><td>已完成</td></tr>
			                            <#elseif  order.orderStatus=="取消">
			                            	<tr><td>已取消</td></tr>
			                            <#elseif  order.orderStatus=="正常" && order.profileStatus==false>	
			                            	<tr><td>待完善个人资料</td></tr>
			                            <#elseif  order.orderStatus=="正常" && order.profileStatus==true && order.orderCheckedIn==false>	
			                            	<tr><td>待入住</td></tr>
			                            <#elseif  order.orderStatus=="正常" && order.profileStatus==true && order.orderCheckedIn==true && order.commentStatus=="否">
			                            	<tr><td>待点评</td></tr>
			                            <#elseif  order.orderStatus=="正常" && order.profileStatus==true && order.orderCheckedIn==true && order.commentStatus=="是">
			                            	<tr><td>已完成</td></tr>
			                            </#if>
		                            </#if>
		                            </table>
		                        </li>
		                        <li class="orderLi5">
		                            <table>
		                            	 <#if order.orderStatus=="正常" && order.profileStatus==false>
		                            	 	<tr><td><a class="vip_location" data-id="0_1" href="#" >完善个人资料</a></td></tr>
		                            	 	<script>
		                            	 	
			                            	</script>
		                            	 <#elseif  order.orderStatus=="正常" && order.profileStatus==true && order.orderCheckedIn==true && order.commentStatus=="否">	
		                            	 	<tr><td><a href="">写点评</a></td></tr>
		                            	 </#if>
		                            	 <#if order.instantRushCottage.id!="0twIdKQ6XAojHwSNtkzdaN">
		                                	<tr><td data-id="1_1" class="vip_location"><a href="javascript:get_detail('<@url value='/website/instantRush/orderDetail?orderId=${order.id}'/>')">订单详情</a></td></tr>
		                                </#if>
		                            </table>
		                        </li>
		                    </ol>
		                </li>
            		</#list>
    			<#else>
    				<div class="empty" style="text-alian:center;">暂无内容</div>
            	</#if>
            </ul>
            
        </div>
        <div class="vip_form vip_form1_1 disnone">
            <h3>订单详情</h3>
        <section class="order_detail">
            <table>
                <tr>
                    <td>订单号</td>
                    <td>
                        <span id="orderId"></span>
                    </td>
                </tr>
                <tr>
                    <td>下单时间</td>
                    <td> <span id="orderTime"></span></td>
                </tr>
                <tr>
                    <td>订单状态</td>
                    <td>已预订</td>
                </tr>
            </table>
            <div><img id="i_imgs_t" src="images/imdex_11.jpg" alt=""/><h4>
                <em id="resort"></em></h4><h5> <em id="addr"></em></h5><h5>联系电话：<em id="phoneNumber"></em></h5> </div>
            <table>
                <tr>
                    <td>房型</td>
                    <td> <em id="unit"></em></td>
                </tr>
                <tr>
                    <td>间数</td>
                    <td><span class="box-radius-5"><b>1</b>间</span></td>
                </tr>
                <tr>
                    <td>入离日期</td>
                    <td><p><span class="box-radius-5"><b class="fr" id="start_day_time">
                    </b> <em id="start_time"></em><br> <em id="start_week_time"></em></span>
                    <span class="box-radius-5"><b class="fr" id="end_day_time"></b> 
                    <em id="end_time"></em><br> <em id="end_week_time"></em></span>共 <em id="days"></em>
                        晚<br>最早入住时间：14:00<br>最晚退房时间：12:00</p></td>
                </tr>
                <tr>
                    <td>入住人1</td>
                    <td>姓名： <em id="customer1"></em><br>电话： <em id="customerPhone1"></em><br>身份证： <em id="customerCard1"></em>
                    </td>
                    <td>
                        <b class="add_people j_add_people" data-id="#i_modal" id="i_sheep1">编辑</b>
                    </td>
                </tr>
                <tr class="add_tab disnone">
                    <td>入住人2</td>
                    <td>
                    	姓名： <em id="customer2"></em><br>电话： <em id="customerPhone2"></em><br>身份证： <em id="customerCard2"></em>
                    </td>
                      <td>
                        <b class="add_people j_add_people i_sheep2" data-id="#i_modal" id="">编辑</b>
                    </td>
                </tr>
                   <tr class="add_tab">
                    <td>入住人2</td>
                    <td>
                        <span class="j_add_people add_modal box-radius-5 i_sheep2" id="" data-id="#i_modal">+</span>
                    </td>
                </tr>
               <!-- <tr>
                    <td></td>
                    <td><a class="box-radius-5" href="">完善个人资料</a></td>
                </tr> -->
            </table>
        </section>
        
        	 <!--免责条款-->
                <div class="mianze" style="display:block;margin:5px;">
                    <!--<hr/>-->
                    <span class="notice" style="color:black;font-size:12px;text-align:center;line-height:12px;">
                    	用户须知：本活动由房产所有人自愿提供并拥有最终决定权。Weshare仅在此前提下向用户提供活动信息免费分享服务，不对活动作任何保证或承担任何责任.
                    </span>
            </div>
            <!---->
        </div>
        <div class="vip_form vip_form2 disnone">
            <h3>我的秒杀码</h3>
            <table class="active">
                <tr><td class="td1">秒杀码</td><td class="td2">状态</td><td class="td3">使用期限</td><td class="td4">获得时间</td><td class="td5">备注</td></tr>
                <#if codes??>
                	<#list codes as code>
                		<tr><td>${code.code!}</td><td>${code.status!}</td>
                		<#if code.type=="当月使用" >
                		<td>${code.deadline?string("yyyy年MM月")}“度假屋秒杀”活动期间有效</td>
                		<#else>
                		<td>${code.deadline?string("yyyy年MM月dd日")}当日有效</td>
                		</#if>
                		<td>${code.createDate?string("yyyy-MM-dd HH:mm")}</td>
                		<td>仅限${code.deadline?string("M")}月“度假屋秒杀”活动使用</td></tr>
                	</#list>
                </#if>
            </table>
        </div>
        <div class="vip_form vip_form3 disnone">
           <h3>我的积分</h3>
           <div class="integral">
               <h4><span>积分概况</span></h4>
               <div class="integral_hd">
                   <img class="fl" src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/vip_03.png?v=0.0.1" alt=""/>
                   <p class="fl">总积分<br><span>${score!'0'}</span></p>

               </div>
                <h4 class="table_q"><span>积分增加记录</span><span class="on">积分消耗记录</span></h4>
               <table>
                    <tr><td>时间</td><td>变动原因</td><td>积分数</td><td>总积分</td></tr>
                    <#if inPointDetails??>
						<#list inPointDetails as item>
                    		<tr><td>${item.createDate?string("yyyy-MM-dd hh:mm")}</td><td>${item.summary!}</td><td>+${item.score!}</td><td>${score!'0'}</td></tr>
						</#list>
					</#if>
               </table>
               <table class="disnone">
                   <tr><td>时间</td><td>变动原因</td><td>积分数</td><td>总积分</td></tr>
			    	<#if outPointDetails??>
						<#list outPointDetails as item>
                    		<tr><td>${item.createDate?string("yyyy-MM-dd hh:mm")}</td><td>${item.summary!}</td><td>${item.score!}</td><td>${score!'0'}</td></tr>
						</#list>
					</#if>
               </table>
               <h4><span>积分说明</span></h4>
               <dl>
                   <dt>什么是积分？</dt>
                   <dd>积分是weshare用户在weshare中，根据特定的积分获取规则获得的奖励。weshare积分目前仅能在weshare各平台中使用。消费时，100积分相当于1元。</dd>
               </dl>
           </div>
        </div>
        <#if customer?? && customer.password??>
	        <div class="vip_form vip_form4 disnone">
	            <h3>修改密码</h3>
	            <form action="/website/customer/modifyPassword" id="">
	                <ul>
	                    <li><label for=""><span><em>*</em>原密码</span><input class="box-radius-5" type="password" data-title="原密码"  data-pass=""
	                                                                      data-reg="/^[A-Za-z0-9]{6,16}$/"
	                                                                      onblur="iserr($(this))" name="password"
	                                                                      placeholder="请输入原登录密码"
	                                                                      required/></label>&nbsp;<a href="/website/password" class="fr1">忘记原密码？</a><span></span></li>
	                    <li><label for=""><span><em>*</em>新密码</span><input class="box-radius-5 recheck" type="password" data-title="新密码"  data-pass=""
	                                                                      data-reg="/^[A-Za-z0-9]{6,16}$/"
	                                                                      onblur="iserr($(this))" name="newpassword"
	                                                                      placeholder="请输入新登录密码"
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
	            
	            <div class="box-radius-5 button">提交</div>
	        </div>
        <#else>
	        <div class="vip_form vip_form5 disnone">
	            <h3>设置密码</h3>
	            <form action="/website/customer/resetPassword" id="">
	                <ul>
	                    <li><label for=""><span><em>*</em>手机号</span><em class="vip_phone"><#if customer?? && customer.mobile?? && (customer.mobile?length=11)>${customer.mobile?substring(0,3)}****${customer.mobile?substring(7)}</#if>(注册手机号)</em>
	                    			<input type="hidden" name="username" value="<#if customer??>${customer.mobile!}</#if>"/>
	                    		</label></li>
	                    <li><label for=""><span><em>*</em>验证码</span><input class="box-radius-5" maxlength="4" data-title="验证码"
	                                                                       onblur="isnull($(this))" name="vercode" type="text"
	                                                                       placeholder="请输入短信验证码" required/>
	                           <b data-url="/website/customer/sendMsg" class="box-radius-5 getchecknode">获取短信验证码</b>
	                           </label><span class="show_msg"></span></li>
	                    <li><label for=""><span><em>*</em>密码</span><input class="box-radius-5 recheck" type="password" data-title="密码"  data-pass=""
	                                                                      data-reg="/^[A-Za-z0-9]{6,16}$/"
	                                                                      onblur="iserr($(this))" name="password"
	                                                                      placeholder="请输入6-16位字母、数字组成的登录密码"
	                                                                      required/></label><span></span></li>
	                    <li><label for=""><span><em>*</em>确认密码</span><input class="box-radius-5 recheck" data-pass=""
	                                                                        type="password" data-title="密码"
	                                                                        data-reg="/^[A-Za-z0-9]{6,16}$/"
	                                                                        onblur="isequl($(this))"
	                                                                        placeholder="请再次输入登录密码"
	                                                                        required/></label><span></span></li>
	                </ul>
	                <p>设置登录密码，您可以在不方便接收手机短信时，使用密码登录。</p>
	            </form>
	            
	            <!--错误信息显示域-->
            <span class="errMsg" style="display:block; padding-left:166px;line-height: 40px;"></span>
	            
	            <div class="box-radius-5 button">提交</div>
	        </div>
        </#if>
        </div>
    </section>
   <#include "/assets/website/common/coin.html">
</div>
<div class="modal" id="i_modal">
    <div class="modal_body">
        <div class="modal_header clearfix">
            <h3>编辑<span class="fr close">x</span></h3>
        </div>
        <div class="modal_content">
            <form action="" id="i_sheep_form">
                <div class="form_group">
                    <label for="">姓名：</label>
                    <input class="box-radius-5" type="text" data-title="姓名"
                           data-pass="" name="sleepName" id="i_name"
                           data-reg="/^([\u4E00-\u9FA5]+|[a-zA-Z]+)$/"
                           onblur="iserr($(this))"
                           placeholder="请输入姓名"
                           required/>
                </div>
                <div class="form_group">
                    <label for="">电话：</label>
                    <input  class="box-radius-5" type="text" data-title="电话"
                            data-pass="" name="sleepPhone" id="i_phone"
                            data-reg="/^[1][3578][0-9]{9}$/"
                            onblur="iserr($(this))"
                            placeholder="请输入电话"
                            required/>
                </div>
                <div class="form_group">
                    <label for="">身份证：</label>
                    <input class="box-radius-5" type="text" data-title="身份证"
                           data-pass="" name="sleepIdentity" id="i_identity"
                           data-reg="/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/"
                           onblur="iserr($(this))"
                           placeholder="请输入身份证号码"
                           required/>
                </div>
                <p style="color:red;font-size:12px;text-align:center; height:20px;" id="i_show_warn"></p>	
            </form>
        </div>
        <div class="modal_foot text_center">
            <b id="i_submit">确定</b>
            <b class="close">取消</b>
        </div>
    </div>
</div>
<#include "/assets/website/common/footer.html">
<script src="/assets/website/js/jq.js?v=0.0.1"></script>
<script src="/assets/website/js/address.js?v=0.0.1"></script>
<script>
	$("#i_sheep1").on('click',function(){
		$("#i_sheep_form input").val('');
		$("#i_show_warn").text('');
		$("#i_submit").data('type',1);
		$("#i_name").val($("#customer1").text());
		$("#i_phone").val($("#customerPhone1").text());
		$("#i_identity").val($("#customerCard1").text());		
	});
	$(".i_sheep2").on('click',function(){
		$("#i_sheep_form input").val('');
		$("#i_show_warn").text('');
		$("#i_submit").data('type',2);
		if(!$(this).hasClass('add_modal')){
			$("#i_name").val($("#customer2").text());
			$("#i_phone").val($("#customerPhone2").text());
			$("#i_identity").val($("#customerCard2").text());
		}else{
			$("#i_sheep_form input").val('');
		}
	});
	$("#i_submit").on('click',function(){
	    var data = $("#i_sheep_form").serialize();
	    var orderId = $("span#orderId").text();
	    $("#i_sheep_form input").blur();
	    if($("#i_sheep_form input").hasClass('on')){
	    	$("#i_show_warn").text('请正确填写信息!');
	    }else{
	    	if($(this).data('type')=='1'){
			$.post('/website/instantRush/saveSleep1?orderId=' + orderId,data,function(res){
				if(res.code == 200){
					$("#customer1").text($("#i_name").val());
					$("#customerPhone1").text($("#i_phone").val());
					$("#customerCard1").text($("#i_identity").val());
					_close();
				}else{
					$("#i_show_warn").text(res.message);
				}
			});
		}else{
			$.post('/website/instantRush/saveSleep2?orderId=' + orderId,data,function(res){
				if(res.code == 200){
					$(".add_tab").eq(0).show().siblings('.add_tab').hide();
					$("#customer2").text($("#i_name").val());
					$("#customerPhone2").text($("#i_phone").val());
					$("#customerCard2").text($("#i_identity").val());
					_close();
				}else{
					$("#i_show_warn").text(res.message);
				}
			});
		}
	    }
		
	});
	/**跳转到订单详情**/
	$(function(){
		var href = window.location.href;
		var anchor = href.substring(href.indexOf('?') + 1);
		if(anchor == 'anchor=orderDetail'){
			var url = '';
			<#if orders?? && orders?size gt 0>
				url = '/website/instantRush/orderDetail?orderId=${orders.get(0).id}';
			</#if>
			get_detail(url);
		} 
	});
	
    $('.center_main aside .vip_location').click(function(){
        $('.vip_location').removeClass('onit');
        $(this).addClass('onit');
    });
    
    $(function(){
    
    addressInit('province', 'city', 'area');
    var selYear = window.document.getElementById("selYear");
    var selMonth = window.document.getElementById("selMonth");
    var selDay = window.document.getElementById("selDay");
    var argu = new Array();
    argu[0] = selYear.getAttribute('data-name');
    argu[1] = selMonth.getAttribute('data-name');
    argu[2] = selDay.getAttribute('data-name');
    new DateSelector(selYear, selMonth, selDay, argu);
    
    
    //设置日期选中
    var cmbSelect = function(cmb, str)
    {
    	if(str==null || str==""){
    		cmb.selectedIndex = 0;
    	}else{
	        for(var i=0; i<cmb.options.length; i++)
	        {
	            if(cmb.options[i].value == str)
	            {
	                cmb.selectedIndex = i;
					$(cmb.options[i]).attr("selected","selected");
	                return;
	            }
	        }
    	}
    }
    
    var str = $(selYear).attr("data-name");
    if(str == null || str == '') str = '2015';
    cmbSelect(selYear,str);
    str = $(selMonth).attr("data-name");
    if(str == null || str == '') {
    	str = '1';
    }
    if(str.indexOf('0') == 0){
    	str = str.substring(1);
    }
    cmbSelect(selMonth,str);
    str = $(selDay).attr("data-name");
    if(str == null || str == '') {
    	str = '1';
	}
	if(str.indexOf('0') == 0){
    	str = str.substring(1);
    }
    cmbSelect(selDay,str);
    
    
     var vipModel = $('.vip_form'),vipId ;
    function vipLoad(obj){
        vipId = obj.data('id');
        $('.vip_form' + vipId).show().siblings('.vip_form').hide();
       vipModel.find('input').removeClass('on').reset();
    }
    $('.button').bind('click',function(){
        var curr_form = $(this).siblings('form');
        var inputs = curr_form.find('input');
        inputs.blur();
        if(!inputs.hasClass('on')){
        	if(curr_form.attr('id') == "vip_form0"){
        		var genderVal = $("input[type=radio]:checked").data('name');
        		if(genderVal!=null && genderVal!=""){
        			$('#cust_gender').val(genderVal);
        		}
        		var cbirthday,cyear=$('#selYear').val(),cmonth=$('#selMonth').val(),cday=$('#selDay').val();
        		if(cyear!=null && cyear!="" && cmonth!=null && cmonth!="" && cday!=null && cday!=""){
        			cbirthday = cyear+"-"+cmonth+"-"+cday;
        			$('#cust_birthday').val(cbirthday);
        		}
        		var cmbProvince = document.getElementById("province");
			    var cmbCity = document.getElementById("city");
			    var cmbArea = document.getElementById("area");
			    var cprovince, ccity, carea;
			    if(cmbProvince.selectedIndex > -1){
			    	cprovince = cmbProvince.options[cmbProvince.selectedIndex].value;
			    }
			    if(cmbCity.selectedIndex > -1){
			    	ccity = cmbCity.options[cmbCity.selectedIndex].value;
			    }
			    if(cmbArea.selectedIndex > -1){
			    	carea = cmbArea.options[cmbArea.selectedIndex].value;
			    }
        		if(carea!=null && carea!=""){
        			$('#parent').val(carea);
        		}else if(ccity!=null && ccity!=""){
        			$('#parent').val(ccity);
        		}else if(cprovince!=null && cprovince!=""){
        			$('#parent').val(cprovince);
        		}
        	}
    		$.ajax({
    			type:"post",
    			url:curr_form.attr('action'),
    			data:curr_form.serialize(),
    			async:true,
    			dataType:"json",
    			error:function(e){
    				alert("网络出错啦!");
    			},
    			success:function(data){
    				if(data != null){
    					if(data.code == 200){
    						showErrMsg(data.msg);
    						//var href = window.location.href;
    						//href = href.substring(0,href.indexOf('#'));
    						window.location.href = "/website/customer";
    					}else if(data.code == 400){
    						showErrMsg(data.msg);
    					}
    				}
    			}
    		});
       }
    });
    });
    function get_detail(url){
        $.get(url,function(res){
              var day_time = new Date();
              res.start = navigator.userAgent.toUpperCase().indexOf("FIREFOX")?res.start.replace(/-/g,'/'):res.start;
              res.end = navigator.userAgent.toUpperCase().indexOf("FIREFOX")?res.end.replace(/-/g,'/'):res.end;
              var start_day_time = parseInt(new Date(res.start).getDate()),
                  tart_hover_time = parseInt(new Date(res.start).getHours()),
                  start_week_time = getWeekis(new Date(res.start).getDay()),
	                start_time = res.start.slice(0, 7),
	                end_day_time = parseInt(new Date(res.end).getDate()),
	                end_hover_time = parseInt(new Date(res.end).getHours()),
	                end_week_time = getWeekis(new Date(res.end).getDay()),
	                end_time = res.end.slice(0, 7),
	                days = end_day_time - start_day_time;
	                $("#orderId").text(res.orderId);
	                $("#orderTime").text(res.orderTime);
	                $("#unit").text(res.unit);
	                $("#resort").text(res.resort);
	                $("#addr").text(res.addr);
	                $("#i_imgs_t").attr("src",res.img);
	                $("#phoneNumber").text(res.phoneNumber);
	                $("#start_day_time").text(start_day_time);
	                $("#start_time").text(start_time);
	                $("#start_week_time").text(start_week_time);
	                $("#end_day_time").text(end_day_time);
	                $("#end_time").text(end_time);
	                $("#end_week_time").text(end_week_time);
	                $("#days").text(days);
	                $("#customer1").text(res.sleep1Name == null ? '' : res.sleep1Name);
	                $("#customer2").text(res.sleep2Name == null ? '' : res.sleep2Name);
	                $("#customerPhone1").text(res.sleep1Phone == null ? '' : res.sleep1Phone);
	                $("#customerPhone2").text(res.sleep2Phone == null ? '' : res.sleep2Phone);
	                $("#customerCard1").text(res.sleep1Identity == null ? '' : res.sleep1Identity);
	                $("#customerCard2").text(res.sleep2Identity == null ? '' : res.sleep2Identity);
           if(res.has2){
               $(".add_tab").eq(0).show().siblings('.add_tab').hide();
           }else{
               $(".add_tab").eq(1).show().siblings('.add_tab').hide();
           }
            $('.vip_location').bind('click',function(){vipLoad($(this));});
            
            //tempfunc
            function vipLoad(obj){
		        vipId = obj.data('id');
		        $('.vip_form' + vipId).show().siblings('.vip_form').hide();
		       vipModel.find('input').removeClass('on').reset();
		    }
		    
        });
    }
     (function($){
        $.fn.extend({
            _modal: function(type){
                var show_box = $($(this).data('id'));
                if(type == 'show'){
                    show_box.fadeIn();
                    $("body").eq(0).css({"overflow":"hidden",'paddingRight':'20px'});
                }else if(type == 'hide'){
                    $("body").eq(0).css({"overflow":"scroll",'paddingRight':'0'});
                    show_box.fadeOut();
                }else if(type == 'modal'){
                    show_box.fadeToggle();
                }
                show_box.off({'click':_close}).on({'click':_close});
          
                $('.modal_body').on({'mouseover':function(){
                    show_box.off({'click':_close});
                },'mouseout':function(){
                    show_box.on({'click':_close});
                }});
            }
        });
    })(window.jQuery);
      function _close(e){
            $('.modal').fadeOut();
            $("body").eq(0).css({"overflow":"scroll",'paddingRight':'0'});
        }
    $('.j_add_people').on('click',function(){
       $(this)._modal('show');
    });
    $('.center_main aside .vip_location').click(function () {
        $('.vip_location').removeClass('onit');
        $(this).addClass('onit');
    });
      $('.close').off({'click':_close}).on({'click':_close});
    function getWeekis(num){
        switch (num){
            case 0:
                return '星期日';
                break;
            case 1:
                return '星期一';
                break;
            case 2:
                return '星期二';
                break;
            case 3:
                return '星期三';
                break;
            case 4:
                return '星期四';
                break;
            case 5:
                return '星期五';
                break;
            case 6:
                return '星期六';
                break;
            default:
                break;
        }
    }
</script>
</body>
</html></#escape>