<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>师聘-资格审核</title>
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
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
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn"></button>
                        <input style="font-size:22px;" class="tpl-header-search-box" disabled="disabled" type="text" placeholder="欢迎使用师聘审核">
                    </form>
                </div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span>${sessionScope.nickname}&nbsp;审核员</span> </a>
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
                <li class="sidebar-nav-heading">审核员菜单 <span class="sidebar-nav-heading-info"> </span></li>
                <li class="sidebar-nav-link">
                    <a href="reviewlist.action?page=1" class="active">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 资格审核
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="positionlist.action?type=0&page=1">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 职位审核
                    </a>
                </li>
                 <li class="sidebar-nav-link">
                    <a href="account.action">
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
                                <div class="widget-title  am-cf">资格审核列表</div>

                            </div>
                            <div class="widget-body  am-fr">
                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
                                    <div class="am-form-group tpl-table-list-select">
                                       
                                    </div>
                                </div>        

                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                                <th>证书缩略图</th>
                                                <th>姓名</th>
                                                <th>申请资格</th>
                                                <th>时间</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listCertification}" var="listCertification">
                                            <tr class="gradeX">
                                                <td>
                                                    <img id="a" src="/pic/${listCertification.certificateimg}" class="tpl-table-line-img" alt="">
                                                </td>
                                                <td class="am-text-middle">${listCertification.realname}</td>
                                                <td class="am-text-middle">${listCertification.certificatename}</td>
                                                <td class="am-text-middle"><fmt:formatDate
													value="${listCertification.updatetime}"
													pattern="yyyy-MM-dd" />
												</td>
                                                <td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;"onclick="getcertification('${listCertification.userid}')" data-toggle="modal" data-target="#myModal" >
                                                            <i class="am-icon-pencil"></i> 审核
                                                        </a>
                                                    </div>
                                                </td>
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
												审核项
											</h4>
										</div>
										<div style="margin-left:150px">
											<div class="modal-body" style="font-size:16px;color:#019875;display:none">
												编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:
												<input id="userid1" name="userid" type="text" value="" disabled="disabled"></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:
												<input id="realname1" name="realname" type="text" value="" disabled="disabled"></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												身份证号:
												<input id="idcard1" name="idcard" type="text" value="" disabled="disabled"></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												申请资格:
												<input id="certificatename1" name="certificatename" type="text" value="" disabled="disabled"></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												证书编号:
												<input id="certificateno1" name="certificateno" type="text" value="" disabled="disabled"></input>
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												证书图片:
												<img id="certificateimg1" name="certificateimg" src="" class="tpl-table-line-img" alt="">
											</div>
											<div class="modal-body" style="font-size:16px;color:#019875">
												退回原因:
												<textarea id="reason1" name="reason" ></textarea>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="button btn btn-default" onclick="tuihui()">
												退回
											</button>
											<button type="button" class="button button1" onclick="tongguo()">
												通过
											</button>
										</div>
									</div><!-- /.modal-content -->
								</div>
	                    	</div>
                    	<!-- /.modal -->
            </div>
        </div>
    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
    
    <div id="outerdiv" style="position:fixed;top:0;left:200px;background:rgba(0,0,0,0.7);z-index:2000;width:200%;height:200%;display:none;">
	    <div id="innerdiv" style="position:absolute;width: 200%;height:200%;">
	    	<img id="bigimg" style="border:5px solid #fff;width: 520px;;height:350px; src="" />
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
	window.location.href = "reviewlist.action?page="+page+""; 
}
	function getcertification(userid) {
		var userid=userid;
		//alert(userid)
			 $.ajax({
				type:"get",
				url:"certificationdetail.action",
				data:{"userid":userid},
				success:function(data) {
					$("#userid1").val(data.userid);
					$("#realname1").val(data.realname);
					$("#idcard1").val(data.idcard);
					$("#certificatename1").val(data.certificatename);
					$("#certificateno1").val(data.certificateno);
					$("#certificateimg1").attr("src","/pic/"+data.certificateimg);
					$("#reason1").val(data.reason);
				}
			}); 
	}
	function tuihui() {
		 var userid = $("#userid1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
		 var reason = $("#reason1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, ''); 
		 if(reason==null||reason==''){
			 alert('请填写退回原因')
		 }else{
			 var formData = new FormData(); 
	    	 formData.append('userid',userid); 
	    	 formData.append('reason',reason); 
	    	 $.ajax({
	                url: '/tuihui.action',
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
	                		 window.location.reload();
	                	}
	                },
	                error: function (data) {
	                	window.location.href = "login.action"; 
	                }
	            }) 
		 }
	}
	function tongguo() {
		 var userid = $("#userid1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
		 var certificatename = $("#certificatename1").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, ''); 
		 
		 var formData = new FormData(); 
	     formData.append('userid',userid); 
	     formData.append('certificatename',certificatename); 
	     $.ajax({
	            url: '/tongguo.action',
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
	               		 window.location.reload();
	               	}
	            },
	            error: function (data) {
	              	window.location.href = "login.action"; 
	            }
	        }) 
		 
	}
</script>
</html>