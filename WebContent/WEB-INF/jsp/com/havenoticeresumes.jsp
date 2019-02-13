<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
	
<!-- fenye -->
<link href="style/css/fenye.css" rel="stylesheet">
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>师聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="师聘网是3W旗下的互联网领域垂直招聘网站">
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
				<ul id="navheader" class="reset">
					<li><a href="myhome.action">公司主页</a></li>
					<li><a href="createjob.action">发布的职位</a></li>
					<li class="current"><a href="caninterviewresumes.action">收到的简历</a></li>
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
				<dl class="company_center_aside">
					<dt>收到的简历</dt>
					<dd>
						<a href="caninterviewresumes.action">待处理简历</a>
					</dd>
					<dd>
						<a href="interviewresumes.action">待定简历</a>
					</dd>
					<dd class="current">
						<a href="havenoticeresumes.action">已通知面试简历</a>
					</dd>
					<dd>
						<a href="haverefuseresumes.action">不合适简历</a>
					</dd>
					<dd class="btm">
						<a href="autofilterresumes.action">自动过滤简历</a>
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
							<em></em> 已通知面试简历 <span>（共${count}份）</span>
						</h1>
					</dt>
					<dd>
						<form>
							<div class="filter_actions">
								 <span>筛选条件:</span>
								&emsp;&emsp; ${experience} || ${education}
								<c:if test="${empty listDelivery}">
								&emsp;&emsp;&emsp;&emsp;（未查询到符合条件的结果！）
								</c:if>
								<div id="filter_btn" class="">
									筛选简历 <em class=""></em>
								</div>
							</div>
							<!-- end .filter_actions -->
							<div class="filter_options  dn " style="display: none;">
								<dl>
									<dt>工作经验：</dt>
									<c:if test="${experience == '不限'}">
									<dd>
										<a class="current" onclick="tiaojian('不限','${education}');">不限</a>
										<a onclick="tiaojian('应届毕业生','${education}');">应届毕业生</a>
										<a onclick="tiaojian('1年至3年','${education}');">1年至3年</a> 
										<a onclick="tiaojian('3年至5年','${education}');">3年至5年</a>
										<a onclick="tiaojian('5年至10年','${education}');">5年至10年</a> 
										<a onclick="tiaojian('10年及以上','${education}');">10年及以上</a>
										<input type="hidden" value="-1" name="workExp">
									</dd>
									</c:if>
									<c:if test="${experience == '应届毕业生'}">
									<dd>
										<a onclick="tiaojian('不限','${education}');">不限</a>
										<a class="current" onclick="tiaojian('应届毕业生','${education}');">应届毕业生</a>
										<a onclick="tiaojian('1年至3年','${education}');">1年至3年</a> 
										<a onclick="tiaojian('3年至5年','${education}');">3年至5年</a>
										<a onclick="tiaojian('5年至10年','${education}');">5年至10年</a> 
										<a onclick="tiaojian('10年及以上','${education}');">10年及以上</a>
										<input type="hidden" value="-1" name="workExp">
									</dd>
									</c:if>
									<c:if test="${experience == '1年至3年'}">
									<dd>
										<a onclick="tiaojian('不限','${education}');">不限</a>
										<a onclick="tiaojian('应届毕业生','${education}');">应届毕业生</a>
										<a class="current" onclick="tiaojian('1年至3年','${education}');">1年至3年</a> 
										<a onclick="tiaojian('3年至5年','${education}');">3年至5年</a>
										<a onclick="tiaojian('5年至10年','${education}');">5年至10年</a> 
										<a onclick="tiaojian('0年及以上','${education}');">10年及以上</a>
										<input type="hidden" value="-1" name="workExp">
									</dd>
									</c:if>
									<c:if test="${experience == '3年至5年'}">
									<dd>
										<a onclick="tiaojian('不限','${education}');">不限</a>
										<a onclick="tiaojian('应届毕业生','${education}');">应届毕业生</a>
										<a onclick="tiaojian('1年至3年','${education}');">1年至3年</a> 
										<a class="current" onclick="tiaojian('3年至5年','${education}');">3年至5年</a>
										<a onclick="tiaojian('5年至10年','${education}');">5年至10年</a> 
										<a onclick="tiaojian('10年及以上','${education}');">10年及以上</a>
										<input type="hidden" value="-1" name="workExp">
									</dd>
									</c:if>
									<c:if test="${experience == '5年至10年'}">
									<dd>
										<a onclick="tiaojian('不限','${education}');">不限</a>
										<a onclick="tiaojian('应届毕业生','${education}');">应届毕业生</a>
										<a onclick="tiaojian('1年至3年','${education}');">1年至3年</a> 
										<a onclick="tiaojian('3年至5年','${education}');">3年至5年</a>
										<a class="current" onclick="tiaojian('5年至10年','${education}');">5年至10年</a> 
										<a onclick="tiaojian('10年及以上','${education}');">10年及以上</a>
										<input type="hidden" value="-1" name="workExp">
									</dd>
									</c:if>
									<c:if test="${experience == '10年及以上'}">
									<dd>
										<a onclick="tiaojian('不限','${education}');">不限</a>
										<a onclick="tiaojian('应届毕业生','${education}');">应届毕业生</a>
										<a onclick="tiaojian('1年至3年','${education}');">1年至3年</a> 
										<a onclick="tiaojian('3年至5年','${education}');">3年至5年</a>
										<a onclick="tiaojian('5年至10年','${education}');">5年至10年</a> 
										<a class="current" onclick="tiaojian('10年及以上','${education}');">10年及以上</a>
										<input type="hidden" value="-1" name="workExp">
									</dd>
									</c:if>
								</dl>
								<dl>
									<dt>最低学历：</dt>
									<c:if test="${education == '不限'}">
									<dd>
										<a class="current" onclick="tiaojian('${experience}','不限');">不限</a> 
										<a onclick="tiaojian('${experience}','大专及以上');">大专及以上</a> 
										<a onclick="tiaojian('${experience}','本科及以上');">本科及以上</a> 
										<a onclick="tiaojian('${experience}','硕士及以上');">硕士及以上</a>
										<a onclick="tiaojian('${experience}','博士及以上');">博士及以上</a> 
										<input type="hidden" value="-1" name="eduExp">
									</dd>
									</c:if>
									<c:if test="${education == '大专及以上'}">
									<dd>
										<a onclick="tiaojian('${experience}','不限');">不限</a> 
										<a class="current" onclick="tiaojian('${experience}','大专及以上');">大专及以上</a> 
										<a onclick="tiaojian('${experience}','本科及以上');">本科及以上</a> 
										<a onclick="tiaojian('${experience}','硕士及以上');">硕士及以上</a>
										<a onclick="tiaojian('${experience}','博士及以上');">博士及以上</a> 
										<input type="hidden" value="-1" name="eduExp">
									</dd>
									</c:if>
									<c:if test="${education == '本科及以上'}">
									<dd>
										<a onclick="tiaojian('${experience}','不限');">不限</a> 
										<a onclick="tiaojian('${experience}','大专及以上');">大专及以上</a> 
										<a class="current" onclick="tiaojian('${experience}','本科及以上');">本科及以上</a> 
										<a onclick="tiaojian('${experience}','硕士及以上');">硕士及以上</a>
										<a onclick="tiaojian('${experience}','博士及以上');">博士及以上</a> 
										<input type="hidden" value="-1" name="eduExp">
									</dd>
									</c:if>
									<c:if test="${education == '硕士及以上'}">
									<dd>
										<a onclick="tiaojian('${experience}','不限');">不限</a> 
										<a onclick="tiaojian('${experience}','大专及以上');">大专及以上</a> 
										<a onclick="tiaojian('${experience}','本科及以上');">本科及以上</a> 
										<a class="current" onclick="tiaojian('${experience}','硕士及以上');">硕士及以上</a>
										<a onclick="tiaojian('${experience}','博士及以上');">博士及以上</a> 
										<input type="hidden" value="-1" name="eduExp">
									</dd>
									</c:if>
									<c:if test="${education == '博士及以上'}">
									<dd>
										<a onclick="tiaojian('${experience}','不限');">不限</a> 
										<a onclick="tiaojian('${experience}','大专及以上');">大专及以上</a> 
										<a onclick="tiaojian('${experience}','本科及以上');">本科及以上</a> 
										<a onclick="tiaojian('${experience}','硕士及以上');">硕士及以上</a>
										<a class="current" onclick="tiaojian('${experience}','博士及以上');">博士及以上</a> 
										<input type="hidden" value="-1" name="eduExp">
									</dd>
									</c:if>
								</dl>
								<input type="hidden" value="0" name="filterStatus"
									id="filterStatus"> <input type="hidden" value=""
									name="positionId" id="positionId">
							</div>
							<!-- end .filter_options -->
							
							<c:forEach items="${listDelivery}" var="listDelivery">
								<ul class="reset resumeLists">
									<li data-id="" class="onlineResume">
										<div class="resumeShow">
											<a title="预览简历" target="_blank" class="resumeImg"
												href="auditpreview.action?deliveryid=${listDelivery.deliveryid}"> <img
												src="/pic/${listDelivery.image}">
											</a>
											<div class="resumeIntro">
												<h3 class="unread">
													<a target="_blank" title="预览简历" href="auditpreview.action?deliveryid=${listDelivery.deliveryid}">
														${listDelivery.jianliname} </a> <em></em>
												</h3>
												<span class="fr">投递时间：<fmt:formatDate value="${listDelivery.updatetime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
												<div>
													${listDelivery.name} / ${listDelivery.sex} / 
													<c:if test="${listDelivery.education =='0'}">
													其他/
													</c:if>
													<c:if test="${listDelivery.education =='1'}">
													大专/
													</c:if>
													<c:if test="${listDelivery.education =='2'}">
													本科 /
													</c:if>
													<c:if test="${listDelivery.education =='3'}">
													硕士 /
													</c:if>
													<c:if test="${listDelivery.education =='4'}">
													博士 /
													</c:if>
													
													<c:if test="${listDelivery.experience =='0'}">
													应届毕业生/
													</c:if>
													<c:if test="${listDelivery.experience =='1'}">
													1年/
													</c:if>
													<c:if test="${listDelivery.experience =='2'}">
													2年/
													</c:if>
													<c:if test="${listDelivery.experience =='3'}">
													3年/
													</c:if>
													<c:if test="${listDelivery.experience =='4'}">
													4年/
													</c:if>
													<c:if test="${listDelivery.experience =='5'}">
													5年/
													</c:if>
													<c:if test="${listDelivery.experience =='6'}">
													6年/
													</c:if>
													<c:if test="${listDelivery.experience =='7'}">
													7年/
													</c:if>
													<c:if test="${listDelivery.experience =='8'}">
													8年/
													</c:if>
													<c:if test="${listDelivery.experience =='9'}">
													9年/
													</c:if>
													<c:if test="${listDelivery.experience =='10'}">
													10年/
													</c:if>
													<c:if test="${listDelivery.experience =='11'}">
													10年以上/
													</c:if>
													${listDelivery.workaddress} <br> 
													
													${listDelivery.schoolname} / 
													<c:if test="${empty listDelivery.certification}">
														无资格认证
													</c:if>
													<c:if test="${not empty listDelivery.certification}">
														${listDelivery.certification}
													</c:if>
												</div>
												<div class="jdpublisher">
													<span> 应聘职位：<a title="${listDelivery.positionname}" target="_blank"
														href="">${listDelivery.positionname}</a>
													</span>
												</div>
											</div>
											<div class="links">
												<a href="Mailto:${listDelivery.email}">通知面试</a> <a
													data-deliverid="1686182" class="resume_refuse"
													href="deliverystatus.action?deliveryid=${listDelivery.deliveryid}&status=5&flag=2">删除</a>
												</a>
											</div>
										</div>
										<div class="contactInfo">
											<span class="c9">电话：</span>${listDelivery.phone} &nbsp;&nbsp;&nbsp; <span
												class="c9">邮箱：</span><a href="mailto:${listDelivery.email}">${listDelivery.email}</a>
										</div></li>
								</ul>
							</c:forEach>
							<c:if test="${experience == '不限' && education == '不限'}">
								<div style="float:right;margin-right:40px;">
									<itcast:page url="havenoticeresumes.action"  />
								</div>
							</c:if>
							<c:if test="${experience != '不限' || education != '不限'}">
								<div style="float:right;margin-right:40px;">
									<itcast:page url="havenoticeresumestiaojian.action" />
								</div>
							</c:if>
							<!-- end .resumeLists -->
						</form>
					</dd>
				</dl>
				<!-- end .company_center_content -->
			</div>
			<!-- end .content -->

			<!------------------------------------- 弹窗lightbox ----------------------------------------->
			<div style="display: none;">
				<!--通知面试弹窗-->
				<div style="overflow: auto;" class="popup" id="noticeInterview">
					<form id="noticeInterviewForm">
						<table width="100%" class="f16">
							<tbody>
								<tr>
									<td width="20%" align="right" class="c9">收件人</td>
									<td width="80%"><span class="c9" id="receiveEmail"></span>
										<input type="hidden" value="" name="email"></td>
								</tr>
								<tr>
									<td align="right"><span class="redstar">*</span>主题</td>
									<td><input type="text" placeholder="公司：职位名称面试通知"
										name="subject"></td>
								</tr>
								<tr>
									<td align="right"><span class="redstar">*</span>面试时间</td>
									<td><input type="text" id="datetimepicker"
										name="interTime" class="hasDatepicker"></td>
								</tr>
								<tr>
									<td align="right"><span class="redstar">*</span>面试地点</td>
									<td><input type="text" name="interAdd"></td>
								</tr>
								<tr>
									<td align="right">联系人</td>
									<td><input type="text" name="linkMan"></td>
								</tr>
								<tr>
									<td align="right"><span class="redstar">*</span>联系电话</td>
									<td><input type="text" name="linkPhone"></td>
								</tr>
								<tr>
									<td valign="top" align="right">补充内容</td>
									<td><textarea name="content"></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" value="发送" class="btn"> <a
										class="emailPreview" href="javascript:;">预览</a></td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" value="" name="name"> <input
							type="hidden" value="" name="positionName"> <input
							type="hidden" value="" name="companyName"> <input
							type="hidden" value="" name="deliverId">
					</form>
				</div>
				<!--/#noticeInterview-->

				<!--预览通知面试弹窗-->
				<div class="popup" id="noticeInterviewPreview">
					<div class="f18">师聘网：产品经理面试通知</div>
					<div class="c9">
						发给：<span>vivi@lagou.com</span>
					</div>
					<div id="emailText"></div>
					<input type="button" value="提交" class="btn fl"> <a
						title="通知面试" class="inline fl cboxElement" href="#noticeInterview">返回修改</a>
				</div>
				<!--/#noticeInterviewPreview-->

				<!--通知面试成功弹窗-->
				<div class="popup" id="noticeInterviewSuccess">
					<table width="100%" class="f16">
						<tbody>
							<tr>
								<td align="center" class="f16">面试通知已发送成功<br>
									该简历已进入“已通知面试简历”列表
								</td>
							</tr>
							<tr>
								<td align="center"><input type="button" value="确认"
									class="btn"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#noticeInterviewSuccess-->

				<!--转发简历弹窗-->
				<div class="popup" id="forwardResume">
					<form id="forwardResumeForm">
						<table width="100%" class="f16">
							<tbody>
								<tr>
									<td width="20%" align="right">收件人</td>
									<td width="80%"><input type="text"
										placeholder="最多可添加两个邮箱，用“；”隔开" id="recipients"
										name="recipients"> <span id="forwardResumeError"
										style="display: none" class="beError"></span></td>
								</tr>
								<tr>
									<td align="right">主题</td>
									<td><input type="text" value="" name="title"></td>
								</tr>
								<tr>
									<td valign="top" align="right">正文</td>
									<td><textarea name="content"></textarea> <span
										style="display: none;" class="beError error"></span></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" value="发送" class="btn"> <a
										class="emial_cancel" href="javascript:;">取消</a></td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" value="" name="resumeKey"> <input
							type="hidden" value="" name="positionId"> <input
							type="hidden" value="" name="deliverId">
					</form>
				</div>
				<!--/#forwardResume-->

				<!--转发简历成功弹窗-->
				<div class="popup" id="forwardResumeSuccess">
					<table width="100%" class="f16">
						<tbody>
							<tr>
								<td align="center" class="f16">简历已转发成功</td>
							</tr>
							<tr>
								<td align="center"><input type="button" value="确认"
									class="btn"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#forwardResumeSuccess-->

				<!--确认不合适弹窗-->
				<div style="height: 400px;" class="popup" id="confirmRefuse">
					<form id="refuseMailForm">
						<table width="100%">
							<tbody>
								<tr>
									<td>
										<div class="refuse_icon">
											<h3>确认这份简历不合适吗？</h3>
											<span>确认后，系统将自动发送以下内容至用户邮箱</span>
										</div>
									</td>
								</tr>
								<tr>
									<td><textarea name="content">非常荣幸收到您的简历，在我们仔细阅读您的简历之后，却不得不很遗憾的通知您：
您的简历与该职位的定位有些不匹配，因此无法进入面试。

但您的信息已录入我司人才储备库，当有合适您的职位开放时我们将第一时间联系您，希望在未来我们有机会成为一起拼搏的同事；
再次感谢您对我们的信任，祝您早日找到满意的工作。</textarea></td>
								</tr>
								<tr>
									<td><input type="submit" value="确认不合适" class="btn">
										<a class="emial_cancel" href="javascript:;">取消</a></td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" value="" name="deliverId">
					</form>
				</div>
				<!--/#confirmRefuse-->

				<!--拒绝email成功弹窗-->
				<div class="popup" id="refuseMailSuccess">
					<table width="100%" class="f16">
						<tbody>
							<tr>
								<td align="center" class="f16">不合适通知已发送成功<br>
									该简历已进入“不合适简历”列表
								</td>
							</tr>
							<tr>
								<td align="center"><input type="button" value="确认"
									class="btn"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#refuseMailSuccess-->
			</div>
			<!------------------------------------- end ----------------------------------------->
			<script src="style/js/jquery.ui.datetimepicker.min.js"
				type="text/javascript"></script>
			<script src="style/js/received_resumes.min.js" type="text/javascript"></script>
			<script>
				
			</script>
			<div class="clear"></div>
			<input type="hidden" value="b4bc225f0d084ee5b8d045f9c98a49ff"
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
	<div
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
		id="ui-datepicker-div"></div>
</body>
<script type="text/javascript">
	function tiaojian(one,two) {  	
		//alert(one+" "+two)
		var realexperiencestart;
		var realexperienceend;
		var realeducation;
		if(one.indexOf("不限") != -1){
			realexperiencestart="-1";
			realexperienceend="100";
		}else if(one.indexOf("应届毕业生") != -1){
			realexperiencestart="0";
			realexperienceend="1";
		}else if(one.indexOf("1年至3年") != -1){
			realexperiencestart="1";
			realexperienceend="3";
		}else if(one.indexOf("3年至5年") != -1){
			realexperiencestart="3";
			realexperienceend="5";
		}else if(one.indexOf("5年至10年") != -1){
			realexperiencestart="5";
			realexperienceend="10";
		}else{
			realexperiencestart="10";
			realexperienceend="100";
		}
		if(two.indexOf("不限") != -1){
			realeducation="0";
		}else if(two.indexOf("大专及以上") != -1){
			realeducation="1";
		}else if(two.indexOf("本科及以上") != -1){
			realeducation='2';
		}else if(two.indexOf("硕士及以上") != -1){
			realeducation="3";
		}else{
			realeducation="4";
		}
		window.location.href = "havenoticeresumestiaojian.action?realexperiencestart="+realexperiencestart+"&realexperienceend="+realexperienceend+"&realeducation="+realeducation+""; 
		window.event.returnValue=false;  
	}
</script>
</html>