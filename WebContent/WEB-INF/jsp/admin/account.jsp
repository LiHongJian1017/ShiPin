<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>账号管理-师聘网-最专业的互联网招聘平台</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/jquery.min.js"></script>
<style>
.button {
	background-color: #91cebe; /* Green */
	border: none;
	color: white;
	padding: 4px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 0px 10px 10px 0px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button1 {
	background-color: white;
	color: black;
	border: 2px solid #009875;
}

.button1:hover {
	background-color: #009875;
	color: white;
}

.disabled {
	opacity: 0.6;
	cursor: not-allowed;
}
</style>
</head>
<body data-type="widgets">
    <script src="assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
           <!-- logo -->
            <div class="am-fl tpl-header-logo">
                <a style="color:#019875; font-size:30px;text-decoration:none">师聘网</a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button" style="width:67px; height:55px;">
                    <span>
						III
                	</span>
                </div>
                <!-- 搜索 -->
				<div class="am-fl tpl-header-search">
					<div></div>
					<div style="margin-top:10px;"><a style="font-size: 22px;margin-top:5px;text-decoration:none" class="tpl-header-search-box">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎使用师聘</a></div>
				</div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span>${sessionScope.nickname}&nbsp;管理员</span> </a>
                        </li>

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="logout.action">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
        <!-- 风格切换 -->
       <div class="tpl-skiner">
            <div class="tpl-skiner-toggle" style="font-size:15px">主题
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">

            <!-- 菜单 -->
            <ul class="sidebar-nav">
                <li class="sidebar-nav-heading">管理员菜单 <span class="sidebar-nav-heading-info"> </span></li>
                <li class="sidebar-nav-link">
                    <a href="userlist.action?page=1&status=2">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 审核员管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="chart.action">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 统计图表
                    </a>
                </li>
                 <li class="sidebar-nav-link">
                    <a href="adminaccount.action"  class="active">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 账号管理
                    </a>
                </li>
            </ul>
        </div>

        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

            <div class="row-content am-cf">


                <div class="row">

                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">修改密码</div>
                            </div>
                            <div class="widget-body am-fr">

                                <form class="am-form tpl-form-line-form">
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-3 am-form-label">新密码 <span class="tpl-form-line-small-title"></span></label>
                                        <div class="am-u-sm-9">
                                            <input type="password" class="tpl-form-input" id="pass" placeholder="请输入新密码">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-3 am-form-label">确认新密码 <span class="tpl-form-line-small-title"></span></label>
                                        <div class="am-u-sm-9">
                                            <input type="password" class="tpl-form-input" id="qpass" placeholder="请输入确认新密码">
                                        </div>
                                    </div>
                                </form>
                                 <div class="am-form-group">
                                        <div style="float: right; margin-right: 680px">
                                           <button class="button button1" title="确认"
											onclick="queren();">确认</button>
                                        </div>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/amazeui.datatables.min.js"></script>
    <script src="assets/js/dataTables.responsive.min.js"></script>
    <script src="assets/js/app.js"></script>
<script>
function queren(){
	var password =$('#pass').val();
	var qpassword =$('#qpass').val();
	if(password.length<6){
		alert('密码长度大于6')
	}else if(password!=qpassword){
		alert('密码输入不一致')
	}else{
		var formData = new FormData(); 
	    formData.append('password',qpassword); 
	    $.ajax({
            url: '/updateadminpassword.action',
            type: 'POST',
            cache: false, //上传文件不需要缓存
            dataType: "text",  
            data: formData,
            processData: false, // 告诉jQuery不要去处理发送的数据
            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
            success: function (data) {
            	if(data=='0'){
            		window.location.href = "login.action"; 
            	}else if(data=='1'){
            		document.getElementById("pass").value="";
            		document.getElementById("qpass").value="";
            		alert('密码修改成功')
            	}else{
            		document.getElementById("pass").value="";
            		document.getElementById("qpass").value="";
            		alert('密码修改失败')
            	}
            },
            error: function (data) {
            	document.getElementById("pass").value="";
            	document.getElementById("qpass").value="";
            	alert('密码修改失败')
            }
        })
	}
}
</script>
</body>
</html>