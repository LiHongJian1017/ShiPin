<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的投递记录-招聘服务-师聘网-最专业的互联网招聘平台</title>
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
					<dl class="c_delivery">
						<dt>
							<h1>
								<em></em>已投递简历状态
							</h1>
							<a class="d_refresh" href="javascript:;">刷新</a>
						</dt>
						<dd>
							<div class="delivery_tabs">
								<ul class="reset">
									<li><a href="delivery.action">全部</a></li>
									<li class="current"><a href="deliverysuccess.action">投递成功</a></li>
									<!-- <li><a href="deliverylook.action">被查看</a></li> -->
									<li><a href="deliverypass.action">通过初筛</a></li>
									<li><a href="deliveryinterview.action">通知面试</a></li>
									<li><a href="deliveryno.action">不合适</a></li>
									<li class="last"><a href="deliveryinvalid.action">&nbsp;&nbsp;失效</a></li>
								</ul>
							</div>
							<form id="deliveryForm">
							<c:forEach items="${listPosandcomanddel}" var="listPosandcomanddel">
								<ul class="reset my_delivery">
									<li>
										<div class="d_item">
											<h2 title="${listPosandcomanddel.positionname}">
												<a target="_blank"
													href="jobdetail.action?positionid=${listPosandcomanddel.positionid}&companyid=${listPosandcomanddel.companyid}"> <em>${listPosandcomanddel.positionname}</em>
													<span>（${listPosandcomanddel.salarymin}k-${listPosandcomanddel.salarymax}k）</span> <!--  -->
												</a>
											</h2>
											<div class="clear"></div>
											<a title="${listPosandcomanddel.companyname}" class="d_jobname" target="_blank"
												href="companydetail.action?companyid=${listPosandcomanddel.companyid}"> ${listPosandcomanddel.companyname} <span>[${listPosandcomanddel.workaddress}]</span>
											</a> <span class="d_time"><fmt:formatDate
										value="${listPosandcomanddel.updatetime}"
										pattern="yyyy-MM-dd HH:mm" /></span>
											<div class="clear"></div>
											<div class="d_resume">
												使用简历： <span> <a target="_blank"
													href="deliverypreview.action?deliveryid=${listPosandcomanddel.deliveryid}">${listPosandcomanddel.jianliname} </a></span>
											</div>
											<a class="btn_showprogress" href="javascript:;"> 投递成功 <i></i></a>
										</div>
										<div class="progress_status	dn">`
											
											<ul class="status_list">
												<li class="top">
													<div class="list_body">
														<div>您的简历已收到,请静候佳音。</div>
													</div>
												</li>
											</ul>
											<a class="btn_closeprogress" href="javascript:;"></a>
										</div>
									</li>
								</ul>
							</c:forEach>
								<input type="hidden" value="-1" name="tag"> <input
									type="hidden" value="" name="r">
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
					<div class="mycenterR" id="myRecommend">
						<h2>
							可能适合你的职位 <i>Go</i>
						</h2>
						<ul class="reset">
						<c:forEach items="${listPosandcom}" var="listPosandcom">
							<li><a target="_blank"
								href="jobdetail.action?positionid=${listPosandcom.positionid}&companyid=${listPosandcom.companyid}"> <span
									class="f16">${listPosandcom.positionname}</span> <span class="c7">${listPosandcom.companyname}</span> <em>Go</em>
							</a></li>
						</c:forEach>
						</ul>
						<a target="_blank" class="more" href="mlist.action?page=1">更多推荐职位&gt;&gt;</a>
					</div>
					<!--end #myRecommend-->
					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="师聘微信公众号二维码"
							src="style/images/qr_delivery.png"> <span class="c7">扫描师聘二维码，微信轻松搜工作</span>
					</div>
				</div>
			</div>
			<input type="hidden" id="userid" name="userid" value="314873">
			<div class="dn" id="recordPopBox">
				<dl>
					<dt>
						评价面试体验 <a class="boxclose" href="javascript:;"></a>
					</dt>
					<dd>
						<form id="recordForm">
							<input type="hidden" value="" id="recordId">
							<ul id="interviewResult" class="record_radio clearfix">
								<li class="mr35">已收到offer <input type="radio" name="type"
									value="1">
								</li>
								<li>未收到offer <input type="radio" name="type" value="2">
								</li>
							</ul>
							<div class="dividebtm">
								<table>
									<tbody>
										<tr>
											<td width="80" valign="top" align="right">面试评分：</td>
											<td>
												<ul id="recordStarSelect">
													<li></li>
													<li></li>
													<li></li>
													<li></li>
													<li></li>
												</ul> <input type="hidden" id="recordStar" value=""
												name="recordStar">
												<div class="clear"></div>
											</td>
										</tr>
										<tr>
											<td valign="top" align="right" class="dividebtman">面试短评：</td>
											<td><input type="hidden" class="error"
												id="select_record_hidden" value="" name="record"> <input
												type="text" autocomplete="off" placeholder="15字以内对面试的简单描述哦"
												id="select_record" class="selectr_340" maxlength="15">
												<div class="boxUpDownan boxUpDown_340 dn" id="box_record"
													style="display: none;">
													<ul>
														<p>热门短评：</p>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td valign="top" align="right" class="dividebtman">面试经历：</td>
											<td><textarea id="interviewDesc"
													placeholder="记录下自己的面试经历" style="width: 320px;"></textarea>
												<div class="word_count">
													你还可以输入 <span>500</span> 字
												</div>
												<div id="showName" class="f14 c7">
													<label class="checkbox"> <input type="checkbox">
														<i></i>
													</label> 匿名提交
												</div> <input type="hidden" value="" id="isShowName"> <input
												type="hidden" value="" id="senduid"> <input
												type="hidden" value="" id="poid"> <input
												type="hidden" value="" id="deid"></td>
										</tr>
										<tr>
											<td align="right" colspan="2"><input type="submit"
												value="确认提交" class="submitRecord btn_small"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</form>
					</dd>
				</dl>
			</div>
			<!-- end #recordPopBox -->
			<script src="style/js/delivery.js"></script>
			<script>
				$(function() {
					//location.reload(true);

					$('.Pagination').pager({
						currPage : 1,
						pageNOName : "pageNo",
						form : "deliveryForm",
						pageCount : 1,
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
</body>
</html>