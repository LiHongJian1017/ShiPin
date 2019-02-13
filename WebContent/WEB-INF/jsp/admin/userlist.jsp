<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>师聘-管理员</title>
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<link rel="stylesheet" href="assets/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="assets/css/app.css">
<script src="assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="style/bootstrap/css/bootstrap.min.css">
<script src="style/bootstrap/js/jquery.min.js"></script>
<script src="style/bootstrap/js/bootstrap.min.js"></script>

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

.button2 {
	background-color: #009875;
	color: white;
}

.button2:hover {
	background-color: #009875;
	color: white;
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
		<header> <!-- logo -->
		<div class="am-fl tpl-header-logo">
			<a style="color: #019875; font-size: 30px; text-decoration: none">师聘网</a>
		</div>
		<!-- 右侧内容 -->
		<div class="tpl-header-fluid">
			<!-- 侧边切换 -->
			<div class="am-fl tpl-header-switch-button"
				style="width: 67px; height: 55px;">
				<span> III </span>
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
					<li class="am-text-sm tpl-header-navbar-welcome"><a
						href="javascript:;">欢迎你, <span>${sessionScope.nickname}&nbsp;管理员</span>
					</a></li>

					<!-- 退出 -->
					<li class="am-text-sm"><a href="logout.action"> <span
							class="am-icon-sign-out"></span> 退出
					</a></li>
				</ul>
			</div>
		</div>

		</header>
		<!-- 风格切换 -->
		<div class="tpl-skiner">
			<div class="tpl-skiner-toggle" style="font-size: 15px">主题</div>
			<div class="tpl-skiner-content">
				<div class="tpl-skiner-content-title">选择主题</div>
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
				<li class="sidebar-nav-heading">管理员菜单 <span
					class="sidebar-nav-heading-info"> </span></li>
				<li class="sidebar-nav-link"><a href="userlist.action?page=1&status=2" class="active"> <i
						class="am-icon-table sidebar-nav-link-logo"></i>审核员管理
				</a></li>
				<li class="sidebar-nav-link" >
                    <a href="chart.action">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 统计图表
                    </a>
                </li>
				<li class="sidebar-nav-link"><a href="adminaccount.action"> <i
						class="am-icon-clone sidebar-nav-link-logo"></i>账号管理
				</a></li>
			</ul>
		</div>

		<!-- 内容区域 -->
		<div class="tpl-content-wrapper">
			<div class="row-content am-cf">
				<div class="row">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title  am-cf">审核员列表</div>


							</div>
							<div class="widget-body  am-fr">

								<div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
									<div class="am-form-group">
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" class="button button2" data-toggle="modal" data-target="#myModal1">
													<span class="am-icon-plus"></span> 新增
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
									<div class="am-form-group tpl-table-list-select">
										<select data-am-selected="{btnSize: 'sm'}">
											<option value="-1">状态</option>
											<option value="1">可登录</option>
											<option value="0">不可登录</option>
										</select>
									</div>
								</div>
								<div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
									<div
										class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
										<input type="text" class="am-form-field "> <span
											class="am-input-group-btn">
											<button class="button2 am-btn am-icon-search" type="button"></button>
										</span>
									</div>
								</div> -->

								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black "
										id="example-r">
										<thead>
											<tr>
												<th></th>
												<th></th>
												<th></th>
												<th>昵称</th>
												<th>用户名</th>
												<th>密码</th>
												<th>状态</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${listAssessor}" var="listAssessor">
											<tr class="gradeX">
											<td></td>
											<td></td>
											<td></td>
												<td>${listAssessor.name}</td>
												<td>${listAssessor.username}</td>
												<td>${listAssessor.password}</td>
												<c:if test="${listAssessor.status =='0'}">
													<td>不可登录</td>
												</c:if>
												<c:if test="${listAssessor.status =='1'}">
													<td>可登录</td>
												</c:if>
												<td>
													<div class="tpl-table-black-operation">
														<a href="javascript:;"onclick="getuser('${listAssessor.userid}')" data-toggle="modal" data-target="#myModal"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"onclick="deleteassessor('${listAssessor.userid}')"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>
										</c:forEach>
											<!-- more data -->
										</tbody>
									</table>
						<!-- 模态框（Modal） -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<br><br>
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
												&times;
											</button>
											<h4 class="modal-title" id="myModalLabel">
												审核员信息
											</h4>
										</div>
										<div style="margin-left:0px">
											<div class="modal-body" style="font-size:16px;color:#019875;display:none">
												编号:&nbsp;&nbsp;&nbsp;
												<input id="userid1" name="userid" type="text" value="" disabled="disabled"></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												 用户名:<br>
												<input style="width:500px;" id="username1" name="username" type="text" value="" disabled="disabled"></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												昵称:&nbsp;&nbsp;&nbsp;&nbsp;<br>
												<input style="width:500px;" id="name1" name="name" type="text" value="" ></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												密码:&nbsp;&nbsp;&nbsp;&nbsp;<br>
												<input style="width:500px;" id="password1" name="password" type="text" value="" ></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												状态:&nbsp;&nbsp;&nbsp;&nbsp;
												<span id="status1" name="status"></span>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="button btn btn-default" onclick="updatestatus()">
												更改状态
											</button>
											<button type="button" class="button button1" onclick="update()">
												保存
											</button>
										</div>
									</div><!-- /.modal-content -->
								</div>
	                    	</div>
                    	<!-- /.modal -->
                    	<!-- 模态框（Modal1） -->
							<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<br><br>
								<br><br>
								<br><br>
								
								
							<div class="modal-dialog">
									<div class="modal-content">
									<div class="login_box">
							        	<form id="loginForm">
							            	<input type="text" id="email" name="email" tabindex="1" placeholder="请输入邮箱" onclick="quxiao();"/>
							                <span class="error" style="display:none;" id="spanemail">请输入有效的邮箱地址，如：vivi@shipin.com</span>
							                <input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" onclick="quxiao2();"/>
							                <span class="error" style="display:none;" id="spanpassword">请输入6-16位密码，字母区分大小写</span>
							                <input type="button" id="submitLogin" value="新&nbsp; &nbsp; 增" onclick="addassessor();"/>
							            </form>
							            <div class="login_right">
							            	<div>邮箱后缀必须为:</div>
							                <div>@shipin.com</div>
							            </div>
       								</div>
	       						</div>
	                    	</div>
                    	<!-- /.modal1 -->
								</div>
								<div style="float: right; margin-right: 20px">
									<c:if test="${page=='1' && pageall!=0}">
										<button class="button disabled" title="首页"
											style="margin-right: 20px">首页</button>
										<button class="button disabled" title="上一页">上一页</button>
									</c:if>
									<c:if test="${page!='1'}">
										<button class="button button1" title="首页"
											style="margin-right: 20px" onclick="fanye('1');">首页</button>
										<button class="button button1" title="上一页"
											onclick="fanye(${page}-1);">上一页</button>
									</c:if>
									<c:if test="${page<pageall}">
										<button class="button button1" title="下一页"
											onclick="fanye(${page}+1);">下一页</button>
										<button class="button button1" title="尾页"
											style="margin-left: 10px" onclick="fanye(${pageall});">尾页</button>
									</c:if>
									<c:if test="${page==pageall}">
										<button class="button disabled" title="下一页">下一页</button>
										<button class="button disabled" title="尾页"
											style="margin-left: 10px">尾页</button>
									</c:if>
									<c:if test="${pageall==0}">
										<button class="button disabled" title="首页"
											style="margin-right: 20px">首页</button>
										<button class="button disabled" title="上一页">上一页</button>
										<button class="button disabled" title="下一页">下一页</button>
										<button class="button disabled" title="尾页"
											style="margin-left: 10px">尾页</button>
									</c:if>
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
	<script src="assets/js/app.js"></script>

	<div id="outerdiv"
		style="position: fixed; top: 0; left: 200px; background: rgba(0, 0, 0, 0.7); z-index: 2000; width: 200%; height: 200%; display: none;">
		<div id="innerdiv"
			style="position: absolute; width: 200%; height: 200%;">
			<img id="bigimg"
				style="border: 5px solid #fff; width: 520px;; height: 350px;" " />
		</div>
	</div>
</body>
<script type="text/javascript">
    //图片放大
      $(function(){
        $(".tpl-table-line-img").click(function(){
            var _this = $(this);//将当前的pimg元素作为_this传入函数  
            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
          });  
    	});  
        function imgShow(outerdiv, innerdiv, bigimg, _this){
	        var src = _this.attr("src");//获取当前点击的pimg元素中的src属性  
	        $('#outerdiv').attr('display','block');
	        $(bigimg).attr("src", src);//设置#bigimg元素的src属性  
             $(outerdiv).fadeIn("fast");
        $(outerdiv).click(function(){//再次点击淡出消失弹出层  
            $(this).fadeOut("fast");  
        });  
    }
  </script>
<script>
function fanye(yeshu){
	var page = yeshu; 
	window.location.href = "userlist.action?page="+page+"&status=2"; 
}
function addassessor(){
	 var email = $("#email").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
	 var password = $("#password").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
	 
	 var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
	 isemailok= reg.test(email);
	 if(!isemailok){
		 document.getElementById('spanemail').style.display = "block";     
	  }
	 if(password.length<6){
		 document.getElementById('spanpassword').style.display = "block";     
	 }
	 if(isemailok&&password.length>=6){
		 var formData = new FormData(); 
		 formData.append('username',email); 
		 formData.append('password',password); 
		 $.ajax({
	           url: '/addassessor.action',
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
	           		alert("邮箱已注册!")
	           	}else if(data=='2'){
	           		alert("新增成功!")
	           		window.location.reload();
	           	}else{
	           		alert("新增失败!")
	           	}
	           },
	           error: function (data) {
	           	window.location.href = "login.action"; 
	           }
	       })  
	 }

}
	function deleteassessor(userid) {
		var userid=userid;
		//alert(userid)
			 $.ajax({
				type:"get",
				url:"deleteassessor.action",
				data:{"userid":userid},
				 success: function (data) {
	                if(data=='0'){
	                	window.location.href = "login.action"; 
	                }else{
	                	alert("删除成功!")
	                	 window.location.reload();
	                }
	            },
	            error: function (data) {
	                window.location.href = "login.action"; 
	            }
			}); 
	}
			
	function getuser(userid) {
		var userid=userid;
		//alert(userid)
			 $.ajax({
				type:"get",
				url:"userdetail.action",
				data:{"userid":userid},
				success:function(data) {
					$("#userid1").val(data.userid);
					$("#username1").val(data.username);
					$("#name1").val(data.name);
					$("#password1").val(data.password);
					//$("#status1").val(data.status);
					if(data.status==1){
						document.getElementById("status1").innerHTML='可登录';
					}else{
						document.getElementById("status1").innerHTML='不可登录';
					}
					
				}
			}); 
	}
	function updatestatus() {
		 var userid = $("#userid1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
		 var flagstatus = $("#status1").html();
		
		 if(flagstatus=='可登录'){
			var status=0; 
		 }else{
			 var status=1; 
		 }
		
			 var formData = new FormData(); 
	    	 formData.append('userid',userid); 
	    	 formData.append('status',status); 
	    	 $.ajax({
	                url: '/updatestatus.action',
	                type: 'POST',
	                cache: false, //上传文件不需要缓存
	                dataType: "text",  
	                data: formData,
	                processData: false, // 告诉jQuery不要去处理发送的数据
	                contentType: false, // 告诉jQuery不要去设置Content-Type请求头
	                success: function (data) {
	                	if(data=='0'){
	                		window.location.href = "login.action"; 
	                	}else{
	                		alert("更新成功")
	                		 window.location.reload();
	                	}
	                },
	                error: function (data) {
	                	window.location.href = "login.action"; 
	                }
	            }) 
		 
	}
	function update() {
		 var userid = $("#userid1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
		 var name = $("#name1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, ''); 
		 var password = $("#password1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, ''); 
		 if(name==''){
			 alert("请输入昵称!")
		 }else if(password.length<6){
			 alert("请输入大于6位数的密码!")
		 }else{
			 var formData = new FormData(); 
		     formData.append('userid',userid); 
		     formData.append('name',name); 
		     formData.append('password',password); 
		     $.ajax({
		            url: '/update.action',
		            type: 'POST',
		            cache: false, //上传文件不需要缓存
		            dataType: "text",  
		            data: formData,
		            processData: false, // 告诉jQuery不要去处理发送的数据
		            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		            success: function (data) {
		             	if(data=='0'){
		               		window.location.href = "login.action"; 
		               	}else{
		               		alert("更新成功")
		               		 window.location.reload();
		               	}
		            },
		            error: function (data) {
		              	window.location.href = "login.action"; 
		            }
		        }) 
		 }
	}
</script>
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
	    		var email = $('#email').val();
	    		var password = $('#password').val();
	    		var formData = new FormData(); 
	    	    formData.append('username',email); 
	    	    formData.append('password',password); 
	    		
	    		/* $(form).find(":submit").attr("disabled", true);
	    		  $.ajax({
		                url: '/logincheck.action',
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
		            })  */
	        }  
		});
})
function quxiao() {  
	document.getElementById('spanemail').style.display = "none";   
}
function quxiao2() {  
	document.getElementById('spanpassword').style.display = "none";   
}
</script>
</html>