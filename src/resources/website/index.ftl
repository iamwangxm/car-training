<!DOCTYPE html>
<#escape x as x?html><html>
<head>
<title>Weshare我享度假-中国首个分权度假共享换住平台</title>
</head>
<body >

	<#include "/assets/website/common/header.html">
    
    <div id="i_slideBox1" class="slideBox">
        <div class="hd">
            <ul>
            	<#if bannerList??>
		        	<#list bannerList as banner>
		        		<#if banner_index = 0>
		            		<li class="on"></li>
		            	<#else>
		            		<li class=""></li>
		            	</#if>
		            </#list>
	        	</#if>
        </div>
        <div class="bd">
            <ul>
	        	<#if bannerList??>
		        	<#list bannerList as banner>
		        		<#if banner_index = 0>
		            		<li style="display: list-item;"><a href="${banner.url!}" target="_blank"><img title="Weshare我享度假，中国分权度假平台" alt="Weshare我享度假" id="i_banner_fist" src="<@url value='${banner.image!}_1920x640' />"></a></li>
		            	<#else>
		            		<li style="display: none;"><a href="${banner.url!}" target="_blank"><img title="Weshare我享度假，中国分权度假平台" alt="Weshare我享度假" src="<@url value='${banner.image!}_1920x640'/>"></a></li>
		            	</#if>
		            </#list>
	        	</#if>
            </ul>
        </div>
        <a class="prev" href="javascript:void(0)"></a>
        <a class="next" href="javascript:void(0)"></a>
    </div>
    
    <div class="wrap model_group">
    	
    	<!--<section>
            <div id="i_show_videoss" class="video_sec">
                <img src="http://7xlovk.com2.z0.glb.qiniucdn.com/bainian.jpg">
            </div>
            <div id="i_full_video" class="fullscreen_video fullscreen_video_hide">
                <video id="i_bainian_video" src="http://7xlovk.com2.z0.glb.qiniucdn.com/bainian.mp4">
                        您的浏览器不支持 video 标签。
                </video>
                <div class="close_btn" id="i_close_video"><i></i></div>
            </div>
        </section>-->
    
        <section class='model1'>
            <hr/>
           <h2><i></i><span>热门城市<p class="index_dot"></p>随心换住</span><i></i></h2>
            <div class="city_list">
            	<#if scenicsList??>
					<#list scenicsList?chunk(5) as page>
						<ul>
							<#list page as scenic>
								<li>
									<a href='<@url value="/website/list?scenic.id=${scenic.id!}"/>'>
										<img title="Weshare我享度假，中国分权度假平台" alt="Weshare我享度假" src="<@url value="${scenic.squareLogo!}"/>">
									</a>
									<span>${scenic.name!}</span>
								</li>
							</#list>
						</ul>
					</#list>
				</#if>
            </div>
        </section>

        <section class='model2'>
            <hr/>
            <h2><i></i><span>人气度假屋<p class="index_dot"></p>超值认购</span><i></i></h2>
            <!--<fieldset class="little_title">为您精选世界各地的精品城市 供您选择，每个城市中一定会有适合您的度假产品</fieldset>-->
            <div class="i_content">
                <ul class="tolist clearfix">
                    <#if resortList??>
					<#list resortList as resort>
                    <li>
                        <a href='<@url value='/website/resort?resort.id=${resort.id!}'/>'>
                            <img src='<@url value='${resort.defaultImage!}_380x215' />' title="Weshare我享度假，中国分权度假平台" alt="Weshare我享度假"/>
                            <h4><#if resort.scenic??>${resort.scenic.name!}</#if> | ${resort.name!}</h4>
                            <fieldset>${resort.mainPromotion!}</fieldset>
                            <p>
    				        	<#if resort.tags??>
				                	<#list resort.tags as tag>
				                		<#if (tag_index lt 4)>
				                			<span>${tag!}</span>
				                		</#if>
				                	</#list>
			                	</#if>
                            </p>
                        </a>
                        <div class="price_detail">
                        	<#if resort.minUnitPrice??>
                        		<span class="price">${resort.minUnitPrice/10000}万起</span>/份
                        	<#else>
                        		待定
                        	</#if>
                        </div>
                    </li>
                    </#list>
                 </#if>
                </ul>
            </div>
            <div class="more box-radius-5"><span>查看更多</span><i class="iconfont">&#xe60d;</i></div>
        </section>
        <section class='model3'>
            <hr/>
            <h2><i></i><span>缤纷品类<p class="index_dot"></p>任你换住</span><i></i></h2>
            <fieldset class="little_title"></fieldset>
            <div class="mod_menu">
                <p>
				<#if featureList??>
                	<#list featureList as feature>
                		<#if (feature_index lt 8)>
                			<span class="list_bot" data-feature="${feature.getName()!}" ><i>${feature!}</i></span>
                		</#if>
                	</#list>
                </#if>
				</p>
            </div>
            <div class="i_content pr">
            	<div class="pr">
                <ul class="tolist clearfix pa">
                   <#if featureResortList??>
               			 <#list featureResortList as resort>
                    <li>
                        <a href='<@url value='/website/resort?resort.id=${resort.id!}'/>'>
                            <img src='<@url value="${resort.viceImage!}_380x215"/>' title="Weshare我享度假，中国分权度假平台" alt="Weshare我享度假"/>
                            <h4><#if resort.scenic??>${resort.scenic.name!}</#if> | ${resort.name!}</h4>
                            <fieldset>${resort.mainPromotion!}</fieldset>
                            <p>
    				        	<#if resort.tags??>
				                	<#list resort.tags as tag>
				                		<#if (tag_index lt 4)>
				                			<span>${tag!}</span>
				                		</#if>
				                	</#list>
			                	</#if>
                            </p>
                        </a>
                        <div class="price_detail">
                        	<#if resort.minUnitPrice??>
                        		<span class="price">${resort.minUnitPrice/10000}万起</span>/份
                        	<#else>
                        		待定
                        	</#if>
                        </div>
                    </li>
                    </#list>
                    </#if>
                </ul>
                </div>
                
             <a class="pa rig bots"><img src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/14.png?v=0.0.1" alt=""/></a>
             <a class="pa lef bots"><img src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/13.png?v=0.0.1" alt=""/></a>
                
            </div>
            
        </section>
       <#include "/assets/website/common/coin.html">
    </div>
    <div class="logo_banner">
        <div class="hezuo_title">合作品牌</div>
        <div id="i_slideBox2" class="slideBox2 slideBox">
            <div class="bd">
                <ul>
                    <li style="display:list-item;"><img src="/assets/website/images/logo1.jpg"></li>
                    <li style="display: none;"><img src="/assets/website/images/logo2.jpg"></li>
                    <li style="display: none;"><img src="/assets/website/images/logo3.jpg"></li>
                </ul>
            </div>
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)"></a>
        </div>
    </div>
   
   <div class="popup_opener" id="i_popup_opener">
        <img src="/assets/website/images/pop_open.png?v=0.02">
    </div>
    <div class="popup_adv" id="i_popup_adv">
        <div class="pop_box">
            <img src="/assets/website/images/pop.png?v=0.02">
            <div class="pop_close" id="i_pop_close"></div>
            <div class="download" id="i_download"></div>
        </div>
    </div>  
   
<#include "/assets/website/common/footer.html">
  <!-- <script src="/assets/website/js/jq.js"></script> -->
  <!-- <script src="/assets/website/js/common.js"></script> -->
  <script src="<@url value="/assets/website/js/slide.js"/>"></script>
     <script>
        //$("#i_slideBox1").slide({mainCell:".bd ul", autoPlay:true, interTime:4000}).on('slideover',
        //    function(){
        //        var images = new Array();
        //        <#if imageList??><#list imageList as i>images.push('${i!}');</#list></#if>
        //       $("#i_banner_fist").attr("src",images[Math.floor(Math.random()*3)]);
        //});
        $("#i_slideBox1").slide({mainCell:".bd ul", autoPlay:true, interTime:4000});    
        $("#i_slideBox2").slide({mainCell:".bd ul", autoPlay:false, interTime:4000});
     
     $('.model3 .mod_menu p span').eq(4).css('border','none');
        
     	 var list_bot = $('.model3 .list_bot'), list_i = 0, list_li = $('.model3 .i_content li'), list_len = list_li.length,
                list_ul = $('.model3 .i_content ul'), list_bots = $('.model3 .bots');
                
        list_bot.eq(0).addClass('on');
        hasBots(list_li);
        list_bot.bind('click',function(){
            removeOn($(this));
            var feature = $(this).attr('data-feature');
    		findByFeature(feature,$(this).parents("section.model3").find("div.i_content ul"));

    		
           	
        });
        $('.model3 .i_content .rig').bind('click',function(){
            if(list_i < (list_len - 3)){
                list_i++;
            }else{
                list_i = 0;
            }
            listMove();
        });
        $('.model3 .i_content .lef').bind('click',function(){
            if(list_i > 0 ){
                list_i--;
            }else{
                list_i = list_len - 3;
            }
            listMove();
        });
        /*列表移动*/
        function listMove(){
            list_ul.animate({'left': '-' + list_i * 400 + 'px'});
        }
        /*set bots*/
        function hasBots(obj){
            if(obj.length > 3){
                list_bots.show();
            }else{
                list_bots.hide();
            }
        }
         
   //ajax替换特色度假屋列表
   function findByFeature(feature,ul){
	  var url = "/website/list/condition";
	  param = "pageSize=6&feature=" + feature;
	  
	  $.ajax( {
		type : "GET",
		dataType : "json",
		url : url ,
		data : param,
		success : function(data){
			list_ul.html(genNode(data));
			    		list_i = 0;
            list_ul.css({'left': 0});
			list_li = $('.model3 .i_content li');
			hasBots(list_li); list_len = list_li.length;
			
		}
	  });
  }
 /*banner running*/
        var baner =  $(".i_banner"),
                obj_li = baner.find('li'),
                banner_line=$('.i_banner>p.pa'),
                bots = $('.i_banner .bots'),
                int_wid = $(document).width(),
                int_len = obj_li.length,
                int_s = 0,
                int_i = 0,
                on = 1,
                banner_bot,
                dif = 0;
        //set banner model
        for(;int_s < int_len; int_s++){
            obj_li.eq(int_s).css({"left": (int_s - 1) * int_wid});
        }
        for(var s = 0; s < int_len; s++){
            banner_line.append('<span></span>')
        }
        banner_bot = banner_line.find('span');
        banner_bot.eq(0).addClass('on');
        /*绑定左右点击事件*/
        $(".i_banner .rig").bind('click',rigclick);
        $(".i_banner .lef").bind('click',leftClick);
        /*set interval*/
        var banner_go = setInterval(banner_move, 5000);
        baner.mouseover(function(){
            clearInterval(banner_go);
            bots.stop(true,true).fadeIn();
        }).mouseleave(function(){
                    banner_go = setInterval(banner_move, 5000);
                    bots.stop(true,true).fadeOut();
                });
        /*banner right click*/
        function rigclick(){
            if(on == 1){
                obj_li.eq((int_i - 1) % int_len).css({"left": (int_len - 2) * int_wid + "px" });
                int_i++;
                obj_li.stop(true,true).animate({"left": "-=" + int_wid},1500,function(){
                    on = 1;
                });
                spanMove(int_i,int_len)
            }
            on = 0;
        }
        /*banner lef click*/
        function leftClick(){
            if(on == 1){
                obj_li.eq((int_i - 1) % int_len).css({"left": ( - 1) * int_wid + "px"});
                int_i+=int_len;
                int_i--;
                obj_li.stop(true,true).animate({"left": "+=" + int_wid},1500,function(){
                    on = 1;
                });
                spanMove(int_i,int_len)
            }
            on = 0;
            dif = 1;
        }
        /*banner_line span remove class*/
        function spanMove(int_i,int_len){
            banner_bot.eq((int_i) % int_len).addClass('on').siblings().removeClass('on');
        }
        //set banner move function
        function banner_move(){
            int_i++;
            spanMove(int_i,int_len);
            obj_li.animate({"left": "-=" + int_wid},1500,function(){
                obj_li.eq((int_i - 1) % int_len).css({"left": (int_len - 2) * int_wid + "px" });
            });
        }
        /*更多的点击方法*/
        $('.more').click(function(){
            $('.model2').toggleClass('on');
        });
		
		$(".pla").click(function(){
            //createTipsCeng1('请在登录后参加秒杀度假屋活动','确定');
        });
    </script>
    
 <script>
    
    //$(function(){
    	//$("section.model3 div.mod_menu p span").bind('click',function(){
    		//var feature = $(this).attr('data-feature');
    		//findByFeature(feature,$(this).parents("section.model3").find("div.i_content ul"));
    	//})
    //});
   
  
  //根据返回数据生成html节点
  function genNode(data){
	  var dom = "";
	  var list = data.resorts;
	  if(list == null){
		 return "";  
	  }
	  
	  $(list).each(function(index,item){
			var	temp = "<li>"
				+ "<a href='/website/resort?resort.id="+ item.id +"'>"
				+				"<img src='" + item.viceImage +	"_380x215' alt=''/>"
				+				"<h4>" + item.scenic.name + " | " + item.name + "</h4>"
				+				"<fieldset>"
				+ 				item.mainPromotion 
				+ 				"</fieldset>"
				+				"<p>" 
				+				addTags(item.tags)
				+				"</p>"
				+	"</a>"
                +	"<div class='price_detail'>"
                +		(item.minUnitPrice==null ? "待定" : ("<span class='price'>" + item.minUnitPrice/10000 + "万起</span>/份"))
                +	"</div>"
				+"</li>";
				dom += temp;
	  });
	  
	  return dom;
  }
  
  //添加度假屋标签
  function addTags(tags){
	  if(tags == null) return "";
	  
	  var tagSpan = "";
	  $(tags).each(function(index,item){
	  		if(index == 4)  return false;
			tagSpan += "<span>"+ item +"</span>";
	  })
	  
	  return tagSpan;
  }
  
	//视频展示
	function hideVideo(){
	    $("#i_full_video").addClass("fullscreen_video_hide");
	    document.getElementById("i_bainian_video").pause();
	}
	function showVideo(){
	    $("#i_full_video").removeClass("fullscreen_video_hide");
	    document.getElementById("i_bainian_video").currentTime=0;
	    document.getElementById("i_bainian_video").play();
	}
	$("#i_close_video").off('click',hideVideo).on('click',hideVideo);
	$("#i_show_videoss").off('click',showVideo).on('click',showVideo);
	
	if(window.localStorage.popClosed === "true"){
            $("#i_popup_adv").css("left", "-100%");
            $("#i_popup_opener").css("left", "0%");
        }else{
            $("#i_popup_adv").css("left", "0%");
            $("#i_popup_opener").css("left", "-100%");
        }
        $("#i_pop_close").on('click', function(){
            $("#i_popup_adv").css("left", "-100%");
            window.localStorage.popClosed = true;
            setTimeout(function(){
                $("#i_popup_opener").css("left", "0");
            }, 500);
        });
        $("#i_popup_opener").on('click', function(){
            $("#i_popup_opener").css("left", "-100%");
            window.localStorage.popClosed = false;
            setTimeout(function(){
                $("#i_popup_adv").css("left", "0%");
            }, 500);
        });
        $("#i_download").on('click', function(){
            window.open("http://a.app.qq.com/o/simple.jsp?pkgname=com.juren.ws");
        });
        
</script>
   
</body>
</html></#escape>