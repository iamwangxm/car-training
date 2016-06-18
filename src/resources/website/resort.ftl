<!DOCTYPE html>
<#escape x as x?html><html>
<head>
<title>我享度假屋详情页</title>
</head>
<body >
	
	<#include "/assets/website/common/header.html">
	<div class="messageBox"><span>${msg!}</span></div>
	  
    <!--/*主体内容*/-->
    <div class="wrap model_group">
        <!--/*内容头部*/-->
        <div class="hd_detail">
            <p>
                <span><a href='<@url value='/website/index'/>'>Weshare首页 > </a></span>
                <#if resort?? && resort.scenic??>
                <span><a href='<@url value='/website/list?scenic.id=${resort.scenic.id!}'/>'>${resort.scenic.name!}度假屋 ></a></span>
                </#if>
                <span><#if resort??>${resort.name!}</#if></span>
                <span class="fr pr">
                    <em class="bdsharebuttonbox"><i class="iconfont icon-fenxiang1"></i>分享</em>
                    <b class="pa">
                        <span>分享到微信</span>
                        <b>用微信"扫一扫"扫描二维码<br><em>将心爱的度假屋分享给好友吧</em></b>
                        <img src="http://qr.liantu.com/api.php?w=150&text=<@url value="${baseUrl}/weshare/resort?resort.id=${resort.id}"/>" alt=""/>
                    </b>
                </span>
            </p>
        </div>
        
        
        <script>
            $('.hd_detail span.pr').hover(function(){
                $(this).find('.pa').css({'display':'block'});
            },function(){
                $(this).find('.pa').css({'display':'none'});
            });
        </script>
        <section class="pro_detail clearfix">
            <aside class="fl">
                <!--/*显示大图*/-->
                <div class="big_map pr">
                	<a class="rig bots"><img src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/14.png?v=0.0.1" alt=""/></a>
                    <a class="lef bots"><img src="http://7xlovk.com2.z0.glb.qiniucdn.com/upload/website/images/13.png?v=0.0.1" alt=""/></a>
                    <img src='<#if resort??><@url value="${resort.viceImage!}_680x425"/></#if>' alt=""/>
                    <p class="pa"><span></span></p>
                </div>
                <!--/*图片列表*/-->
                <div class="pro_list pr">
                    <ul class="pa">
                    <li><img src='<@url value="${resort.viceImage!}_680x425" />'  data-msg='' alt=""/></li>
                    <#if resort?? && resort.photos??>
                      <#list resort.photos as photo>
                       	 <li><img src='<@url value="${photo.url!}_680x425" />'  data-msg='' title="${photo.title!}" alt="${photo.alt!}"/></li>
                       </#list>
                    </#if>
                    </ul>
                    <article>
                        <button class="pro_rig"><</button>
                        <button class="pro_lef">></button>
                    </article>
                </div>
            </aside>
            <!--/*详情简介*/-->
            <#if resort??>
            <aside class="fr">
                <hgroup>
                    <h2><#if resort.scenic??>${resort.scenic.name!}</#if>| ${resort.name!}</h2>
                    <h3>${resort.mainPromotion!}</h3>
                    <h3 style="position:relative;">
	                    <span class="price_for_detail">
		                    <#if resort.minUnitPrice??>
		                    	${resort.minUnitPrice/10000}万起/份
		                	<#else>
		                		待定
		                	</#if>
	                	</span>
                        <a href="<@url value='${giftUrl!}'/>" target="_blank"><img class="libao_btn" src="/assets/website/images/libao_btn.gif"></a>
                	</h3>
                    <h4>
            			<#if resort.tags??>
		                	<#list resort.tags as tag>
	                			<span class="box-radius-5 span${tag_index!}">${tag!}</span>
		                	</#list>
	                	</#if>
                    </h4>
                    
                </hgroup>
                <dl>
                    <dt>整体规划</dt>
                    <dd>${resort.summary!}</dd>
                    <dt>项目亮点</dt>
                    <dd>${resort.coreAdvantage!}</dd>
                    <dt>项目地址</dt>
                    <dd>${resort.address!}</dd>
                </dl>
                <div class="phone_online"><i class="iconfont">&#xe610;</i><span><#if resort.phoneNumber?? && resort.phoneNumber != ''>${resort.phoneNumber!}<#else>400-090-6655</#if></span></div>
            </aside>
            </#if>
        </section>
        <!--/*内容详情*/-->
        <#if resort??>
        <section class="pro_content clearfix pr">
            <ul class="detail_menu">
                <li>项目介绍</li>
                <li>周边攻略</li>
                <li>房型详情</li>
            </ul>
            <div class="detail_content">
                
                <!--<ul class="mod model_map">-->
				<ul class="mod model_preject">
											<li class="clearfix">
                        <div class="fl list_title">
                           		 项目参数
                            <i class="iconfont">&#xe602;</i>
                        </div>
                        
                        <article>
                            <table>
                                <tr>
                                    <td>类型</td>
                                    <td>${resort.buildingType!}</td>
                                </tr>
                                <tr>
                                    <td>开发商</td>
                                    <td>${resort.developer!}</td>
                                </tr>
                                <tr>
                                    <td>产权年限</td>
                                    <td>${resort.propertyYear!}&nbsp;<#if '${resort.propertyYearDesc!}' != ''>(${resort.propertyYearDesc!})</#if></td>
                                </tr>
                                <tr>
                                    <td>主力户型</td>
                                    <td>${resort.mainLayout!} </td>
                                </tr>
                            </table>
                        </article>
                    </li>
                    
                    <li>
                        <fieldset>
                            <h4>${resort.name!}</h4>
                            <p><@includePage path="/summary?id=${resort.id!}"/></p>
                        </fieldset>
                    </li>
                
                
                	<li class="clearfix" data-cla="block">
                        <div class="fl list_title">
                        	地理位置
                            <i class="iconfont icon-weibiaoti1"></i>
                        </div>
                        
                        <#if resortIntroList??>
                        <#list resortIntroList as resortDetail>
                        	<#if resortDetail?? && resortDetail.title == '地理位置'>
	                        <article>
	                            <#if resortDetail.viceTitle?? && resortDetail.viceTitle != '' > <h4>${resortDetail.viceTitle!}</h4> </#if>
	                            <#if resortDetail.url?? && resortDetail.url != ''>
	                            <img src="<@url value="${resortDetail.url!}_640x480" />" title="${resortDetail.imgTitle!}" alt="${resortDetail.imgAlt!}" data-bd-imgshare-binded="1">
	                            </#if>
	                            <#if resortDetail.url??><p class="map_msg pr"></p></#if>
	                            <p>${resortDetail.introduction!}</p>
	                        </article><br/><br/>
	                        </#if>
                        </#list>
                        </#if>
                    </li>
                    
                    <li class="clearfix" data-cla="block">
                        <div class="fl list_title">
                        	整体规划
                            <i class="iconfont icon-changdiguihua"></i>
                        </div>
                        
                         <#if resortIntroList??>
                        	<#list resortIntroList as resortDetail>
	                        	<#if resortDetail?? && resortDetail.title == '整体规划'>
			                        <article>
			                            <#if resortDetail.viceTitle?? && resortDetail.viceTitle != '' > <h4>${resortDetail.viceTitle!}</h4> </#if>
			                            <#if resortDetail.url?? && resortDetail.url != ''>
			                            <img src="<@url value="${resortDetail.url!}_640x480" />" title="${resortDetail.imgTitle!}" alt="${resortDetail.imgAlt!}" data-bd-imgshare-binded="1">
			                            </#if>
			                            <#if resortDetail.url??><p class="map_msg pr"></p></#if>
			                            <p>${resortDetail.introduction!}</p>
			                        </article><br/><br/>
		                        </#if>
                        	</#list>
                        </#if>
                    </li>
                    
                    <li class="clearfix" data-cla="block">
                        <div class="fl list_title">
                        	配套设施
                            <i class="iconfont icon-changdiguihua"></i>
                        </div>
                        
                         <#if resortIntroList??>
                        	<#list resortIntroList as resortDetail>
	                        	<#if resortDetail?? && resortDetail.title == '配套设施'>
			                        <article>
			                            <#if resortDetail.viceTitle?? && resortDetail.viceTitle != '' > <h4>${resortDetail.viceTitle!}</h4> </#if>
			                            <#if resortDetail.url?? && resortDetail.url != ''>
			                            <img src="<@url value="${resortDetail.url!}_640x480" />" title="${resortDetail.imgTitle!}" alt="${resortDetail.imgAlt!}" data-bd-imgshare-binded="1">
			                            </#if>
			                            <#if resortDetail.url??><p class="map_msg pr"></p></#if>
			                            <p>${resortDetail.introduction!}</p>
			                        </article><br/><br/>
		                        </#if>
                        	</#list>
                        </#if>
                    </li>
                    
                    <li class="clearfix" data-cla="block">
                        <div class="fl list_title">
                        	度假配套
                            <i class="iconfont icon-changdiguihua"></i>
                        </div>
                        
                         <#if resortIntroList??>
                        	<#list resortIntroList as resortDetail>
	                        	<#if resortDetail?? && resortDetail.title == '度假配套'>
			                        <article>
			                            <#if resortDetail.viceTitle?? && resortDetail.viceTitle != '' > <h4>${resortDetail.viceTitle!}</h4> </#if>
			                            <#if resortDetail.url?? && resortDetail.url != ''>
			                            <img src="<@url value="${resortDetail.url!}_640x480" />" title="${resortDetail.imgTitle!}" alt="${resortDetail.imgAlt!}" data-bd-imgshare-binded="1">
			                            </#if>
			                            <#if resortDetail.url??><p class="map_msg pr"></p></#if>
			                            <p>${resortDetail.introduction!}</p>
			                        </article><br/><br/>
		                        </#if>
                        	</#list>
                        </#if>
                    </li>
                
			</ul>
                <!--</ul>-->
                
                <ul class="mod model_raider disnone">
                
                	<li class="clearfix" data-cla="block">
                        <div class="fl list_title">
                        	玩什么
                            <i class="iconfont icon-weibiaoti1"></i>
                        </div>
                        
                        <#if resortRecomList??>
                        <#list resortRecomList as resortDetail>
                        	<#if resortDetail?? && resortDetail.title == '玩什么'>
	                        <article>
	                            <#if resortDetail.viceTitle?? && resortDetail.viceTitle != '' > <h4>${resortDetail.viceTitle!}</h4> </#if>
	                            <#if resortDetail.url?? && resortDetail.url != ''>
	                            <img src="<@url value="${resortDetail.url!}_640x480" />" title="${resortDetail.imgTitle!}" alt="${resortDetail.imgAlt!}" data-bd-imgshare-binded="1">
	                            </#if>
	                            <#if resortDetail.url??><p class="map_msg pr"></p></#if>
	                            <p>${resortDetail.introduction!}</p>
	                        </article><br/><br/>
	                        </#if>
                        </#list>
                        </#if>
                    </li>
                    
                    <li class="clearfix" data-cla="block">
                        <div class="fl list_title">
                        	吃什么
                            <i class="iconfont icon-changdiguihua"></i>
                        </div>
                        
                         <#if resortRecomList??>
                        	<#list resortRecomList as resortDetail>
	                        	<#if resortDetail?? && resortDetail.title == '吃什么'>
			                        <article>
			                            <#if resortDetail.viceTitle?? && resortDetail.viceTitle != '' > <h4>${resortDetail.viceTitle!}</h4> </#if>
				                            <#if resortDetail.url?? && resortDetail.url != ''>
				                            <img src="<@url value="${resortDetail.url!}_640x480" />" title="${resortDetail.imgTitle!}" alt="${resortDetail.imgAlt!}" data-bd-imgshare-binded="1">
				                            </#if>
			                           <#if resortDetail.url??><p class="map_msg pr"></p></#if>
			                            <p>${resortDetail.introduction!}</p>
			                        </article><br/><br/>
		                        </#if>
                        	</#list>
                        </#if>
                    </li>
                    
                </ul>
                
                <ul class="mod model_show disnone">
                	<#if cottageList?? && (cottageList.size() > 0) >
        				<li class="clearfix" data-cla="block">
                        <div class="fl list_title">
                            		户型相册
                            <i class='iconfont icon-icon22'></i>

                        </div>
		        			<#list cottageList as cottage>
		                        <article id="xm${cottage_index+1!}">
		                            <h4>${cottage.name!}</h4>
		                            <#list cottage.photos as photo>
		                            	<img src="<@url value="${photo.url!}_640x480" />" title="${photo.title!}" alt="${photo.alt!}" data-bd-imgshare-binded="1">
		                            </#list>
		                            <p class="map_msg pr"></p>
		                            <p>${cottage.introduce!}</p>
		                        </article><br/><br/>
		            		</#list>

                    </li>
            		</#if>
                </ul>
                
            </div>
            <aside class="aside_fix pa">
                	<#if cottageList?? && (cottageList.size() > 0)>
                <h3>户型图</h3>
                <ul>
        			<#list cottageList as cottage>
						<li class="pr">
                        <a href='#xm${cottage_index+1!}'>
                            <h4>${cottage.name!} <span> ${cottage.area!}</span></h4>
                            <img src='<@url value="${cottage.defaultImage!}_640x480"/>' alt=""/>
                            <span class="pa iconfont">&#xe607;</span>
                        </a>
                    	</li>
            		</#list>
                </ul>
             		</#if>
            </aside>
        </section>
        </#if>
        <#if resortList?? && (resortList.size() > 0)>
        <section class='model5'>
        <h3>同城度假屋</h3>
        <div class="i_content">
        	
				<#list resortList?chunk(3) as page>
		            <ul class="tolist clearfix">
		            	<#if page??>
		            		<#list page as resort>
		            			<#if resort??>
		            				<li>
					                    <a href='/website/resort?resort.id=${resort.id!}'>
					                        <img src='${resort.defaultImage!}_380x215' alt=""/>
					                        <h4><#if resort.scenic??>${resort.scenic.name!}</#if> | ${resort.name!}</h4>
					                        <fieldset>${resort.viceName!}</fieldset>
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
					                </li>
					            </#if>
					        </#list>
					    </#if>
		            </ul>
	            </#list>
          
	        </div>
	    </section>
      </#if>
      
       <#if seenResortList?? && (seenResortList.size() > 0)>
        <section class='model5'>
        <h3>看过此度假屋的人还看过</h3>
        <div class="i_content">
        	
				<#list seenResortList?chunk(3) as page>
		            <ul class="tolist clearfix">
		            	<#if page??>
		            		<#list page as resort>
		            			<#if resort??>
		            				<li>
					                    <a href='/website/resort?resort.id=${resort.id!}'>
					                        <img src='${resort.defaultImage!}_380x215' alt=""/>
					                        <h4><#if resort.scenic??>${resort.scenic.name!}</#if> | ${resort.name!}</h4>
					                        <fieldset>${resort.viceName!}</fieldset>
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
					                </li>
					            </#if>
					        </#list>
					    </#if>
		            </ul>
	            </#list>
          
	        </div>
	    </section>
      </#if>
      <#include "/assets/website/common/coin.html">
    </div>
<#include "/assets/website/common/footer.html">
    
    <script>
    	/*去除内容为空的板块*/
    	$(function(){
    		var block = $("li[data-cla='block']");
    		for(var i=0; i < block.length; i++){
    			if(!$(block[i]).find("article").length > 0 ){
    				$(block[i]).hide();
    			}
    		}
    	});
    </script>
    
    <script>
            /*详情页图片显示*/
            var show_map = $('.big_map'),big_map = show_map.children('img'),run_map = $('.pro_list ul'),list_li = run_map.find('li'),
                map_msg = show_map.find('.pa span'), i = 0, len = list_li.length, bots = show_map.find('.bots'),k = 0;
            seton(0);
            show_map.bind({'mouseover':function(){
                bots.stop(true,true).fadeIn();
               },'mouseleave':function(){
                bots.stop(true,true).fadeOut();
            }});
            bots.eq(0).bind('click',listLef);
            bots.eq(1).bind('click',listRig);
            list_li.bind('click',function(){
                k = $(this).index();
                i = k > (len - 5) ? (len -5) : k;
                listMove(i);
                seton(k);
                if(i>(k-2)){
                    if(i > 0){i--;}
                    listMove(i);
                }
            });
            $('.pro_lef').bind('click',listLef);
            $('.pro_rig').bind('click',listRig);
            function listRig(){
                if(i > 0){i--;}
                if(k > 0){k--;}
                listMove(i);
                seton(k);
            }
            function listLef(){
                if(i < (len - 5)){i++;}
                if(k < (len - 1)){k++;}
                listMove(i);
                seton(k);
            }
            function listMove(a){
                run_map.clearQueue().animate({'left':'-' + 120*a + 'px'});
            }
            function seton(b){
                list_li.eq(b).addClass('on').siblings().removeClass('on');
                mapShow(b);
            }
            function mapShow(a){
                big_map.prop('src',(list_li.eq(a).find('img').attr('src')));
                map_msg.text((a+1) + '/' + len);
            }
              /*详情内容控制*/
            var detail_menu = $('.pro_content .detail_menu li'), index_menu = 0, detail_mod = $('.pro_content .detail_content .mod');
            var fix_obj = $('.pro_content .aside_fix'), fix_top = fix_obj.offset().top, scroll_top = 0,pro_content = $('.pro_content '),doc_top = pro_content.offset().top + pro_content.height(),
                aside_li = fix_obj.find('li'),bottom_h = 620;
            detail_menu.eq(0).addClass('on');
            detail_menu.on('click',function(){
                $(this).addClass('on').siblings().removeClass('on');
                index_menu = $(this).index();
                detail_mod.eq(index_menu).show().siblings().hide();
            });
            /*详情右浮块控制*/
            $(window).scroll(function(){
                scroll_top = $(document).scrollTop();
               if( scroll_top > fix_top && scroll_top <(doc_top - bottom_h)){
                   fix_obj.clearQueue().animate({'top':(scroll_top - fix_top)});
               }else{
                   fix_obj.clearQueue().animate({'top':0});
               }
            });
        window.onload = function(){
            doc_top = pro_content.offset().top + pro_content.height();
            console.log(doc_top);
        }

    </script>
</body>
</html></#escape>