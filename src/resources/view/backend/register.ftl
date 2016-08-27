<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>汽车培聘网</title>
<link rel="stylesheet" href="css/login_style.css" type="text/css" media="screen" />

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">

function displayimg()
{
	$("#img1").show();
	}
	function hidimg()
	{
		$("#img1").hide();
		}
</script>
</head>

<body>
<!-- 头部开始 -->	
<div class="top">
	<div class="content">
    	<div class="logo left"><img src="images/logo.jpg" /></div>
        <div class="nav_box left">
        	<div class="nav">
            	<ul>
            	<li><a href="#">首页</a></li>
                <li><a href="#">培训师</a></li>
                <li><a href="#">培训需求</a></li>
                <li><a href="#">汽车人</a></li>
                <li><a href="#">汽车人需求</a></li>
                <li><a href="#">培训学院</a></li>
                <li><a href="#">公开课</a></li>
                
            </ul>
            </div>
        </div>
        <div class="dl_top right">
        	<ul>
            	<li style="background:none;"><a href="#">请登录</a></li>
                <li><a href="#">免费注册</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- 头部结束 -->	
	
<!-- main开始 -->
<div class="main">
	<div class="content">
    <div class="zc">
    	<div class="zc_l left">
        	<div class="links">
		<div class="linksTop">
			<ul id="tags1">
				<li class="cn" onclick="selectTag('item_con_0',this)">个人注册</li>
				<li onclick="selectTag('item_con_1',this)">企业注册</li>
			</ul>
		</div>
		<div class="linksmain" id="item_con">
			<div id="item_con_0">
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="60" colspan="4" align="left" valign="middle" style="background:url(images/zc_icon2.jpg) no-repeat left center; padding:20px 0px; height:30px; line-height:30px; padding-left:30px;">每个手机只能申请一个账号</td>
                  </tr>
                <tr>
                  <td width="106" height="60" align="right" valign="middle"><font color="#ff0000">*</font>手机：</td>
                  <td colspan="2"><input style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="text" name="textfield8" id="textfield8" /></td>
                  <td width="282"><font color="#999999">作为登录账号，请填写未注册过的手机或邮箱</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="textfield" id="textfield" /></td>
                  <td><font color="#999999">6~16个字符，包含字母，数字，特殊符号</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>确认密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="textfield2" id="textfield2" /></td>
                  <td><font color="#999999">请再次输入密码</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>验证码：</td>
                  <td width="100"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" type="text" name="textfield3" id="textfield3" /></td>
                  <td width="72"> 
                    <a href="javascript:void(0);" id="btnGetCode" enabled="true" class="phonecode" loadingmsg="发送验证码中，请留意接收短信..." loadingurl="59S后重新获取">免费获取验证码</a></td>
                  <td><font color="#999999">请输入手机验证码</font></td>
                </tr>
                <tr>
                  <td height="60" colspan="4" align="center" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="6%" height="33">&nbsp;</td>
                      <td width="94%"><input name="radio" type="radio" id="radio" value="radio" checked="checked" />
汽车人
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <input name="radio" type="radio" id="radio2" value="radio" />
培训师</td>
                    </tr>
                  </table></td>
                  </tr>
                <tr>
                  <td height="80" colspan="4" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="images/tj.jpg" /></td>
                </tr>
              </table>
			</div>
			<div id="item_con_1" style="display:none">
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="60" colspan="4" align="left" valign="middle" style="background:url(images/icon2.jpg) no-repeat left center; padding:20px 0px; height:30px; line-height:30px; padding-left:30px;">每个邮箱只能申请一个账号</td>
                  </tr>
                <tr>
                  <td width="106" height="60" align="right" valign="middle"><font color="#ff0000">*</font>邮箱：</td>
                  <td colspan="2"><input style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="text" name="textfield8" id="textfield8" /></td>
                  <td width="282"><font color="#999999">作为登录账号，请填写未注册过的手机或邮箱</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="textfield" id="textfield" /></td>
                  <td><font color="#999999">6~16个字符，包含字母，数字，特殊符号</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>确认密码：</td>
                  <td colspan="2"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:280px;" type="password" name="textfield2" id="textfield2" /></td>
                  <td><font color="#999999">请再次输入密码</font></td>
                </tr>
                <tr>
                  <td height="60" align="right" valign="middle"><font color="#ff0000">*</font>验证码：</td>
                  <td width="100"><input  style="border:1px solid #e7e6eb; height:30px; line-height:30px; width:120px;" type="text" name="textfield3" id="textfield3" /></td>
                  <td width="72"> 
                    <a href="javascript:void(0);" id="btnGetCode" enabled="true" class="phonecode" loadingmsg="发送验证码中，请留意接收短信..." loadingurl="59S后重新获取">免费获取验证码</a></td>
                  <td><font color="#999999">请输入手机验证码</font></td>
                </tr>
                <tr>
                  <td height="60" colspan="4" align="center" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="6%" height="33">&nbsp;</td>
                      <td width="94%"><input name="radio2" type="radio" id="radio2" value="radio2" checked="checked" />
培训企业
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <input name="radio" type="radio" id="radio2" value="radio" />
汽车公司</td>
                    </tr>
                  </table></td>
                  </tr>
                <tr>
                  <td height="80" colspan="4" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="images/tj.jpg" /></td>
                </tr>
              </table>
			</div>
			
		</div>
	</div>
        
        </div>
        <div class="zc_r right">已有培聘账号？<a href="#">立即登录</a>。</div>
        <div class="clear"></div>
    </div>
    </div>
</div>

<!-- main结束 -->
<#include "/assets/backend/common/footer.html">
<script type="text/javascript" src="js/common.js"></script>
</body>
</html>
