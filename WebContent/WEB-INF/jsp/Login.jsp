<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录-师聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="师聘网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在师聘网" name="description">
<meta content="师聘,师聘网,师聘招聘,拉钩, 拉钩网 ,互联网招聘,师聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 师聘官网, 师聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招" name="keywords">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="shortcut icon" href="style/images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>

<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
        	<a href="h/"><img src="style/images/logo_white.png" width="285" height="62" alt="师聘招聘" /></a>
            <div id="cloud_s"><img src="style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="" />		
		 <div class="login_box">
        	<form id="loginForm" action="index.html">
				<input type="text" id="email" name="email" value="" tabindex="1" placeholder="请输入登录邮箱地址" />
			  	<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
				<span class="error" style="display:none;" id="beError"></span>
			    <label class="fl" for="remember"><input type="checkbox" disabled="disabled" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
			    <a class="fr" target="_blank">忘记密码？</a>
			    
				<!--<input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />-->
				<!-- <a style="color:#fff;" href="logincheck.action?type=2" class="submitLogin" title="登 &nbsp; &nbsp; 录"/>登 &nbsp; &nbsp; 录</a> -->
				<input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
			</form>
			<div class="login_right">
				<div>还没有师聘帐号？</div>
				<a  href="register.action"  class="registor_now">立即注册</a>
				<div><a  href="nindex.action"  class="registor_now">游客登录</a></div>
				<div><a  href="logincheck.action?type=3"  class="registor_now">COM登录</a></div>
			    <div class="login_others">使用以下帐号直接登录:</div>
			    <a  href=""  class="icon_wb" title="使用新浪微博帐号登录"></a>
			    <a  href=""  class="icon_qq"  title="使用腾讯QQ帐号登录"></a>
			</div>
        </div>
        <div class="login_box_btm"></div>
    </div>

<script type="text/javascript">
$(function(){
	//验证表单
	 	$("#loginForm").validate({
	 		/* onkeyup: false,
	    	focusCleanup:true, */
	        rules: {
	    	   	email: {
	    	    	required: true,
	    	    	email: true
	    	   	},
	    	   	password: {
	    	    	required: true
	    	   	}
	    	},
	    	messages: {
	    	   	email: {
	    	    	required: "请输入登录邮箱地址",
	    	    	email: "请输入有效的邮箱地址，如：vivi@shipin.com"
	    	   	},
	    	   	password: {
	    	    	required: "请输入密码"
	    	   	}
	    	},
	    	submitHandler:function(form){
	    		if($('#remember').prop("checked")){
	      			$('#remember').val(1);
	      		}else{
	      			$('#remember').val(null);
	      		}
	    		var email = $('#email').val();
	    		var password = $('#password').val();
	    		var formData = new FormData(); 
	    	    formData.append('username',email); 
	    	    formData.append('password',password); 
	    		
	    		$(form).find(":submit").attr("disabled", true);
	    		  $.ajax({
		                url: 'http://localhost:8080/logincheck.action',
		                type: 'POST',
		                cache: false, //上传文件不需要缓存
		                dataType: "text",  
		                data: formData,
		                processData: false, // 告诉jQuery不要去处理发送的数据
		                contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		                success: function (data) {
		                	if(data=='3'){
		                		alert('登录成功！')
		                		window.location.href = "index.action"; 
		                	}else if(data=='2'){
		                		document.getElementById("submitLogin").disabled="";
		                		alert('用户名或密码错误')
		                	}else  if(data=='5'){
		                		alert('登录成功！')
		                		window.location.href = "reviewlist.action?page=1"; 
		                	}else  if(data=='4'){
		                		alert('登录成功！')
		                		window.location.href = "myhome.action"; 
		                	}else  if(data=='6'){
		                		alert('登录成功！')
		                		window.location.href = "userlist.action?page=1&status=2"; 
		                	}else{
		                		document.getElementById("submitLogin").disabled="";
		                		alert('登录失败')
		                	}
		                },
		                error: function (data) {
		                	document.getElementById("submitLogin").disabled="";
		                	alert('登录失败')
		                }
		            }) 
	        }  
		});
})
</script>
</body>
</html>