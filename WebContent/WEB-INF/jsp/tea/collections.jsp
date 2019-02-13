<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我收藏的职位-招聘服务-师聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="师聘网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在师聘网">
<meta name="keywords"
	content="师聘,师聘网,师聘招聘,拉钩, 拉钩网 ,互联网招聘,师聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 师聘官网, 师聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
<link rel="shortcut icon" href="style/images/favicon.ico" type="image/x-icon" />
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
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
</head>
<body>
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a class="logo" href=""> <img width="229" height="43"
					alt="师聘招聘-专注互联网招聘" src="style/images/logo.png">
				</a>
				<ul class="reset" id="navheader">
					<li><a href="index.action">首页</a></li>
					<li><a href="joblist.action">职位</a></li>
					<li><a href="companylist.action">公司</a></li>
				</ul>
				<dl class="collapsible_menu">
					<dt>
						<span>${sessionScope.nickname}&nbsp;</span> <span class="red dn" id="noticeDot-1"></span>
						<i></i>
					</dt>
					<dd style="display: none;">
						<a href="jianli.action">我的简历</a>
					</dd>
					<dd style="display: none;">
						<a href="collections.action">我收藏的职位</a>
					</dd>
					<dd style="display: none;">
						<a href="delivery.action">我投递的职位</a>
					</dd>
					<dd style="display: none;">
						<a href="mlist.action?page=1">我的推荐</a>
					</dd>
					<dd class="btm" style="display: none;">
						<a href="certification.action">我的资格认证</a>
					</dd>
					<dd style="display: none;">
						<a href="userupdatepassword.action">帐号设置</a>
					</dd>
					<dd class="logout" style="display: none;">
						<a rel="nofollow" href="logout.action">退出</a>
					</dd>
				</dl>
				<div class="dn" id="noticeTip">
					<span class="bot"></span> <span class="top"></span> <a
						target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
					<a class="closeNT" href="javascript:;"></a>
				</div>
			</div>
		</div>
		<!-- end #header -->
		<div id="container">

			<div class="clearfix">
				<div class="content_l">
					<dl class="c_collections">
						<dt>
							<h1>
								<em></em>我收藏的职位
							</h1>
						</dt>
						<dd>
							<form id="collectionsForm">
								<ul class="reset my_collections">
								<c:if test="${empty listPosandcom}">
									<br>
									<div class="filter_tip">
										您 &nbsp; &nbsp;<span>没有&nbsp; &nbsp;</span>收藏职位。 <span> &nbsp;</span>&nbsp;
									</div>
								</c:if>
								<c:forEach items="${listPosandcom}" var="listPosandcom">
									<li><a title="${listPosandcom.companyname}" target="_blank"
										href="companydetail.action?companyid=${listPosandcom.companyid}"> 
										<c:if test="${empty listPosandcom.companylogo}">
											<img alt="${listPosandcom.companyname}" src="style/images/logo_default.png">
										</c:if>
										<c:if test="${not empty listPosandcom.companylogo}">
											<img alt="${listPosandcom.companyname}" src="/pic/${listPosandcom.companylogo}">
										</c:if>
									</a>
										<div class="co_item">
											<h2 title="${listPosandcom.positionname}">
												<a target="_blank" href="jobdetail.action?positionid=${listPosandcom.positionid}&companyid=${listPosandcom.companyid}"> <em>${listPosandcom.positionname}</em>
													<span>（${listPosandcom.salarymin}k-${listPosandcom.salarymax}k）</span>
												</a>
											</h2>
											<span class="co_time">发布时间：<fmt:formatDate
											value="${listPosandcom.releasetime}"
											pattern="yyyy-MM-dd HH:mm" /></span>
											<div class="co_cate">${listPosandcom.companyname} / ${listPosandcom.workaddress} /
											 <c:if test="${listPosandcom.experience =='-1'}">
												不限 /
											</c:if> <c:if test="${listPosandcom.experience =='0'}">
												应届毕业生 /
											</c:if> <c:if test="${listPosandcom.experience =='1'}">
												至少1年 /
											</c:if> <c:if test="${listPosandcom.experience =='2'}">
												至少2年 /
											</c:if> <c:if test="${listPosandcom.experience =='3'}">
												至少3年 /
											</c:if> <c:if test="${listPosandcom.experience =='4'}">
												至少4年 /
											</c:if> <c:if test="${listPosandcom.experience =='5'}">
												至少5年 /
											</c:if> <c:if test="${listPosandcom.experience =='6'}">
												至少6年 /
											</c:if> <c:if test="${listPosandcom.experience =='7'}">
												至少7年 /
											</c:if> <c:if test="${listPosandcom.experience =='8'}">
												至少8年 /
											</c:if> <c:if test="${listPosandcom.experience =='9'}">
												至少9年 /
											</c:if> <c:if test="${listPosandcom.experience =='10'}">
												至少10年 /
											</c:if> <c:if test="${listPosandcom.experience =='11'}">
												10年及以上 /
											</c:if>
											<c:if  test="${listPosandcom.education =='0'}">
												不限
											</c:if> <c:if test="${listPosandcom.education =='1'}">
												大专 
											</c:if> <c:if test="${listPosandcom.education =='2'}">
												本科 
											</c:if> <c:if test="${listPosandcom.education =='3'}">
												硕士 
											</c:if> <c:if test="${listPosandcom.education =='4'}">
												博士
											</c:if>
											</div>
											<span class="co_youhuo c7">${listPosandcom.positionadvantage}</span> <a
												class="collection_link" target="_blank"
												href="jobdetail.action?positionid=${listPosandcom.positionid}&companyid=${listPosandcom.companyid}">投个简历</a> <i></i> <a
												class="collectionCancel collection_link collected"
												href="javascript:void(0);" onclick="concelcollection(${userid},${listPosandcom.positionid});" title="取消收藏"> 取消收藏 
											</a>
										</div>
									</li>
								</c:forEach>
								</ul>
							</form>
						</dd>
					</dl>
				</div>
				<div class="content_r">
					<div class="mycenterR" id="myInfo">
						<h2>我的信息</h2>
						<a target="_blank" href="jianli.action">我的简历</a> <br> 
						<a target="_blank" href="collections.action">我收藏的职位</a> <br> 
						<a target="_blank" href="delivery.action">我投递的职位</a> <br> 
						<a target="_blank" href="mlist.action?page=1">我的推荐</a> <br> 
						<a target="_blank" href="certification.action">我的资格认证</a> <br> 
					</div>
					<!--end #myInfo-->
					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="师聘微信公众号二维码"
							src="style/images/qr_delivery.png"> <span class="c7">扫描师聘二维码，微信轻松搜工作</span>
					</div>
				</div>
			</div>
			<script src="style/js/collections.min.js"></script>
			<script>
				$(function() {
					$('.Pagination').pager({
						currPage : 1,
						pageNOName : "pageNo",
						form : "collectionsForm",
						pageCount : 1,
						pageSize : 5
					});
				});
			</script>
			<div class="clear"></div>
			<input type="hidden" value="4c6ae41d8c254f91becdb5f9ef2d4394"
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

	<!--  -->

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
<script type="text/javascript">
function concelcollection(userid,positionid) {
	$.ajax({
		type : "post",
		url : "concelcollection.action",
		dateType : "text",
		data : {
			userid : userid,
			positionid : positionid
		},
		success : function(data) {
			window.location.reload();
		},
		error : function() {
			window.location.reload();
		}
	});
}
</script>
</body>
</html>