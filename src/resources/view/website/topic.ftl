<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="../css/zt.css" type="text/css" media="screen" />

<link rel="stylesheet" type="text/css" href="../css/lrtk.css">
<script src="../js/jquery1.42.min.js" type="text/javascript"></script>
<script src="../js/jquery.superslide.2.1.1.js" type="text/javascript"></script>
</head>

<body>
<!-- 头部开始 -->	
<#include "/assets/website/common/header.html">
<!-- 头部结束 -->	

<!-- main开始 -->


<div class="zhuanti">
    <div class="content" >
    	<div class="zt">
        	<div class="zt_l left">
            	<ul>
            	 <#if topicList??>
	            	 <#list topicList as t>
	            	 	<li>
                    	<div class="zt_pic left"><img src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/zt.jpg" /></div>
                        <div class="zt_box right">
                       	    <div class="zt_tit">${t.title!}</div>
                            <div class="zt_xx">
                           	<a href="#"><#if  t.content?length lt 201>${t.content!}<#else>${t.content?substring(0,200)!}...</#if></a>                   </div>	
                          <div class="zt_pl">
                            	<div class="zt_pl_l left"><a href="#">此问题有8人评论</a></div>
                                <div class="zt_pl_r right">
                                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="50%" align="right" valign="middle"><a href="#">评论</a></td>
                                      <td width="21%" align="right" valign="middle"><img src="${t.topicLogo!}" /></td>
                                      <td width="29%" align="right" valign="middle"><a href="#">赞(12)</a></td>
                                    </tr>
                                  </table>
                              </div>
                                <div class="clear"></div>
                            </div>
                        <div class="clear"></div>
                        </div>
                    </li>
	            	 </#list>
            	 </#if>
                </ul>
            	<div class="fypage" ><span>上五页</span><span class="">上一页</span><span>1</span><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">下一页</a><a href="#">下五页</a>  跳转到 <select name="PageSelect" onchange=""><option value="" selected="selected">第01页</option><option value="">第02页</option><option value="">第03页</option><option value="">第04页</option><option value="">第05页</option><option value="">第06页</option><option value="index_7.html">第07页</option>
                
               
               </select></div>
            </div>
            
            <div class="zt_r right">
            <div class="kstw">
            	<h4>我要发帖</h4>
                <div class="kstw_box">
                	<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="140" align="center" valign="middle"><textarea name="textarea" style=" border:1px solid #e6e5e5;width:240px; height:100px;" id="textarea"></textarea></td>
  </tr>
  <tr>
    <td height="60" align="center" valign="middle">
      <input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/website/images/tj.jpg" />
  </td>
  </tr>
</table>

              </div>
            </div>
            <div class="wdwd">
            	<h4>精品专题</h4>
                <div class="wdwd_box">
                	<ul>
                		<#if topicHotList??>
			            	<#list topicHotList as t>
		                    	<li><a href="#">${t.title!}</a></li>
                    	 	</#list>
            	 		</#if>
                    </ul>
                </div>
            </div>
            
            </div>
            <div class="clear"></div>
        </div>
        
       
  </div>
</div>
    
	

<!-- main结束 -->
<#include "/assets/website/common/footer.html">
</body>
</html>
