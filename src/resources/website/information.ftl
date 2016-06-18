<!doctype html>
<#escape x as x?html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="Description" content=""/>
    <title>【Weshare资讯】Weshare我享度假新闻资讯_媒体报道_业内新闻</title>
    <style>
        .new_about img{margin:20px 100px;}
    </style>
</head>
<body>
	<#include "/assets/website/common/header.html">
<!--/*主体内容*/-->
<div class="wrap model_group help_model">
    <div class="wrap clearfix">
        <aside>
            	<#if titles??>
		            <h3>最新资讯</h3>
		            <ul>
	            		<#list titles?keys as key>
		                	<li data-id="${key!}">${titles.get(key)!}</li>
		                </#list>
		            </ul>
	            <#else>
	            	暂无内容
                </#if>
        </aside>
        
        	<#if titles??>
        		<#list titles?keys as key>
		        <div class="new_about <#if key_index != 0>disnone</#if>">
		        	
		        </div>
		        </#list>
        	</#if>
        
        <script>
        
        	//初始化第一页
        	$(function(){
        	   	var curr = $('.help_model aside li').eq(0);
        		var id = $(curr).attr("data-id");
            	var url = "/website/information/detail";
            	var param = "information.id=" + id;
				var index = 0;	
        		getContent(index,url,param);
        	});
        
        	function fill(index,content){
        		$('.new_about').eq(index).html("").append(content);
        	}
        	
        	//填充dom
        	function getContent(index,url,param){
        		var str = "";
        		$.get(url, param, function(result){
        			if(result.code == 200 && result.information != null){
        				str = '<h3>'
        				+ result.information.title
        				+ '</h3>';
        				if(result.information.informationDetails != null){
        					$(result.information.informationDetails).each(function(index,item){
        						str = str + '<p style="display:block;width=100px;word-break:break-all;">'
    									  + (item.content != null ? item.content : '')
        								  +	'</p>';
        								  
    									  if(item.defaultImage != null && item.defaultImage != ''){
        								  	   str += '<img title="Weshare我享度假最新报道" alt="Weshare我享度假资讯" src="' + item.defaultImage + '">';
        								  }		  
        					});
        				}
		           	 	fill(index,str);
        			}
        		});
        		
        	}
        	
            $('.help_model aside li').bind('click',function(){
               var i = $(this).index();
                $('.new_about').eq(i).show().siblings('.new_about').hide();
            });
            
            $('.help_model aside li').bind('click',function(){
            
            	var id = $(this).attr("data-id");
            	var url = "/website/information/detail";
            	var param = "information.id=" + id;
				var index = $(this).index(); 
            
            	var about = $('.new_about').eq($(this).index());
            	
            	if($(about).html() == null || $(about).html().indexOf('h3') == -1) {
	            	getContent(index,url,param);
            	}
        	});
        </script>
    </div>
    <div class="i_char">
        <ul class="tolist clearfix">
            <li>
                <div style='background-position:0 0;'></div>
                <p><span>价格实惠</span><br>比同等酒店价格更低</p>
            </li>
            <li>
                <div style='background-position:-64px 0;'></div>
                <p><span>居家体验</span><br>走到哪都有家的温馨</p>
            </li>
            <li>
                <div style='background-position:-128px 0;'></div>
                <p><span>金牌管家</span><br>为您提供全面度假服务</p>
            </li>
            <li>
                <div style='background-position:-192px 0;'></div>
                <p><span>另类投资</span><br>享受、投资两不误</p>
            </li>
        </ul>
    </div>
</div>
<#include "/assets/website/common/footer.html">
<script>
    $(function(){
        var aside_li = $('.help_model aside li'),aside_id,new_about = $('.new_about');
        aside_li.eq(0).addClass('on');
        aside_li.bind('click',function(){
           removeOn($(this));
           aside_id = $(this).index();
            //$.ajax();
       });
    });
</script>
</body>
</html></#escape>