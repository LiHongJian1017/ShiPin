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
<title>平潭协创进出口贸易有限公司-师聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description"
	content="平潭协创进出口贸易有限公司 福建平潭协创进出口贸易有限公司 上海 移动互联网 天使轮 150-500人 测试的发打发打发大范德萨发">
<meta name="keywords"
	content="平潭协创进出口贸易有限公司 福建平潭协创进出口贸易有限公司 上海 移动互联网 天使轮 150-500人 测试的发打发打发大范德萨发">
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
				<a class="logo" href="index.html"> <img width="229" height="43"
					alt="师聘招聘-专注互联网招聘" src="style/images/logo.png">
				</a>
				<ul class="reset" id="navheader">
					<li><a href="index.action">首页</a></li>
					<li><a href="joblist.action">职位</a></li>
					<li><a href="companylist.action">公司</a></li>
				</ul>
				<dl class="collapsible_menu">
					<dt>
						<span>Jerry&nbsp;</span> <span class="red dn" id="noticeDot-1"></span>
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
					<dd class="btm" style="display: none;">
						<a href="">我的订阅</a>
					</dd>
					<dd style="display: none;">
						<a href="">帐号设置</a>
					</dd>
					<dd class="logout" style="display: none;">
						<a rel="nofollow" href="logout.action">退出</a>
					</dd>
				</dl>
			</div>
		</div>
		<!-- end #header -->
		<div id="container">
			<!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
			<div class="clearfix">

				<div class="content_l">
					<div class="c_detail">
						<div style="background-color: #fff;" class="c_logo">
						<c:if test="${empty company.companylogo}">
							<a id="logoShow"> <img width="190" height="190"
								alt="${company.companyname}" src="style/images/logo_default.png"> 
							</a>
						</c:if>
						<c:if test="${not empty company.companylogo}">
							<a id="logoShow"> <img width="190" height="190"
								alt="${company.companyname}" src="/pic/${company.companylogo}"> 
							</a>
						</c:if>
						</div>
						<div class="c_box companyName">
							<h2 class="f1" title="${company.companyname}">${company.companyname}</h2>
							<c:if test="${empty lianheposition}">
								<em class="unvalid"></em> <span class="va dn">师聘未认证企业</span> 
							</c:if>
							<c:if test="${not empty lianheposition}">
								<em class="valid"><img src="style/images/valid.png" width="15" height="19" alt="师聘认证企业"></em>
							<span class="va dn">师聘认证企业</span>
							</c:if>
							
							<div class="clear"></div>
							<h1 title="${company.companyname}" class="fullname">${company.companyname}</h1>

							<div class="clear oneword">
								<img width="17" height="15" src="style/images/quote_l.png">&nbsp;
								<span>${company.companyfeatures}</span> &nbsp;<img width="17" height="15"
									src="style/images/quote_r.png">
							</div>
							<h3 class="dn">已选择标签</h3>
							<ul style="overflow: auto" id="hasLabels" class="reset clearfix">
								<c:if test="${not empty company.companytag1}">
									<li><span>${company.companytag1}</span></li>
								</c:if>
								<c:if test="${not empty company.companytag2}">
									<li><span>${company.companytag2}</span></li>
								</c:if>
								<c:if test="${not empty company.companytag3}">
									<li><span>${company.companytag3}</span></li>
								</c:if>
								<c:if test="${not empty company.companytag4}">
									<li><span>${company.companytag4}</span></li>
								</c:if>
								<c:if test="${not empty company.companytag5}">
									<li><span>${company.companytag5}</span></li>
								</c:if>
							</ul>
						</div>
						<div class="clear"></div>
					</div>

					<div class="c_breakline"></div>

					<!-- end #Product -->

					<div id="Profile">
						<div class="profile_wrap">
							<!--无介绍 -->
							<dl class="c_section dn">
								<dt>
									<h2>
										<em></em>公司介绍
									</h2>
								</dt>
							</dl>
							<!--介绍-->
							<dl class="c_section">
								<dt>
									<h2>
										<em></em>公司介绍
									</h2>
								</dt>
								<dd>
									<div class="c_intro">${company.companyintroduce}</div>
								</dd>
							</dl>
						</div>

					</div>
					<!-- end #Profile -->

					<!--[if IE 7]> <br /> <![endif]-->

					<!--无招聘职位-->
					<dl id="noJobs" class="c_section">
						<dt>
							<h2>
								<em></em>招聘职位
							</h2>
						</dt>
						<dd>
						<form id="searchForm">
						<c:if test="${empty listPosition}">
							<br>
							<br>
							<div class="filter_tip">
								该公司 &nbsp; &nbsp;<span>没有</span>发布职位 <span> &nbsp;</span>&nbsp;
							</div>
						</c:if>
						<c:forEach items="${listPosition}" var="listPosition">
							<ul class="reset my_jobs">
								<li data-id="">
									<h3>
										<a target="_blank" title="${listPosition.positionname}"
											href="jobdetail.action?positionid=${listPosition.positionid}&companyid=${listPosition.companyid}">${listPosition.positionname}</a> <span>[${listPosition.workaddress}]</span>
									</h3> 
									<div>${listPosition.positionnature} / ${listPosition.salarymin}k-${listPosition.salarymax}k /
											<c:if test="${listPosition.experience =='-1'}">
												不限 /
											</c:if><c:if test="${listPosition.experience =='0'}">
												应届毕业生 /
											</c:if> <c:if test="${listPosition.experience =='1'}">
												至少1年 /
											</c:if> <c:if test="${listPosition.experience =='2'}">
												至少2年 /
											</c:if> <c:if test="${listPosition.experience =='3'}">
												至少3年 /
											</c:if> <c:if test="${listPosition.experience =='4'}">
												至少4年 /
											</c:if> <c:if test="${listPosition.experience =='5'}">
												至少5年 /
											</c:if> <c:if test="${listPosition.experience =='6'}">
												至少6年 /
											</c:if> <c:if test="${listPosition.experience =='7'}">
												至少7年 /
											</c:if> <c:if test="${listPosition.experience =='8'}">
												至少8年 /
											</c:if> <c:if test="${listPosition.experience =='9'}">
												至少9年 /
											</c:if> <c:if test="${listPosition.experience =='10'}">
												至少10年 /
											</c:if> <c:if test="${listPosition.experience =='11'}">
												10年及以上 /
											</c:if> 
											<c:if test="${listPosition.education =='0'}">
												不限
											</c:if><c:if test="${listPosition.education =='1'}">
												大专 
											</c:if> <c:if test="${listPosition.education =='2'}">
												本科 
											</c:if> <c:if test="${listPosition.education =='3'}">
												硕士 
											</c:if> <c:if test="${listPosition.education =='4'}">
												博士
											</c:if>
									 </div>
									<div class="c9" style="text-align:right">发布时间：<fmt:formatDate value="${listPosition.releasetime}" pattern="yyyy-MM-dd HH:mm:ss" /></div>
								</li>
							</ul>
						</c:forEach>
							
						</form>
						</dd>
					</dl>

					<input type="hidden" value="" name="hasNextPage" id="hasNextPage">
					<input type="hidden" value="" name="pageNo" id="pageNo"> <input
						type="hidden" value="" name="pageSize" id="pageSize">
					<div id="flag"></div>
				</div>
				<!-- end .content_l -->

				<div class="content_r">
					<div id="Tags">
						<div id="c_tags_show" class="c_tags solveWrap">
							<table>
								<tbody>
									<tr>
										<td width="45">地点</td>
										<td>${company.companyaddress}</td>
									</tr>
									<tr>
										<td>类型</td>
										<!-- 支持多选 -->
										<td title="${company.companytype}">${company.companytype}</td>
									</tr>
									<tr>
										<td>规模</td>
										<td>${company.companysize}</td>
									</tr>
									<tr>
										<td>主页</td>
										<td><a rel="nofollow" title="${company.companyweb}"
											target="_blank" href="http://${company.companyweb}">${company.companyweb}</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- end #Tags -->
					<br><br>
					<div id="Member">
						<!--有创始团队-->
						<dl class="c_section c_member">
							<dt>
								<h2>
									<em></em>创始人
								</h2>
							</dt>
							<dd>

								<div class="member_wrap">

									<!-- 无创始人 -->
									<div class="member_info addnew_right dn">
										展示公司的领导班子，<br>提升诱人指数！<br> 
									</div>


									<!-- 显示创始人 -->
									<div class="member_info">
										<div class="m_portrait">
											<div></div>
											<c:if test="${empty company.companyceologo}">
											<img width="120" height="120" alt="${company.companyceoname}"
												src="style/images/leader_default.png">
											</c:if>
											<c:if test="${not empty company.companyceologo}">
											<img width="120" height="120" alt="${company.companyceoname}"
												src="/pic/${company.companyceologo}">
											</c:if>
										</div>
										<div class="m_name">
											${company.companyceoname} <a target="_blank" class="weibo"
												href="http://${company.companyceoweibo}"></a>
										</div>
										<div class="m_position">${company.companyceoposition}</div>
										<div class="m_intro">${company.companyceoremark}</div>
									</div>

								</div>
								<!-- end .member_wrap -->
							</dd>
						</dl>
					</div>
					<!-- end #Member -->


					
					</div>
					<!-- end #Reported -->

				</div>
			

			<!-------------------------------------弹窗lightbox  ----------------------------------------->
			<div style="display: none;">
				<div style="width: 650px; height: 470px;" class="popup"
					id="logoUploader">
					<object width="650" height="470"
						classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="FlashID">
						<param
							value="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json"
							name="movie">
						<param value="high" name="quality">
						<param value="opaque" name="wmode">
						<param value="111.0.0.0" name="swfversion">
						<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
						<param value="../../Scripts/expressInstall.swf"
							name="expressinstall">
						<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
						<!--[if !IE]>-->
						<object width="650" height="470"
							data="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json"
							type="application/x-shockwave-flash">
							<!--<![endif]-->
							<param value="high" name="quality">
							<param value="opaque" name="wmode">
							<param value="111.0.0.0" name="swfversion">
							<param value="../../Scripts/expressInstall.swf"
								name="expressinstall">
							<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
							<div>
								<h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
								<p>
									<a href="http://www.adobe.com/go/getflashplayer"><img
										width="112" height="33"
										src="style/images/get_flash_player.gif"
										alt="获取 Adobe Flash Player"></a>
								</p>
							</div>
							<!--[if !IE]>-->
						</object>
						<!--<![endif]-->
					</object>
				</div>
				<!-- #logoUploader -->
			</div>
			<!------------------------------------- end ----------------------------------------->

			<script src="style/js/company.min.js" type="text/javascript"></script>
			<script>
				var avatar = {};
				avatar.uploadComplate = function(data) {
					var result = eval('(' + data + ')');
					if (result.success) {
						jQuery('#logoShow img').attr("src",
								ctx + '/' + result.content);
						jQuery.colorbox.close();
					}
				};
			</script>
			<div class="clear"></div>
			<input type="hidden" value="d1035b6caa514d869727cff29a1c2e0c"
				id="resubmitToken"> <a rel="nofollow" title="回到顶部"
				id="backtop" style="display: inline;"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a> <a
				target="_blank" href="http://www.lagou.com/af/zhaopin.html">互联网公司导航</a>
			<a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">师聘微博</a>
			<a rel="nofollow" href="javascript:void(0)" class="footer_qr">师聘微信<i></i></a>
			<div class="copyright">
				&copy;2017-2019 师聘 <a
					href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action"
					target="_blank">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script src="style/js/core.min.js" type="text/javascript"></script>
	<script src="style/js/popup.min.js" type="text/javascript"></script>

	<!--  -->


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