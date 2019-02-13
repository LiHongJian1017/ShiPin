<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script async="" src="style/js/analytics.js"></script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>

<!-- fenye -->
<link href="style/css/fenye.css" rel="stylesheet">
	
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我发布的职位-招聘服务-师聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="师聘网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在师聘网">
<meta name="keywords"
	content="师聘,师聘网,师聘招聘,拉钩, 拉钩网 ,互联网招聘,师聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 师聘官网, 师聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
	var ctx = "http://www.lagou.com";
	console.log(1);
</script>
<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script src="style/js/conv.js" type="text/javascript"></script>
</head>
<body>
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a class="logo" href=""> <img width="229"
					height="43" alt="师聘招聘-专注互联网招聘" src="style/images/logo.png">
				</a>
				<ul id="navheader" class="reset">
					<li><a href="myhome.action" style="text-decoration:none;">公司主页</a></li>
					<li class="current"><a href="createjob.action" style="text-decoration:none;">发布的职位</a></li>
					<li><a href="caninterviewresumes.action" style="text-decoration:none;">收到的简历</a></li>
				</ul>
				<dl class="collapsible_menu">
					<dt>
						<span>${sessionScope.nickname}&nbsp;</span> <span class="red dn" id="noticeDot-1"></span>
						<i></i>
					</dt>
					<dd style="display: none;">
						<a href="myhome.action">公司主页</a>
					</dd>
					<dd style="display: none;">
						<a href="lianhecreatejob.action">联合招聘</a>
					</dd>
					<dd style="display: none;">
						<a href="createjob.action">发布的职位</a>
					</dd>
					<dd class="btm" style="display: none;">
						<a href="caninterviewresumes.action">收到的简历</a>
					</dd>
					<dd style="display: none;">
						<a href="comupdatepassword.action">帐号设置</a>
					</dd>
					<dd class="logout" style="display: none;">
						<a rel="nofollow" href="logout.action">退出</a>
					</dd>
				</dl>

			</div>
		</div>
		<!-- end #header -->
		<div id="container">
			<div class="sidebar">
				<a class="btn_create" href="createjob.action">发布新职位</a>
				<dl class="company_center_aside">
					<dt>我发布的职位</dt>
					<dd class="current">
						<a href="ypositions.action">有效职位</a>
					</dd>
					<dd>
						<a href="npositions.action">已下线职位</a>
					</dd>
				</dl>
				<div class="subscribe_side mt20">
					<div class="f14">想看到更多更好的简历？</div>
					<div class="f18 mb10">就用师聘联合招聘助手</div>
					<div>
						咨询：<a class="f16" href="">jessica@lagou.com</a>
					</div>
					<div class="f18 ti2em">010-57286512</div>
				</div>
				<div class="subscribe_side mt20">
					<div class="f14">加入互联网HR交流群</div>
					<div class="f18 mb10">跟同行聊聊</div>
					<div class="f24">338167634</div>
				</div>
			</div>
			<!-- end .sidebar -->
			<div class="content">
				<dl class="company_center_content">
					<dt>
						<h1>
							<em></em> 有效职位 <span>（共<i style="color: #fff; font-style: normal" id="positionNumber">${count}</i>个）</span>
						</h1>
					</dt>
					<dd>
						<form id="searchForm">
							<input type="hidden" value="Publish" name="type">
							<ul class="reset my_jobs">
								<c:forEach items="${page.rows}" var="listPosition">
									<li data-id="">
										<h3>
											<a target="_blank" title="${listPosition.positionname}" >${listPosition.positionname}</a>
											<span>[${listPosition.workaddress}]</span>
										</h3>
										<div>${listPosition.positionnature}/
											${listPosition.salarymin}k-${listPosition.salarymax}k /
											<c:if test="${listPosition.experience =='-1'}">
											不限 /
											</c:if>
											<c:if test="${listPosition.experience =='0'}">
											应届毕业生/
											</c:if>
											<c:if test="${listPosition.experience =='1'}">
											1年/
											</c:if>
											<c:if test="${listPosition.experience =='2'}">
											2年/
											</c:if>
											<c:if test="${listPosition.experience =='3'}">
											3年/
											</c:if>
											<c:if test="${listPosition.experience =='4'}">
											4年/
											</c:if>
											<c:if test="${listPosition.experience =='5'}">
											5年/
											</c:if>
											<c:if test="${listPosition.experience =='6'}">
											6年/
											</c:if>
											<c:if test="${listPosition.experience =='7'}">
											7年/
											</c:if>
											<c:if test="${listPosition.experience =='8'}">
											8年/
											</c:if>
											<c:if test="${listPosition.experience =='9'}">
											9年/
											</c:if>
											<c:if test="${listPosition.experience =='10'}">
											10年/
											</c:if>
											<c:if test="${listPosition.experience =='11'}">
											10年以上/
											</c:if>
											
											<c:if test="${listPosition.education =='0'}">
											不限 
											</c:if>
											<c:if test="${listPosition.education =='1'}">
											大专
											</c:if>
											<c:if test="${listPosition.education =='2'}">
											本科 
											</c:if>
											<c:if test="${listPosition.education =='3'}">
											硕士 
											</c:if>
											<c:if test="${listPosition.education =='4'}">
											博士 
											</c:if>
										</div>
										<div class="c9">
											<fmt:formatDate value="${listPosition.releasetime}"
												pattern="yyyy-MM-dd HH:mm:ss" />
										</div>
										<div class="links">
											<a class="job_refresh" href="ypositions.action">刷新<span>每个职位7天内只能刷新一次</span></a>
											<a class="job_edit" href="getpositiondetail.action?positionid=${listPosition.positionid}&status=${listPosition.status}">编辑</a>
											<a class="" href="offlineposition.action?positionid=${listPosition.positionid}">下线</a> 
											<a class="" href="ydeleteposition.action?positionid=${listPosition.positionid}&status=${listPosition.status}">删除</a>
										</div>
									</li>
								</c:forEach>
								
							</ul>				
						</form>
						<div style="float:right;margin-right:40px;">
							<itcast:page url="ypositions.action"  />
						</div>
					</dd>
				</dl>
				
			</div>

			<!-- end .content -->
			<script src="style/js/job_list.min.js" type="text/javascript"></script>
			<div class="clear"></div>
			<input type="hidden" value="74fb1ce14ebf4e2495270b0fbad64704"
				id="resubmitToken"> <a rel="nofollow" title="回到顶部"
				id="backtop"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a  target="_blank" rel="nofollow">联系我们</a> <a
				 target="_blank">互联网公司导航</a> <a
				 target="_blank" rel="nofollow">师聘微博</a>
			<a class="footer_qr" href="javascript:void(0)" rel="nofollow">师聘微信<i></i></a>
			<div class="copyright">
				&copy;2017-2019 师聘 <a target="_blank">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script src="style/js/core.min.js" type="text/javascript"></script>
	<script src="style/js/popup.min.js" type="text/javascript"></script>
	<script src="style/js/tongji.js" type="text/javascript"></script>
	<!--  -->
	<script src="style/js/analytics01.js" type="text/javascript"></script>
	<script type="text/javascript" src="style/js/h.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#noticeDot-1').hide();
			$('#noticeTip a.closeNT').click(function() {
				$(this).parent().hide();
			});
		});
		var index = Math.floor(Math.random() * 2);
		var ipArray = new Array('42.62.79.226', '42.62.79.227');
		var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
		var CallCenter = {
			init : function(url) {
				var _websocket = new WebSocket(url);
				_websocket.onopen = function(evt) {
					console.log("Connected to WebSocket server.");
				};
				_websocket.onclose = function(evt) {
					console.log("Disconnected");
				};
				_websocket.onmessage = function(evt) {
					//alert(evt.data);
					var notice = jQuery.parseJSON(evt.data);
					if (notice.status[0] == 0) {
						$('#noticeDot-0').hide();
						$('#noticeTip').hide();
						$('#noticeNo').text('').show().parent('a').attr('href',
								ctx + '/mycenter/delivery.html');
						$('#noticeNoPage').text('').show().parent('a').attr(
								'href', ctx + '/mycenter/delivery.html');
					} else {
						$('#noticeDot-0').show();
						$('#noticeTip strong').text(notice.status[0]);
						$('#noticeTip').show();
						$('#noticeNo').text('(' + notice.status[0] + ')')
								.show().parent('a').attr('href',
										ctx + '/mycenter/delivery.html');
						$('#noticeNoPage').text(' (' + notice.status[0] + ')')
								.show().parent('a').attr('href',
										ctx + '/mycenter/delivery.html');
					}
					$('#noticeDot-1').hide();
				};
				_websocket.onerror = function(evt) {
					console.log('Error occured: ' + evt);
				};
			}
		};
		CallCenter.init(url);
	</script>

	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxTitle" style="float: left;"></div>
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
					<div id="cboxLoadingOverlay" style="float: left;"></div>
					<div id="cboxLoadingGraphic" style="float: left;"></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
	</div>
</body>
</html>