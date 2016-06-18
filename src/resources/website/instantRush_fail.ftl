<!DOCTYPE html>
<#escape x as x?html><html>
<head>
<link href="<@url value="/assets/website/11.1/css/activity.css?v=0.1.1"/>" type="text/css" rel="stylesheet" />
<title>Weshare我享度假</title>
</head>
<body ng-controller="Main">

<#include "/assets/website/common/header.html">


<div class="wrap clearfix detail-bg">
    <div class="userleft">
        <div class="userleft-inner">
        
        	<p style="font-size: 18px;padding-top:80px;">抱歉,您没有秒杀到，秒杀码已经失效。</p>
         <p> 请完善您的个人资料，<br/>
                获得本月所有剩余活动的<em>通用秒杀码</em>。</p>
        </div>
    </div>
    <div class="user-right">
        <div class="data-box">
            <h2>用户资料详情表 </h2>
            <div class="icon"></div>
            <form action="<@url value="/website/instantRush/fail_"/>" onsubmit="return check()" method="post">
            <div class="data-inner">
             <input type="hidden" name="profile.id" value="${(profile.id)!}">
               <div class="level-inner"><label for="user-name">姓名</label><input type="text" name="profile.name" value="${(profile.name)!}" id="user-name" class="usrname"></div>
				<div><label >性别</label><label for="male"><input name="profile.gender" type="radio" <#if profile?? && profile.gender?? && profile.gender='男'>checked</#if> value="MALE" id="male"/><em>男</em> </label><label for="female"><input <#if profile?? && profile.gender?? && profile.gender='女' >checked</#if> name="profile.gender" type="radio" value="FEMALE" id="female"/><em>女</em> </label></div>
                <div class="level-inner"><label for="person-id">身份证</label><input type="text" name="profile.idCard" value="${(profile.idCard)!}" id="person-id" class="person-id"></div>
                <div ><label >所在区域</label>
                     <select data-id="<#if (profile.region.parent.parent)??>${(profile.region.parent.parent.id)!}<#else>${(profile.region.parent.id)!}</#if>" name="profile.regionid" id="Select1">
                    </select>
                    <select data-id="<#if (profile.region.parent.parent)??>${(profile.region.parent.id)!}<#else>${(profile.region.id)!}</#if>" name="profile.regionid" id="Select2">
                    </select>
                    <select data-id="<#if (profile.region.parent.parent)??>${(profile.region.id)!}</#if>" name="profile.regionid" id="Select3">
                    </select>
                </div>
                <div class="user-tips">请确保您所填信息的准确度，以备入住时候的核对。</div>
                <button>获得通用预订码</button>
                <!--<button>获得通用预订码</button>-->
</form>
            </div>
        </div>
    </div>
</div>

<#include "/assets/website/common/footer.html">
<script src="<@url value="/assets/website/js/address.js?v=0.1.1"/>"></script>
<script>
    
</script>
<script src="<@url value="/assets/website/11.1/js/common.js?v=0.1.1"/>"></script>

<script>
var regexp=/^1\d{10}$/; //1开头 11位
function check(){
	var gender=$('input:radio[name="profile.gender"]:checked').val();
	
	var r=true;; 
	if(!$("#user-name").val()){
		r=false;
		alert("姓名不能为空")
	}else if(!gender){
		r=false;
		alert("性别不能为空")
	}else if(!$("#person-id").val()){
		r=false;
		alert("身份证不能为空")
	}else if($("#person-id").val().length!=15 && $("#person-id").val().length!=18){
		r=false;
		alert("身份证格式错误")
	}
	
	return r;
}


<#if (profile.region.parent.parent)??>
addressInit('Select1','Select2', 'Select3',${profile.region.parent.parent.id},${profile.region.parent.id},${profile.region.id});

<#elseif (profile.region.parent)??  >
addressInit('Select1','Select2', 'Select3',${profile.region.parent.id},${profile.region.id});

<#else>
addressInit('Select1','Select2', 'Select3');
</#if>

</script>

</body>
</html></#escape>