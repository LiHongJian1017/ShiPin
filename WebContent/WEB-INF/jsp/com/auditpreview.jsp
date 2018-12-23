<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>简历预览-我的简历-师聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="师聘网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在师聘网">
<meta name="keywords"
	content="师聘,师聘网,师聘招聘,拉钩, 拉钩网 ,互联网招聘,师聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 师聘官网, 师聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">

<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
</script>
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/colorbox.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>

<script src="style/js/jquery.colorbox-min.js" type="text/javascript"></script>
<script>
	$(function() {
		$("body").on("click", "a.btn_s", function() {
			$.colorbox.close();
			parent.jQuery.colorbox.close();
		});
		$(".inline").colorbox({
			inline : true
		});
	});
</script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
</head>
<body>
	<div id="previewWrapper">
		<div class="preview_header">
			<h1 title="${delivery.jianliname}">${delivery.jianliname}</h1>
			<a title="关闭" class="inline cboxElement" 
				onclick="javascript:window.opener=null;window.open('','_self');window.close();">X</a>
		</div>
		<!--end .preview_header-->

		<div class="preview_content">
			<div class="profile_box" id="basicInfo">
				<h2>基本信息</h2>
				<div class="basicShow">
					<span>${delivery.name} | ${delivery.sex} | <c:if
							test="${delivery.education =='0'}">
						其他 |
					</c:if> <c:if test="${delivery.education =='1'}">
						大专 |
					</c:if> <c:if test="${delivery.education =='2'}">
						本科  |
					</c:if> <c:if test="${delivery.education =='3'}">
						硕士  |
					</c:if> <c:if test="${delivery.education =='4'}">
						博士 |
					</c:if> <c:if test="${delivery.experience =='0'}">
						应届毕业生
					</c:if> <c:if test="${delivery.experience =='1'}">
						1年工作经验
					</c:if> <c:if test="${delivery.experience =='2'}">
						2年工作经验
					</c:if> <c:if test="${delivery.experience =='3'}">
						3年工作经验
					</c:if> <c:if test="${delivery.experience =='4'}">
						4年工作经验
					</c:if> <c:if test="${delivery.experience =='5'}">
						5年工作经验
					</c:if> <c:if test="${delivery.experience =='6'}">
						6年工作经验
					</c:if> <c:if test="${delivery.experience =='7'}">
						7年工作经验
					</c:if> <c:if test="${delivery.experience =='8'}">
						8年工作经验
					</c:if> <c:if test="${delivery.experience =='9'}">
						9年工作经验
					</c:if> <c:if test="${delivery.experience =='10'}">
						10年工作经验
					</c:if> <c:if test="${delivery.experience =='11'}">
						10年以上工作经验
					</c:if> 
					<br> ${delivery.schoolname} | ${delivery.specialty}<br>
					 ${delivery.phone} | ${delivery.email}<br> 
					<c:if test="${not empty delivery.workstatus}">
								${delivery.workstatus}
					</c:if>
					</span>
					<div class="m_portrait">
						<div></div>
						<c:if test="${not empty delivery.image}">
								<img width="120" height="120" alt=""
							src="/pic/${delivery.image}">
						</c:if>
						<c:if test="${empty delivery.image}">
								<img width="120" height="120" alt="jason"
							src="style/images/default_headpic.png">
						</c:if>
						
					</div>
				</div>
				<!--end .basicShow-->
			</div>
			<!--end #basicInfo-->
			<div class="profile_box" id="certification">
				<h2>认证资质</h2>
				<div class="experienceShow">
					<div class="expectShow">
						${delivery.certification}
					</div>
				</div>
				<!--end .experienceShow-->
			</div>
			<div class="profile_box" id="expectJob">
				<h2>期望工作</h2>
				<div class="expectShow">
				<c:if test="${not empty delivery.workaddress}">
					${delivery.workaddress}，
				</c:if>
				<c:if test="${not empty delivery.positionnature}">
					${delivery.positionnature}，
				</c:if>
				<c:if test="${not empty delivery.salarymin}">
					月薪 ${jianli.salarymin}K
				</c:if>
				<c:if test="${not empty delivery.salarymax}">
					-${jianli.salarymax}K，
				</c:if>
				<c:if test="${not empty delivery.hopepositionname}">
					${delivery.hopepositionname}
				</c:if>
				</div>
				<!--end .expectShow-->
			</div>
			<!--end #expectJob-->

			<div class="profile_box" id="workExperience">
				<h2>工作经历</h2>
				<div class="experienceShow">
					<div class="expectShow">
						<c:if test="${not empty delivery.workexperience}">
							${delivery.workexperience}
						</c:if>
						<c:if test="${empty delivery.workexperience}">
							无工作经历
						</c:if>
					</div>
				</div>
				<!--end .experienceShow-->
			</div>
			<!--end #workExperience-->

			<div class="profile_box" id="educationalBackground">
				<h2>教育背景</h2>
				<div class="educationalShow">
					<ul class="elist clearfix">
						<li class="clear">
						<span class="c9">
						<c:if test="${not empty delivery.yearstart && not empty delivery.yearend}">
							${delivery.yearstart}-${delivery.yearend}
						</c:if>
						</span>
							<div>
								<h3>
								<c:if test="${not empty delivery.schoolname}">
								${delivery.schoolname}
								</c:if>
								</h3>
								<h4>${delivery.specialty}，
								<c:if test="${delivery.education =='0'}">
									其他 
								</c:if> <c:if test="${delivery.education =='1'}">
									大专 
								</c:if> <c:if test="${delivery.education =='2'}">
									本科 
								</c:if> <c:if test="${delivery.education =='3'}">
									硕士 
								</c:if> <c:if test="${delivery.education =='4'}">
									博士 
								</c:if>
								</h4>
							</div>
						</li>
					</ul>
				</div>
				<!--end .educationalShow-->
			</div>
			<!--end #educationalBackground-->

			<div class="profile_box" id="selfDescription">
				<h2>自我描述</h2>
				<div class="descriptionShow">
					<c:if test="${not empty delivery.selfdescription}">
						${delivery.selfdescription}
					</c:if>
					<c:if test="${empty delivery.selfdescription}">
						无自我描述
					</c:if>
				</div>
				<!--end .descriptionShow-->
			</div>
			<!--end #selfDescription-->
			<!--end #worksShow-->
		</div>
		<!--end .preview_content-->
	</div>
	<!--end #previewWrapper-->

	<!-------------------------------------弹窗lightbox ----------------------------------------->
	<div style="display: none;">
		<!-- 下载简历 -->
		<div class="popup" id="downloadOnlineResume">
			<table width="100%">
				<tbody>
					<tr>
						<td class="c5 f18">请选择下载简历格式：</td>
					</tr>
					<tr>
						<td><a class="btn_s"
							href="h/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=1">word格式</a>
							<a class="btn_s"
							href="h/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=2">html格式</a>
							<a class="btn_s"
							href="h/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=3">pdf格式</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!--/#downloadOnlineResume-->
	</div>
	<!------------------------------------- end ----------------------------------------->




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