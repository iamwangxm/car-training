<!DOCTYPE html>
<#escape x as x?html>
<html>
<head>
    <title>【分权度假屋】度假别墅_酒店式公寓_花园洋房_海景别墅_沙滩别墅_森林别墅-Weshare我享度假</title>
</head>

<body>
<#include "/assets/website/common/header.html">

<div class="wrap model_group">
    <div class="list-top" id="list">
        <ul class="breadcrumb">
            <li><a href="/website/index">Weshare首页</a><span class="divider">></span></li>
            <li class="active">
            	<#if keyword?? && keyword?size gt 0>
            		<span>搜索关键词“${keyword!}”</span>
            	<#else>
            		<span>分权度假屋</span>
            	</#if>
            </li>
        </ul>
        <div class="easyset-box">
            <div class="has-select"><span>您已选择：</span>
            </div>
            
          
           
            <div class="easyset-row j_city"><span class="city_label">城市：</span>
            	<span  class="select-no">
                	<a href="javascript:void(0);" data-id="city">不限</a>
                </span>
                <span class="select">
	                <#if scenics??>
	                	<#list scenics as scenic>
	                		<#if scenic?? && scenic_index lt 23>
	                			<a href="javascript:void(0);" data-id="city" data-name="${scenic.id!}">${scenic.name!}</a>
	                		</#if>
	                	</#list> 
	                </#if>
            	</span>
            </div>
           
           <#if scenics?? && scenics?size gt 22>
            <div class="easyset-row j_city">
                <span class="select">
	                <#if scenics??>
	                	<#list scenics as scenic>
	                		<#if scenic?? && scenic_index gt 22>
	                			<a href="javascript:void(0);" data-id="city" data-name="${scenic.id!}">${scenic.name!}</a>
	                		</#if>
	                	</#list>
	                </#if>
            	</span>
            </div>
          </#if>
            
      
            
            <div class="easyset-row j_special"><span class="city_label">特色：</span>
            	<span class="select-no">
                	<a  href="javascript:void(0);" data-id="spe">不限</a>
                </span>
                <span class="select">
	                <#if data?? && data.features??>
	                	<#list data.features as feature>
	                		<#if feature??>
	                			<a href="javascript:void(0);" data-id="spe" data-name="${feature.getName()!}">${feature.getDisplayName()!}</a>
	                		</#if>
	                	</#list>
	                </#if>
            	</span>
            </div>
            <div class="easyset-row j_type"><span class="city_label">类型：</span>
            	<span class="select-no">
                	<a href="javascript:void(0);" data-id="type">不限</a>
                </span>
                <span class="select">
	                <#if data?? && data.types??>
	                	<#list data.types as type>
	                		<#if type??>
	                			<a href="javascript:void(0);" data-id="type" data-name="${type.getName()!}">${type.getDisplayName()!}</a>
	                		</#if>
	                	</#list>
	                </#if>
            	</span>
            </div>
        </div>
        <ul class="sort">
            <li style="cursor:default;">排序:</li><li data-order="RECOMMEND" class="list-order active">推荐</li><li data-order="NEWEST" class="list-order">最新</li><li class="count-span"><span>${totalCount!'0'}</span>个度假屋符合条件</li>
        </ul>
    </div>
    <ul class="list-con clearfix">
    	<#if resorts??>
			<#list resorts as resort>
				<#if resort??>
			        <li>
			         <a href='/website/resort?resort.id=${resort.id!}'>
			        <div class="liL" ><img src='${resort.viceImage!}_480x298' title="分权度假屋-Weshare我享度假" alt="分权度假屋"/></div>
			           
			                <div class="liR">
			                    <h2><#if resort.scenic??>${resort.scenic.name!}</#if> | ${resort.name!}</h2>
			                    <p class="des-title">${resort.viceName!}</p>
			                    <div class="price_for_detail2">
				                    <#if resort.minUnitPrice??>
				                    	${resort.minUnitPrice/10000}万起/份
				                	<#else>
				                		待定
				                	</#if>
			                	</div>
			                    <#if resort.tags??>
				                	<#list resort.tags as tag>
				                		<span class="box-radius-5 span${tag_index}">${tag!}</span>
				                	</#list>
			                	</#if>
			                    <p class="des">${resort.coreAdvantage!}</p>
	                </div>
			            </a>
			        </li>
			    </#if>
			</#list>
		</#if>
    </ul>
    <div class="list-more">
    	<span data-pageno="${pageNo!}" data-pagesize="${pageSize!}">
    		<#if resorts?? && resorts?size gt 0>
    			<#if resorts?size gt 2>点击加载更多<#else>没有更多了</#if>
    		<#else>
    			很抱歉，暂时没有符合条件的度假屋。<br/>您可以更改条件重新搜索。
    		</#if>
    	</span>
    </div>
    <section class='model5'>
        <h3>推荐度假屋</h3>
        <div class="i_content">
        	<#if recomResorts??>
				<#list recomResorts?chunk(3) as page>
		            <ul class="tolist clearfix">
		            	<#if page??>
		            		<#list page as resort>
		            			<#if resort??>
		            				<li>
					                    <a href='/website/resort?resort.id=${resort.id!}'>
					                        <img src='${resort.defaultImage!}_380x215' title="分权度假屋-Weshare我享度假" alt="分权度假屋"/>
					                        <h4><#if resort.scenic??>${resort.scenic.name!}</#if> | ${resort.name!}</h4>
					                        <fieldset>${resort.viceName!}</fieldset>
					                        <p>
					                        	<#if resort.tags??>
								                	<#list resort.tags as tag>
								                		<span>${tag!}</span>
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
					            </#if>
					        </#list>
					    </#if>
		            </ul>
	            </#list>
            </#if>
        </div>
    </section>
<#include "/assets/website/common/coin.html">
</div>
<#include "/assets/website/common/footer.html">
<script>
    $(function(){
		var conditions = {
			keyword: '${keyword!}',
			scenic: {id: '<#if scenic??>${scenic.id!}</#if>'},
			featureTypes: new Array(),
			resortTypes: new Array(),
			order: '',
			pageNo: '',
			pageSize: ''
		};
        var  selected = $('.has-select'), topSelect, attr = '城市', ele, html,clear, id, name,
             clear_html = '<span class="clear-select">清空</span>',selectNo = $('.select-no'),
             select =  $('.select a');
        var load_span = $('.list-more>span');
        selectNo.find('a').addClass('on');
        select.click(function(){
            id = $(this).data('id');
            name = $(this).data('name');
            ele = $(this).text();
            if(id == 'city'){
            	topSelect = $(".j_city").find('span');
           	}else{
           		topSelect = $(this).parents('.easyset-row').find('span');
           	}
            attr = topSelect.eq(0).text().slice(0,2);
            /*单选模块*/
            html = '<span class="hasbeen-select '+ name + ' '+ id + '"><a href="javascript:void(0);" data-name='+ name +'>' +
                    '<span>' + attr + '</span><span class="type_name">'+ ele +'</span>x</a></span>';
            /*多选模块*/
            htmls = '<span class="hasbeen-select '+ name + ' '+ id + '"><a href="javascript:void(0);" data-name='+ name +'>' +
                    '<span>' + attr + '</span><span class="type_name">'+ ele +'</span>x</a></span>';
            $(this).addClass(name );
            if(id == 'city'){
                if($(this).hasClass('on')){
                    $('.'+ name).eq(0).remove();
                    $(this).removeClass('on');
            		conditions.scenic.id = "";
                }else{
                	$(".j_city").find("a").removeClass("on");
                    $(this).addClass('on');
                    $('.city').remove();
                    selected.append(html);
            		conditions.scenic.id = name;
                }
            }else{
                if($(this).hasClass('on')){
                    $('.'+ name).eq(0).remove();
		            var index;
		            if(id == 'spe'){
	            		index = $.inArray(name, conditions.featureTypes);
	                	if(index > -1){
	                		conditions.featureTypes.splice(index, 1);
	                	}
		            }else if(id == 'type'){
	            		index = $.inArray(name, conditions.resortTypes);
	                	if(index > -1){
	                		conditions.resortTypes.splice(index, 1);
	                	}
		            }
                }else{
                	selected.append(htmls);
	                if(id == 'spe'){
	                	if($.inArray(name, conditions.featureTypes) == -1){
	                		conditions.featureTypes.push(name);
	                	}
	                }else if(id == 'type'){
	                	if($.inArray(name, conditions.resortTypes) == -1){
	                		conditions.resortTypes.push(name);
	                	}
	                }
                }
                $(this).toggleClass('on');
            }
            initListData();
            topSelect.eq(1).find('a').removeClass('on');
            $('.hasbeen-select a').bind('click',selectMove);
            isSetSelect();
            isselect();
            clear = $('.clear-select');
            clear.bind('click',clearSelect);
            selectNo.bind('click',noSelect);
            nochoose();
        });
        
	    load_span.bind('click',function(){
	    	var page = $(this);
	    	var pageNo = page.data('pageno');
	    	var pageSize = page.data('pagesize');
	    	if(pageNo != null && pageSize !=null){
	    		conditions.pageNo = pageNo+1;
	    		conditions.pageSize = pageSize;
	    		page.data('pageno', pageNo+1);
	    		load_span.text("正在加载");
	    		$.ajax({
	    			type:"get",
	    			url:"/website/list/condition",
	    			data:conditions,
	    			async:true,
	    			dataType:"json",
	    			error:function(e){
	    				//alert("网络出错啦！")
	    				load_span.text("点击加载更多");
	    			},
	    			success:function(result){
	    				var data = result;
	    				if(data != null){
	    					var totalCount = data.totalCount;
	    					var resorts = data.resorts;
	    					appendListDom(resorts);
	    					if(resorts.length < 3){
	    						load_span.text("没有更多了");
	    					}else{
	    						load_span.text("点击加载更多");
	    					}
	    				}else{
	    					load_span.text("点击加载更多");
	    				}
	    			}
	    		});
	    	}
	    });
	    /*排序*/
	    $('ul.sort .list-order').bind('click',function(){
	    	if(!$(this).hasClass('active')){
	    		$(this).addClass('active').siblings().removeClass('active');
	    		conditions.order = $(this).data('order');
	    		initListData();
	    	}
	    });
        /*不设限制*/
        function noSelect(){
            var names = $(this).find('a').data('id');
            $('.'+ names).remove();
            isNoSelect();
            switch(names){
            	case 'spe':
                	conditions.featureTypes = new Array();
                	$('.j_special').find('a').removeClass("on");
            		break;
            	case 'type':
                	conditions.resortTypes = new Array();
                	$('.j_type').find('a').removeClass("on");
		            break;
            	case 'city':
            		conditions.scenic.id = "";
            		$('.j_city').find('a').removeClass("on");
            		break;
            	default:
            		break;
            }
            $(this).find('a').addClass('on');
            initListData();
        }
        /*清楚选项函数*/
        function clearSelect(){
            $(this).remove();
            $('.hasbeen-select').remove();
            $('.easyset-row span.select a').removeClass('on');
            nochoose();
			conditions.keyword = '',
			conditions.scenic.id = '',
			conditions.featureTypes = new Array(),
			conditions.resortTypes = new Array(),
			conditions.pageNo = '',
			conditions.pageSize = ''
			initListData();
			$('ul.breadcrumb .active>span').text("分权度假屋");
        }
        /*判断是否设置清除*/
        function isSetSelect(){
            if($('.clear-select').length > 0){
                $('.clear-select').remove();
            }
        }
        /*判断是否存在选项*/
        function isselect(){
            if($('.hasbeen-select').length > 0){
                selected.append(clear_html);
            }
        }
        function isNoSelect(){
            if($('.hasbeen-select').length < 1){
                $('.clear-select').remove();
            }
        }
       /*移除选项*/
        function selectMove(){
            $(this).parents('.hasbeen-select').remove();
            var selectName = $(this).data('name');
            $('.'+ selectName).removeClass('on');
            var conArr = $(this).parent().attr('class').split(' ').slice(1,3);
            var type = conArr[1];
            var name = conArr[0];
            var index;
            switch(type){
            	case 'spe':
            		index = $.inArray(name, conditions.featureTypes);
                	if(index > -1){
                		conditions.featureTypes.splice(index, 1);
                	}
            		break;
            	case 'type':
            		index = $.inArray(name, conditions.resortTypes);
                	if(index > -1){
                		conditions.resortTypes.splice(index, 1);
                	}
            		break;
            	case 'city':
            		conditions.scenic.id = "";
            		break;
            }
            initListData();
            isNoSelect();
            nochoose();
        }
        /*不限筛选是否选取*/
        function nochoose(){
            var obj = $('.j_city').find('a');
            if(!obj.hasClass('on')){
                obj.eq(0).addClass('on');
            }
            obj = $('.j_special').find('a');
            if(!obj.hasClass('on')){
                obj.eq(0).addClapss('on');
            }
            obj = $('.j_type').find('a');
            if(!obj.hasClass('on')){
                obj.eq(0).addClass('on');
            }
        }
        function initListData(){
        	conditions.pageNo = 1;
        	conditions.pageSize = 3;
        	var data = conditions;
	    	load_span.text("正在加载");
    		$.ajax({
    			type:"get",
    			url:"/website/list/condition",
    			data:data,
    			async:true,
    			dataType:"json",
    			error:function(e){
    				//alert("网络出错啦！");
    				load_span.text("点击加载更多");
    			},
    			success:function(result){
    				var data = result;
    				$('ul.list-con.clearfix>li').remove();
    				if(data != null){
    					var totalCount = data.totalCount;
    					var resorts = data.resorts;
    					$('ul.sort li.count-span>span').text(totalCount);
    					appendListDom(resorts);
    					if(resorts.length == 0){
    						load_span.html("很抱歉，暂时没有符合条件的度假屋。<br>您可以更改条件重新搜索");
    						return;
    					}
    					if(resorts.length < 3){
    						load_span.text("没有更多了");
    					}else{
    						load_span.text("点击加载更多");
    					}
    				}else{
    					load_span.text("点击加载更多");
    				}
    			}
    		});
        }
	    function appendListDom(resorts){
	    	if(resorts != null && resorts.length > 0){
				$.each(resorts, function(index, resort){
					var listDom;
					var tagSpans = "";
					$.each(resort.tags, function(index, tag) {
						var span = "<span class=\"box-radius-5 span" + index + "\">" + tag + "</span> ";
						tagSpans = tagSpans + span;
					});
					listDom = "<li><a href='/website/resort?resort.id=" + resort.id + "'><div class=\"liL\" ><img title='分权度假屋-Weshare我享度假' alt='分权度假屋' src='" + resort.viceImage + "_480x298' alt=\"\"/></div> " +
								" " +
									"<div class=\"liR\"> " +
										"<h2>" + resort.scenic.name + " | " + resort.name + "</h2> " +
										"<p class=\"des-title\">" + resort.viceName + "</p> " +
					                    "<div class=\"price_for_detail2\">" +
						                	(resort.minUnitPrice==null ? "待定" : (resort.minUnitPrice/10000 + "万起/份")) +
					                	"</div>" +
										tagSpans +
										"<p class=\"des\">" + resort.coreAdvantage + "</p> " +
									"</div> " +
								"</a> " +
							  "</li>";
					$('ul.list-con.clearfix').append(listDom);
				});
	    	}
	    }
    });
</script>
</body>
</html></#escape>