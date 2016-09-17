<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="<@url value='/assets/website/backend/css/style.css'/>" type="text/css" media="screen" />
<script src="<@url value="/assets/website/js/jquery-1.8.0.min.js?v=1.1.0"/>"></script>

</head>

<body>
<#include "/assets/website/common/header.html">
	
<!-- main开始 -->
<div class="main">
	<div class="content">
    <div class="dq_box">
    <div class="dqwz left">当前位置 : <a href="#">首 页</a> > <a href="#">企业管理中心</a> > <a href="#">完善资料</a></div>
    <div class="wdcf right"><span>2016-07-20 — 2016-08-20</span>我的财富：<font color="#FF66001">845</font></div>
    <div class="clear"></div>
    </div>
    <div class="pxshi_gl">
    	<div class="pxshi_gl_l left">
 		<#include "/assets/website/backend/common/menu.html">
 		
        <div class="pxshi_gl_r right">
        
        <form id="form1" method="post" action="/backend/companyCompleteResume" onSubmit="return checkform()">
        
       	  <div class="pxshijl">
               	  <h5>企业基本信息</h5>
                    <div class="pxshijl_box">
                   	  <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
					  <tr>
					    <td colspan="2"width="420" align="left" valign="top"><table width="400" border="0" cellspacing="0" cellpadding="0">
					      <tr>
					        <td width="69" height="40" align="right" valign="middle"><font color="#ff0000">*</font> 企业名称：</td>
					        <td width="292">
					        <#if company?? && company.name??>
					        <input type="text" name="company.name" value="${company.name!}" id="company.name" />
					        <#else>
					        <input type="text" name="company.name" value="" id="company.name" />
					        </#if>
					        </td>
					      </tr>
					      <tr>
                    	    <td width="125" align="right" valign="middle"><font color="#ff0000">*</font>企业规模：</td>
                    	    <td width="337">
                    	    <select name="company.scale" id="scale">
                    	    <option value="">请选择</option>
                    	    <#if company?? && company.scale?? && company.scale.name() = 'UNDER50'>
							<option selected="selected" value="UNDER50">50人以下</option>
							<#else>
							<option value="UNDER50">50人以下</option>
							</#if>
							<#if company?? && company.scale?? && company.scale.name() = 'FROM51TO100'>
							<option selected="selected" value="FROM51TO100">51人-100人</option>
							<#else>
							<option value="FROM51TO100">51人-100人</option>
							</#if>
							<#if company?? && company.scale?? && company.scale.name() = 'FROM101TO200'>
							<option selected="selected" value="FROM51TO100">101人-200人</option>
							<#else>
							<option value="FROM101TO200">101人-200人</option>
							</#if>
							<#if company?? && company.scale?? && company.scale.name() = 'FROM201TO500'>
							<option selected="selected" value="FROM51TO100">201人-500人</option>
							<#else>
							<option value="FROM201TO500">201人-500人</option>
							</#if>
							<#if company?? && company.scale?? && company.scale.name() = 'FROM501TO1000'>
							<option selected="selected" value="FROM51TO100">501人-1000人</option>
							<#else>
							<option value="FROM501TO1000">501人-1000</option>
							</#if>
							<#if company?? && company.scale?? && company.scale.name() = 'ABOVE1000'>
							<option selected="selected" value="ABOVE1000">1000人以上</option>
							<#else>
							<option value="ABOVE1000">1000人以上</option>
							</#if>
                            </select>
                    	    </td>
                  	    </tr>
					    </table></td>
					    <td width="439" colspan="4" align="left" valign="top"><table width="400" border="0" cellspacing="0" cellpadding="0">
					      <tr>
					        <td><img src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/zw.jpg" /></td>
					        </tr>
					      <tr>
					        <td>
					        
					        <table width="400" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td  width="15%" height="40" align="left" valign="middle"><input type="submit" name="button" id="button" value="浏 览" /></td>
					            <td width="23%" align="left" valign="middle">未选择图片。</td>
					            <td width="62%" align="left" valign="middle"><input type="submit" name="button2" id="button2" value="上 传" /></td>
					            </tr>
					          </table>
					          
					          </td>
					        </tr>
					      <tr>
					        <td><font color="#CCCCCC">请上传宽度为100px,高度为50px,格式：jpg,gif, 大小&lt;500kb的图片</font></td>
					        </tr>
					      </table></td>
					  </tr>
					  </table>


                </div>
          </div>
         <div class="pxshijl">
               	  <h5>上传企业营业执照</h5>
                    <div class="pxshijl_box">
                    	
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40" align="left" valign="middle"><font color="#CCCCCC">将有效的工商营业执照副本原件或加盖红色单位公章的复印件拍照或扫描后在此上传，由客服人员认证审核。必须上传与公司名称一致，
已年检通过的证照。</font></td>
  </tr>
  <tr>
    <td><font color="#ff0000">*</font> 公司名称：
      <input name="txt_email2" type="text" id="txt_email2" /></td>
  </tr>
  <tr>
    <td><table width="500" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="90" height="50" align="left" valign="middle"><font color="#ff0000">*</font> 上传证件照：</td>
        <td width="60" align="left" valign="middle"><input type="submit" name="button3" id="button3" value="浏览" /></td>
        <td width="80" align="left" valign="middle">未选择图片。</td>
        <td width="80" align="left" valign="middle"><input type="submit" name="button4" id="button4" value="上传照片" /></td>
        <td width="190" align="left" valign="middle">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

            </div>
          </div>
          <div class="pxshijl">
               	  <h5>上传企业照片</h5>
                    <div class="pxshijl_box">
                    	
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40" align="left" valign="middle"><font color="#CCCCCC">请上传宽度260px,高度为170px,格式：jpg,gif, 大小&lt;500kb的图片</font></td>
  </tr>
  
  <tr>
    <td><table width="500" border="0" cellspacing="0" cellpadding="0">
      <tr>
       
        <td width="50" align="left" valign="middle"><input type="submit" name="button3" id="button3" value="浏览" /></td>
        <td width="80" align="left" valign="middle">未选择图片。</td>
        <td width="80" align="left" valign="middle"><input type="submit" name="button4" id="button4" value="上传照片" /></td>
        <td width="190" align="left" valign="middle">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

            </div>
          </div>
         
          <div class="pxshijl">
               	  <h5>企业介绍</h5>
                    <div class="pxshijl_box">
                    	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  
     <tr>
    <td height="40" colspan="4" align="left" valign="middle"><table width="90%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="11%"><font color="#ff0000">*</font>企业介绍：</td>
    <td width="89%"><textarea style="width:600px;" name="company.intro" id="intro" cols="45" rows="5"><#if company?? && company.intro??>{company.intro!}<#else>请输入企业介绍</#if></textarea></td>
  </tr>
</table></td>
    </tr>
</table>


                </div>
          </div>
          <div class="tj">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="60" align="center" valign="middle">
                    <input type="image" name="imageField" id="imageField" src="http://7xtuyf.com1.z0.glb.clouddn.com/backend/images/tj.jpg" /> 
                    </td>
                  </tr>
            </table>
          </div>
      </div>
      
      <form>
        <div class="clear"></div>
    
    </div>
    </div>
</div>

<script>
function checkform(){
	return false;
}

</script>

<!-- main结束 -->
<#--<#include "/assets/backend/common/footer.html">-->

</body>
</html>
