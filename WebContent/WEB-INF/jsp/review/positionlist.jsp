<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>师聘-职位审核</title>
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
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
<body data-type="widgets" onload="select()">
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
				<form class="tpl-header-search-form" action="javascript:;">
					<button class="tpl-header-search-btn"></button>
					<input style="font-size: 22px;" class="tpl-header-search-box"
						disabled="disabled" type="text" placeholder="欢迎使用师聘审核">
				</form>
			</div>
			<!-- 其它功能-->
			<div class="am-fr tpl-header-navbar">
				<ul>
					<!-- 欢迎语 -->
					<li class="am-text-sm tpl-header-navbar-welcome"><a
						href="javascript:;">欢迎你, <span>${sessionScope.nickname}&nbsp;审核员</span>
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
				<li class="sidebar-nav-heading">审核员菜单 <span
					class="sidebar-nav-heading-info"> </span></li>
				<li class="sidebar-nav-link"><a href="reviewlist.action?page=1">
						<i class="am-icon-table sidebar-nav-link-logo"></i> 资格审核
				</a></li>
				<li class="sidebar-nav-link"><a
					href="positionlist.action?type=0&page=1" class="active"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 职位审核
				</a></li>
				<li class="sidebar-nav-link"><a href="account.action"> <i
						class="am-icon-clone sidebar-nav-link-logo"></i> 账号管理
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
								<div class="widget-title  am-cf">资格审核列表</div>

							</div>
							<div class="widget-body  am-fr">

								<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
									<div class="am-form-group tpl-table-list-select"
										style="float: left">
										<select id="select" data-am-selected="{btnSize: 'sm'}">
											<option value="0" text="0">所有类别</option>
											<option value="1" text="1">通过</option>
											<option value="2" text="2">未通过</option>
										</select>
									</div>
								</div>

								<div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
									<div class="am-form-group">
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs"></div>
										</div>
									</div>
								</div>
								<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
									<div class="am-form-group tpl-table-list-select"></div>
								</div>

								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black ">
										<thead>
											<tr>
												<th>职位名称</th>
												<th>地点</th>
												<th>性质</th>
												<th>薪资</th>
												<th>学历</th>
												<th>工作经验</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listposition}" var="listposition">
												<tr class="gradeX">
													<td class="am-text-middle">${listposition.positionname}</td>
													<td class="am-text-middle">${listposition.workaddress}</td>
													<td class="am-text-middle">${listposition.positionnature}</td>
													<td class="am-text-middle">${listposition.salarymin}K-${listposition.salarymax}K</td>
													<td class="am-text-middle"><c:if
															test="${listposition.education =='0'}">
													不限
												</c:if> <c:if test="${listposition.education =='1'}">
													大专 
												</c:if> <c:if test="${listposition.education =='2'}">
													本科 
												</c:if> <c:if test="${listposition.education =='3'}">
													硕士 
												</c:if> <c:if test="${listposition.education =='4'}">
													博士
												</c:if></td>
													<td class="am-text-middle"><c:if
															test="${listposition.experience =='-1'}">
													不限
												</c:if> <c:if test="${listposition.experience =='0'}">
													应届毕业生
												</c:if> <c:if test="${listposition.experience =='1'}">
													至少1年
												</c:if> <c:if test="${listposition.experience =='2'}">
													至少2年
												</c:if> <c:if test="${listposition.experience =='3'}">
													至少3年
												</c:if> <c:if test="${listposition.experience =='4'}">
													至少4年
												</c:if> <c:if test="${listposition.experience =='5'}">
													至少5年
												</c:if> <c:if test="${listposition.experience =='6'}">
													至少6年
												</c:if> <c:if test="${listposition.experience =='7'}">
													至少7年
												</c:if> <c:if test="${listposition.experience =='8'}">
													至少8年
												</c:if> <c:if test="${listposition.experience =='9'}">
													至少9年
												</c:if> <c:if test="${listposition.experience =='10'}">
													至少10年
												</c:if> <c:if test="${listposition.experience =='11'}">
													10年及以上
												</c:if></td>
													<c:if test="${listposition.number =='0'}">
														<td class="am-text-middle">
															<div class="tpl-table-black-operation">
																<a href="javascript:;"
																	onclick="setnumber('${listposition.positionid}',1)"> 
																	<i class="am-icon-pencil"></i> 通过
																</a>
															</div>
														</td>
													</c:if>
													<c:if test="${listposition.number =='1'}">
														<td class="am-text-middle">
															<div class="tpl-table-black-operation">
																<a href="javascript:;"
																	onclick="setnumber('${listposition.positionid}',0)"> 
																	<i class="am-icon-pencil"></i> 取消通过
																</a>
															</div>
														</td>
													</c:if>
												</tr>
											</c:forEach>
											<!-- more data -->
										</tbody>
									</table>

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
function select(){
	var selected = ${type};
	//alert(selected)
	//am-selected-status am-fl    span
	// $(".am-selected-status am-fl").val("123");
	if(selected=="0"){
		//$(".am-selected-status .am-fl").innerHtml = "";
		//$(".am-selected-status").innerHtml = "所有类别";
		$(".am-selected-list li").eq(0).addClass("am-checked");  //第1个li
		$(".am-selected-list li").eq(1).removeClass("am-checked");
		$(".am-selected-list li").eq(2).removeClass("am-checked");
 		 /*  $("#select").val("0");
 		  $("#select").find("option[text='0']").attr("selected",true);  */
    }else if(selected=="1"){
    	//$(".am-selected-status .am-fl").innerHtml = "通过";
    	$(".am-selected-list li").eq(1).addClass("am-checked");  //第2个li  
    	$(".am-selected-list li").eq(0).removeClass("am-checked");
		$(".am-selected-list li").eq(2).removeClass("am-checked");
    	/* $("#select").val("1");
 		  $("#select").find("option[text='1']").attr("selected",true);  */
    }else{
    	//$(".am-selected-status .am-fl").innerHtml ="未通过";
    	$(".am-selected-list li").eq(2).addClass("am-checked");  //第3个li
    	$(".am-selected-list li").eq(0).removeClass("am-checked");
		$(".am-selected-list li").eq(1).removeClass("am-checked");
 		 /*  $("#select").val("2");
 		  $("#select").find("option[text='2']").attr("selected",true);  */
    }
}
 $(document).ready(function(){
   $("#select").change(function(){
       var selected=$(this).children('option:selected').val()
       //alert(selected);
       if(selected=="0"){
    	   window.location.href = "positionlist.action?type=0&page=1"
       }else if(selected=="1"){
    	   window.location.href = "positionlist.action?type=1&page=1"
       }else{
    	   window.location.href = "positionlist.action?type=2&page=1"
       }
   });
}); 
 </script>
<script>
	function fanye(yeshu){
		var page = yeshu; 
		var type = ${type};
		window.location.href = "positionlist.action?type="+type+"&page="+page+""; 
}
	function setnumber(positionid,number) {
	//alert(positionid+number)
		  $.ajax({
			type:"get",
			url:"setnumber.action",
			data:{"positionid":positionid,"number":number},
			success:function(data) {
				alert("修改成功！")
				window.location.reload();
			},
            error: function (data) {
            	alert("修改失败！")
            }
		});  
}
</script>
</html>