<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>拉勾网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站">
<meta name="keywords"
	content="师聘,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
	var ctx = "http://www.lagou.com";
	console.log(1);
</script>
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
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a class="logo" href="index.action"> <img width="229" height="43"
					alt="拉勾招聘-专注互联网招聘" src="style/images/logo.png">
				</a>
				<ul class="reset" id="navheader">
					<li><a href="index.action">首页</a></li>
					<li><a href="joblist.action">职位</a></li>
					<li><a href="companylist.action">公司</a></li>
					<!-- <li ><a href="jianli" rel="nofollow">我的简历</a></li>
                <li ><a href="create" rel="nofollow">发布职位</a></li>-->
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
				<div class="content_l recommend_list">
					<h2>
						师聘网根据你的个人简历为你推荐以下职位： <a class="more" href="jianli.action">修改简历信息&gt;&gt;</a>
					</h2>

					<ul class="hot_pos reset">
						<c:if test="${pageall=='0'}">
							<br>
							<br>
							<br>
							<div class="filter_tip">
								很抱歉 &nbsp; &nbsp;<a><span>没查询到相符</span></a>的职位信息。 <span> &nbsp;</span>&nbsp;<br>
								您可以&nbsp; &nbsp;<a class="more" href="jianli.action"><span >更新简历信息</span></a>,获取其他推荐职位。 
							</div>
						</c:if>
						<c:forEach items="${listPosandcom}" var="listPosandcom">
						<li class="odd clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a
										href="jobdetail.action?positionid=${listPosandcom.positionid}&companyid=${listPosandcom.companyid}"
										title="${listPosandcom.positionname}" target="_blank">${listPosandcom.positionname}</a>
									&nbsp; <span class="c9">[${listPosandcom.workaddress}]</span>
								</div>
								<span><em class="c7">月薪：</em>${listPosandcom.salarymin}k-${listPosandcom.salarymax}k</span>
								<span><em class="c7">经验：</em> <c:if
										test="${listPosandcom.experience =='-1'}">
									不限
								</c:if> <c:if test="${listPosandcom.experience =='0'}">
									应届毕业生
								</c:if> <c:if test="${listPosandcom.experience =='1'}">
									至少1年
								</c:if> <c:if test="${listPosandcom.experience =='2'}">
									至少2年
								</c:if> <c:if test="${listPosandcom.experience =='3'}">
									至少3年
								</c:if> <c:if test="${listPosandcom.experience =='4'}">
									至少4年
								</c:if> <c:if test="${listPosandcom.experience =='5'}">
									至少5年
								</c:if> <c:if test="${listPosandcom.experience =='6'}">
									至少6年
								</c:if> <c:if test="${listPosandcom.experience =='7'}">
									至少7年
								</c:if> <c:if test="${listPosandcom.experience =='8'}">
									至少8年
								</c:if> <c:if test="${listPosandcom.experience =='9'}">
									至少9年
								</c:if> <c:if test="${listPosandcom.experience =='10'}">
									至少10年
								</c:if> <c:if test="${listPosandcom.experience =='11'}">
									10年及以上
								</c:if> </span> <span><em class="c7">最低学历：</em> <c:if
										test="${listPosandcom.education =='0'}">
									不限
								</c:if> <c:if test="${listPosandcom.education =='1'}">
									大专 
								</c:if> <c:if test="${listPosandcom.education =='2'}">
									本科 
								</c:if> <c:if test="${listPosandcom.education =='3'}">
									硕士 
								</c:if> <c:if test="${listPosandcom.education =='4'}">
									博士
								</c:if> </span> <br /> <span><em class="c7">职位诱惑：</em>${listPosandcom.positionadvantage}</span>
								<br /> <span><fmt:formatDate
										value="${listPosandcom.releasetime}"
										pattern="yyyy-MM-dd HH:mm" />&nbsp;&nbsp;发布</span>
							</div>
							<div class="hot_pos_r">
								<div class="apply">
									<a href="jobdetail.action?positionid=${listPosandcom.positionid}&companyid=${listPosandcom.companyid}"
										title="${listPosandcom.positionname}" target="_blank">投个简历</a>
								</div>
								<div class="mb10">
									<a
										href="companydetail.action?companyid=${listPosandcom.companyid}"
										target="_blank" title="${listPosandcom.companyname}"
										target="_blank">${listPosandcom.companyname}</a>
								</div>
								<span><em class="c7">类型： </em>${listPosandcom.companytype}</span>
								<span><em class="c7">创始人：</em>
									${listPosandcom.companyceoname}</span> <br /> <span><em
									class="c7">规模： </em>${listPosandcom.companysize}</span>
								<ul class="companyTags reset">
									<c:if test="${not empty listPosandcom.companytag1}">
										<li>${listPosandcom.companytag1}</li>
									</c:if>
									<c:if test="${not empty listPosandcom.companytag2}">
										<li>${listPosandcom.companytag2}</li>
									</c:if>
									<c:if test="${not empty listPosandcom.companytag3}">
										<li>${listPosandcom.companytag3}</li>
									</c:if>
									<c:if test="${not empty listPosandcom.companytag4}">
										<li>${listPosandcom.companytag4}</li>
									</c:if>
									<c:if test="${not empty listPosandcom.companytag5}">
										<li>${listPosandcom.companytag5}</li>
									</c:if>
								</ul>
							</div>
						</li>
					</c:forEach>
					</ul>
					
					<br> <br> <br>
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
				<div class="content_r">
					<div class="subscribe_side">
						<a target="_blank" >
							<div class="subpos">
								<span>推荐</span> 职位
							</div>
							<br>
							<div class="c7">&nbsp;&nbsp;&nbsp;简历越详细,推荐越准确！！！</div>
							
						</a>
					</div>
					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="师聘微信公众号二维码"
							src="style/images/qrcode.jpg"> <span class="c7">扫描师聘二维码，微信轻松搜工作</span>
					</div>
				</div>
			</div>
			<input type="hidden" id="userid" name="userid" value="314873">
			<script>
				$(function() {

					/***************************
					 * 分页
					 */
					$('.Pagination').pager({
						currPage : 1,
						pageNOName : "pn",
						form : "searchForm",
						pageCount : 7,
						pageSize : 5
					});
				});
			</script>
			<div class="clear"></div>
			<input type="hidden" value="" id="resubmitToken"> <a
				rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
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
<script>
function fanye(yeshu){
	
	var page = yeshu; 
	window.location.href = "mlist.action?page="+page+""; 
}
</script>
</body>
</html>