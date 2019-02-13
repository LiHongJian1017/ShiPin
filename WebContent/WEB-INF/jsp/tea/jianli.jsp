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
<style type="text/css">
    .weui_switch
    {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        position: relative;
        width: 35px;
        height: 20px;
        border: 1px solid #DFDFDF;
        outline: 0;
        border-radius: 16px;
        box-sizing: border-box;
        background: #DFDFDF;
        -webkit-rtl-ordering: logical;
        -webkit-user-select: text;
        cursor: auto;
        display: inline-block;
        text-align: start;
    }
    .weui_switch:before {
        content: " ";
        position: absolute;
        top: 0;
        left: 0;
        width: 34px;
        height: 18px;
        border-radius: 15px;
        background-color: #FDFDFD;
        -webkit-transition: -webkit-transform .3s;
        transition: transform .3s;
    }
    .weui_switch:after {
        content: " ";
        position: absolute;
        top: 0;
        left: 0;
        width: 18px;
        height: 18px;
        border-radius: 13px;
        background-color: #FFFFFF;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
        -webkit-transition: -webkit-transform .3s;
        transition: transform .3s;
    }
    .weui_switch.checked {
        border-color: #019875;
        background-color: #019875;
    }
    .weui_switch.checked:before {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    .weui_switch.checked:after {
        -webkit-transform: translateX(20px);
        transform: translateX(20px);
    }
    </style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简历-师聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="师聘网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在师聘网">
<meta name="keywords"
	content="师聘,师聘网,师聘招聘,拉钩, 拉钩网 ,互联网招聘,师聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 师聘官网, 师聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->

<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<!-- <script src="js/expectjob.min.js" type="text/javascript"></script> -->
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
				<a class="logo" href="h/"> <img width="229" height="43"
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
					<div class="fl" id="resume_name">
						<div class="nameShow fl" id="nameShow">
							<h1 title="${jianli.jianliname}">${jianli.jianliname}</h1>
							<span class="rename">重命名</span> | <a target="_blank"
								href="preview.action">预览</a>
						</div>
						
						<form class="fl dn" id="resumeNameForm">
							<input type="text" value="${jianli.jianliname}" name="jianliname" id="jianliname"
								class="nameEdit c9"> <a onclick="jianliname()">保存</a>
							| <a target="_blank" href="preview.action">预览</a>
						</form>
					</div>
					<!--end #resume_name-->
					<div class="fr c5" id="lastChangedTime">
						最后一次更新：<span><fmt:formatDate value="${jianli.updatetime}"
								pattern="yyyy-MM-dd HH:mm" /></span>
					</div>
					<!--end #lastChangedTime-->


					<div class="profile_box" id="basicInfo">
						<h2>基本信息 &nbsp;&nbsp;<span style="color:red">*</span></h2>
						<span class="c_edit"></span>
						<div class="basicShow">
							<span>
							<c:if test="${not empty jianli.name}">
							${jianli.name} | 
							</c:if>
							<c:if test="${empty jianli.name}">
							姓名未知 | 
							</c:if>
							<c:if test="${empty jianli.sex}">
							性别未知 | 
							</c:if>
							<c:if test="${not empty jianli.sex}">
							${jianli.sex} | 
							</c:if>
							<c:if test="${not empty jianli.education}">
								<c:if test="${jianli.education =='0'}">
									其他 |
								</c:if> <c:if test="${jianli.education =='1'}">
									大专  |
								</c:if> <c:if test="${jianli.education =='2'}">
									本科  |
								</c:if> <c:if test="${jianli.education =='3'}">
									硕士  |
								</c:if> <c:if test="${jianli.education =='4'}">
									博士 |
								</c:if> 
							</c:if>
							<c:if test="${empty jianli.education}">
								学历未知 |
							</c:if>
							<c:if test="${not empty jianli.experience}">
								<c:if test="${jianli.experience =='0'}">
									应届毕业生
								</c:if> <c:if test="${jianli.experience =='1'}">
									1年工作经验
								</c:if> <c:if test="${jianli.experience =='2'}">
									2年工作经验
								</c:if> <c:if test="${jianli.experience =='3'}">
									3年工作经验
								</c:if> <c:if test="${jianli.experience =='4'}">
									4年工作经验
								</c:if> <c:if test="${jianli.experience =='5'}">
									5年工作经验
								</c:if> <c:if test="${jianli.experience =='6'}">
									6年工作经验
								</c:if> <c:if test="${jianli.experience =='7'}">
									7年工作经验
								</c:if> <c:if test="${jianli.experience =='8'}">
									8年工作经验
								</c:if> <c:if test="${jianli.experience =='9'}">
									9年工作经验
								</c:if> <c:if test="${jianli.experience =='10'}">
									10年工作经验
								</c:if> <c:if test="${jianli.experience =='11'}">
									10年以上工作经验
								</c:if>
							</c:if>
							<c:if test="${empty jianli.experience}">
								工作经验未知
							</c:if>
								 <br>
								 <c:if test="${not empty jianli.phone}">
								 ${jianli.phone} |
								 </c:if>
								 <c:if test="${empty jianli.phone}">
								 电话未知 |
								 </c:if>
								  <c:if test="${not empty jianli.email}">
								 ${jianli.email} 
								 </c:if>
								 <c:if test="${empty jianli.email}">
								 邮箱未知 
								 </c:if>
								  <br>
								${jianli.workstatus}
							</span>
							<div class="m_portrait">
								<div></div>
								<c:if test="${empty jianli.image}">
									<img width="120" height="120" alt="jason"
										src="style/images/default_headpic.png">
								</c:if>
								<c:if test="${not empty jianli.image}">
									<img width="120" height="120" alt="jason"
										src="/pic/${jianli.image}">
								</c:if>
							</div>
						</div>
						<!--end .basicShow-->

						<div class="basicEdit dn">
							<form id="profileForm">
								<table>
									<tbody>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="text" placeholder="姓名" value="jason"
												name="name" id="name"></td>
											<td valign="top"></td>
											<td>
												<ul class="profile_radio clearfix reset">
													<c:if test="${empty jianli.sex}">
														<li class="current">男<em></em> <input type="radio" checked="checked"
															name="gender" id="gender" value="男">
														</li>
														<li>女<em></em> <input type="radio" name="gender"
															id="gender" value="女">
														</li>
													</c:if>
													<c:if test="${jianli.sex =='男'}">
														<li class="current">男<em></em> <input type="radio"
															checked="checked" name="gender" id="gender" value="男">
														</li>
														<li>女<em></em> <input type="radio" name="gender"
															id="gender" value="女">
														</li>
													</c:if>
													<c:if test="${jianli.sex =='女'}">
														<li>男<em></em> <input type="radio"
															name="gender" id="gender" value="男">
														</li>
														<li  class="current">女<em></em> <input type="radio" name="gender"
															id="gender" checked="checked" value="女">
														</li>
													</c:if>
												</ul>
											</td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td>
											<c:if test="${not empty jianli.education}">
												<c:if test="${jianli.education =='0'}">
													<input type="hidden" id="topDegree" value="其他"
														name="topDegree">
												</c:if> <c:if test="${jianli.education =='1'}">
													<input type="hidden" id="topDegree" value="大专"
														name="topDegree">
												</c:if> <c:if test="${jianli.education =='2'}">
													<input type="hidden" id="topDegree" value="本科"
														name="topDegree">
												</c:if> <c:if test="${jianli.education =='3'}">
													<input type="hidden" id="topDegree" value="硕士"
														name="topDegree">
												</c:if> <c:if test="${jianli.education =='4'}">
													<input type="hidden" id="topDegree" value="博士"
														name="topDegree">
												</c:if> <c:if test="${jianli.education =='0'}">
													<input type="button" id="select_topDegree"
														class="profile_select_190 profile_select_normal"
														value="其他">
												</c:if> <c:if test="${jianli.education =='1'}">
													<input type="button" id="select_topDegree"
														class="profile_select_190 profile_select_normal"
														value="大专">
												</c:if> <c:if test="${jianli.education =='2'}">
													<input type="button" id="select_topDegree"
														class="profile_select_190 profile_select_normal"
														value="本科">
												</c:if> <c:if test="${jianli.education =='3'}">
													<input type="button" id="select_topDegree"
														class="profile_select_190 profile_select_normal"
														value="硕士">
												</c:if> <c:if test="${jianli.education =='4'}">
													<input type="button" id="select_topDegree"
														class="profile_select_190 profile_select_normal"
														value="博士">
												</c:if>
											</c:if>
											<c:if test="${empty jianli.education}">
												<input type="hidden" id="topDegree" value="本科" name="topDegree">
												<input type="button" id="select_topDegree"
														class="profile_select_190 profile_select_normal"
														value="本科">
											</c:if>
												 <%-- <input type="button" value="${jianli.education}"
												id="select_topDegree"
												class="profile_select_190 profile_select_normal"> --%>
												<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree"
													style="display: none;">
													<ul>
														<li>大专</li>
														<li>本科</li>
														<li>硕士</li>
														<li>博士</li>
														<li>其他</li>
													</ul>
												</div></td>
											<td valign="top"><span class="redstar">*</span></td>
											<td>
											<c:if test="${not empty jianli.experience}">
												<c:if test="${jianli.experience =='0'}">
													<input type="hidden" id="workyear" value="应届毕业生"
														name="workyear">
													<input type="button" value="应届毕业生" id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='1'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='2'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='3'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='4'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='5'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='6'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='7'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='8'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='9'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='10'}">
													<input type="hidden" id="workyear"
														value="${jianli.experience}年" name="workyear">
													<input type="button" value="${jianli.experience}年"
														id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if> <c:if test="${jianli.experience =='11'}">
													<input type="hidden" id="workyear" value="10年以上"
														name="workyear">
													<input type="button" value="10年以上" id="select_workyear"
														class="profile_select_190 profile_select_normal">
												</c:if>
											</c:if>
											<c:if test="${empty jianli.experience}">
												<input type="hidden" id="workyear" value="应届毕业生"
														name="workyear">
												<input type="button" value="应届毕业生" id="select_workyear"
														class="profile_select_190 profile_select_normal">
											</c:if>
											 <%-- <input type="hidden" id="workyear" value="${jianli.experience}" name="workyear">
											 <input type="button" value=""
												id="select_workyear"
												class="profile_select_190 profile_select_normal"> --%>

												<div class="boxUpDown boxUpDown_190 dn" id="box_workyear"
													style="display: none;">
													<ul>
														<li>应届毕业生</li>
														<li>1年</li>
														<li>2年</li>
														<li>3年</li>
														<li>4年</li>
														<li>5年</li>
														<li>6年</li>
														<li>7年</li>
														<li>8年</li>
														<li>9年</li>
														<li>10年</li>
														<li>10年以上</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input type="text" placeholder="手机号码"
												value="${jianli.phone}" name="tel" id="tel"></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input type="text"
												placeholder="接收面试通知的邮箱" value="${jianli.email}" name="email"
												id="email"></td>
										</tr>
										<tr>
											<td valign="top"></td>
											<td colspan="3"><input type="hidden" id="currentState"
												value="" name="currentState"> <input type="button"
												value="${jianli.workstatus}" id="select_currentState"
												class="profile_select_410 profile_select_normal">
												<div class="boxUpDown boxUpDown_410 dn"
													id="box_currentState" style="display: none;">
													<ul>
														<li>我目前已离职，可快速到岗</li>
														<li>我目前正在职，正考虑换个新环境</li>
														<li>我暂时不想找工作</li>
														<li>我是应届毕业生</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td></td>
											<td colspan="3"><input type="button" value="保 存"
												class="btn_profile_save" onclick="jibeninfo();"> <a id="quxiao"
												class="btn_profile_cancel" href="javascript:;" onclick="jianli();">取 消</a></td>
										</tr>
									</tbody>
								</table>
							</form>
							<!--end #profileForm-->
							<form id="jianliimage" action="jianli.action" method="post"
								enctype="multipart/form-data">
								<input type="hidden" value="${jianli.userid}" class="leader_id" id="userid"
									name="userid">
								<div class="new_portrait">
									<div class="portrait_upload" id="portraitNo">
										<span>上传自己的头像</span>
									</div>
									<div class="portrait_upload dn portraitNo">
										<span>上传自己的头像</span>
									</div>
									
									<c:if test="${empty jianli.image}">
										<div class="portraitShow">
											<img width="120" height="120" id="imgshow"
												src="style/images/leader_default.png"> <span>更换头像</span>
										</div>
									</c:if>
									<c:if test="${not empty jianli.image}">
										<div class="portraitShow">
											<img width="120" height="120" id="imgshow"
												src="/pic/${jianli.image}"> <span>更换头像</span>
										</div>
									</c:if>

									<input  type="file" id="image"
										name="image" title="支持jpg、jpeg、gif、png格式，文件小于5M"> <em>尺寸：120*120px
										<br> 大小：小于5M
									</em> <span style="display: none;" id="headPic_error" class="error"></span>
								</div>
							</form>
							<!--end .new_portrait-->
						</div>
						<!--end .basicEdit-->
						<input type="hidden" id="nameVal" value="${jianli.name}">
						<input type="hidden" id="genderVal" value="${jianli.sex}">

						<c:if test="${empty jianli.education}">
							<input type="hidden" id="topDegreeVal" value="选择学历">
						</c:if>
						<c:if test="${jianli.education =='0'}">
							<input type="hidden" id="topDegreeVal" value="其他">
						</c:if>
						<c:if test="${jianli.education =='1'}">
							<input type="hidden" id="topDegreeVal" value="大专">
						</c:if>
						<c:if test="${jianli.education =='2'}">
							<input type="hidden" id="topDegreeVal" value="本科">
						</c:if>
						<c:if test="${jianli.education =='3'}">
							<input type="hidden" id="topDegreeVal" value="硕士">
						</c:if>
						<c:if test="${jianli.education =='4'}">
							<input type="hidden" id="topDegreeVal" value="博士">
						</c:if>

						<c:if test="${empty jianli.experience}">
							<input type="hidden" id="workyearVal" value="选择经验">
						</c:if>
						<c:if test="${jianli.experience =='0'}">
							<input type="hidden" id="workyearVal" value="应届毕业生">
						</c:if>
						<c:if test="${jianli.experience =='1'}">
							<input type="hidden" id="workyearVal" value="1年">
						</c:if>
						<c:if test="${jianli.experience =='2'}">
							<input type="hidden" id="workyearVal" value="2年">
						</c:if>
						<c:if test="${jianli.experience =='3'}">
							<input type="hidden" id="workyearVal" value="3年">
						</c:if>
						<c:if test="${jianli.experience =='4'}">
							<input type="hidden" id="workyearVal" value="4年">
						</c:if>
						<c:if test="${jianli.experience =='5'}">
							<input type="hidden" id="workyearVal" value="5年">
						</c:if>
						<c:if test="${jianli.experience =='6'}">
							<input type="hidden" id="workyearVal" value="6年">
						</c:if>
						<c:if test="${jianli.experience =='7'}">
							<input type="hidden" id="workyearVal" value="7年">
						</c:if>
						<c:if test="${jianli.experience =='8'}">
							<input type="hidden" id="workyearVal" value="8年">
						</c:if>
						<c:if test="${jianli.experience =='9'}">
							<input type="hidden" id="workyearVal" value="9年">
						</c:if>
						<c:if test="${jianli.experience =='10'}">
							<input type="hidden" id="workyearVal" value="10年">
						</c:if>
						<c:if test="${jianli.experience =='11'}">
							<input type="hidden" id="workyearVal" value="10年以上">
						</c:if>

						<input type="hidden" id="currentStateVal"
							value="${jianli.workstatus}"> <input type="hidden"
							id="emailVal" value="${jianli.email}"> <input
							type="hidden" id="telVal" value="${jianli.phone}"> <input
							type="hidden" id="pageType" value="1">
					</div>
					<!--end #basicInfo-->

					<div class="profile_box" id="expectJob">
						<h2>期望工作<span>（投递简历时必填）&nbsp;&nbsp;</span><span style="color:red">*</span></h2>
						<span class="c_edit dn"></span>
						<div class="expectShow dn">
							<span></span>
						</div>
						<!--end .expectShow-->
						<div class="expectEdit">
							<form>
								<table>
									<tbody>
										<tr>
											
											<td>
											<c:if test="${empty jianli.workaddress}">
												<input type="button" onclick="quxiao();"
												value="期望城市，如：北京" id="select_expectCity"
												class="profile_select_287 profile_select_normal">
											</c:if>
											<c:if test="${not empty jianli.workaddress}">
												<input type="button" onclick="quxiao();"
												value="${jianli.workaddress}" id="select_expectCity"
												class="profile_select_287 profile_select_normal">
											</c:if>
												<span style="display:none" id="spanworkaddress" generated="true" class="error">请输入期望城市，如：北京</span>
												
												<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity"
													style="display: none;">
													<dl>
														<dt>热门</dt>
														<dd>
															<span>北京</span> <span>上海</span> <span>广州</span> <span>深圳</span>
															<span>成都</span> <span>杭州</span>
														</dd>
													</dl>
													<dl>
														<dt>A</dt>
														<dd>
															<span>鞍山</span><span>安阳</span><span>安庆</span><span>安康</span><span>澳门</span><span>安顺</span><span>阿拉善盟</span><span>阿坝藏族羌族自治州</span>
														</dd>
													</dl>
													<dl>
														<dt>B</dt>
														<dd>
															<span>北京</span><span>保定</span><span>包头</span><span>滨州</span><span>蚌埠</span><span>宝鸡</span><span>北海</span><span>巴中</span><span>亳州</span><span>保山</span><span>白银</span><span>百色</span><span>巴彦淖尔</span><span>本溪</span><span>白山</span><span>白城</span>
														</dd>
													</dl>
													<dl>
														<dt>C</dt>
														<dd>
															<span>常州</span><span>成都</span><span>重庆</span><span>长沙</span><span>沧州</span><span>常德</span><span>赤峰</span><span>郴州</span><span>常熟</span><span>承德</span><span>滁州</span><span>潮州</span><span>朝阳</span><span>池州</span><span>崇左</span>
														</dd>
													</dl>
													<dl>
														<dt>DE</dt>
														<dd>
															<span>东莞</span><span>大连</span><span>德州</span><span>东营</span><span>德阳</span><span>大庆</span><span>达州</span><span>大同</span><span>丹东</span><span>定西</span><span>鄂尔多斯</span><span>鄂州</span>
														</dd>
													</dl>
													<dl>
														<dt>F</dt>
														<dd>
															<span>福州</span><span>佛山</span><span>阜阳</span><span>抚州</span><span>抚顺</span><span>防城港</span><span>阜新</span>
														</dd>
													</dl>
													<dl>
														<dt>G</dt>
														<dd>
															<span>贵阳</span><span>广州</span><span>桂林</span><span>赣州</span><span>广安</span><span>贵港</span><span>广元</span><span>固原</span>
														</dd>
													</dl>
													<dl>
														<dt>H</dt>
														<dd>
															<span>哈尔滨</span><span>杭州</span><span>合肥</span><span>惠州</span><span>海口</span><span>呼和浩特</span><span>湖州</span><span>邯郸</span><span>淮安</span><span>衡阳</span><span>菏泽</span><span>黄冈</span><span>黄石</span><span>衡水</span><span>河源</span><span>怀化</span><span>淮南</span><span>汉中</span><span>淮北</span><span>黄山</span><span>葫芦岛</span><span>贺州</span><span>呼伦贝尔</span><span>鹤壁</span><span>河池</span><span>鹤岗</span><span>海东地区</span><span>黑河</span><span>海宁</span><span>和田</span>
														</dd>
													</dl>
													<dl>
														<dt>J</dt>
														<dd>
															<span>济南</span><span>金华</span><span>嘉兴</span><span>济宁</span><span>江门</span><span>吉林</span><span>九江</span><span>荆州</span><span>晋中</span><span>揭阳</span><span>吉安</span><span>焦作</span><span>景德镇</span><span>江阴</span><span>晋城</span><span>荆门</span><span>酒泉</span><span>锦州</span><span>佳木斯</span><span>鸡西</span><span>金昌</span><span>嘉峪关</span>
														</dd>
													</dl>
													<dl>
														<dt>K</dt>
														<dd>
															<span>昆明</span><span>昆山</span><span>开封</span><span>克拉玛依</span>
														</dd>
													</dl>
													<dl>
														<dt>L</dt>
														<dd>
															<span>廊坊</span><span>洛阳</span><span>兰州</span><span>临沂</span><span>柳州</span><span>连云港</span><span>聊城</span><span>六安</span><span>丽水</span><span>泸州</span><span>拉萨</span><span>乐山</span><span>莱芜</span><span>龙岩</span><span>丽江</span><span>漯河</span><span>临汾</span><span>六盘水</span><span>娄底</span><span>辽阳</span><span>凉山彝族自治州</span><span>吕梁</span><span>辽源</span><span>陇南</span><span>来宾</span>
														</dd>
													</dl>
													<dl>
														<dt>M</dt>
														<dd>
															<span>绵阳</span><span>茂名</span><span>马鞍山</span><span>梅州</span><span>眉山</span><span>牡丹江</span>
														</dd>
													</dl>
													<dl>
														<dt>N</dt>
														<dd>
															<span>南宁</span><span>南京</span><span>宁波</span><span>南昌</span><span>南通</span><span>南阳</span><span>南充</span><span>南平</span><span>宁德</span><span>内江</span><span>南海区</span>
														</dd>
													</dl>
													<dl>
														<dt>P</dt>
														<dd>
															<span>莆田</span><span>盘锦</span><span>濮阳</span><span>平顶山</span><span>萍乡</span><span>攀枝花</span>
														</dd>
													</dl>
													<dl>
														<dt>QR</dt>
														<dd>
															<span>青岛</span><span>泉州</span><span>秦皇岛</span><span>清远</span><span>衢州</span><span>齐齐哈尔</span><span>钦州</span><span>曲靖</span><span>庆阳</span><span>七台河</span><span>日照</span>
														</dd>
													</dl>
													<dl>
														<dt>S</dt>
														<dd>
															<span>上海</span><span>苏州</span><span>沈阳</span><span>深圳</span><span>石家庄</span><span>绍兴</span><span>汕头</span><span>三亚</span><span>宿迁</span><span>十堰</span><span>韶关</span><span>商丘</span><span>上饶</span><span>宿州</span><span>三门峡</span><span>遂宁</span><span>三明</span><span>汕尾</span><span>随州</span><span>邵阳</span><span>松原</span><span>商洛</span><span>朔州</span><span>双鸭山</span>
														</dd>
													</dl>
													<dl>
														<dt>T</dt>
														<dd>
															<span>太原</span><span>天津</span><span>台州</span><span>唐山</span><span>泰州</span><span>泰安</span><span>通辽</span><span>铜陵</span><span>铁岭</span><span>通化</span><span>太仓</span><span>天水</span><span>台湾</span>
														</dd>
													</dl>
													<dl>
														<dt>W</dt>
														<dd>
															<span>武汉</span><span>无锡</span><span>温州</span><span>潍坊</span><span>乌鲁木齐</span><span>芜湖</span><span>威海</span><span>渭南</span><span>梧州</span><span>吴忠</span><span>乌兰察布</span><span>乌海</span>
														</dd>
													</dl>
													<dl>
														<dt>X</dt>
														<dd>
															<span>厦门</span><span>西安</span><span>徐州</span><span>香港</span><span>新乡</span><span>咸阳</span><span>邢台</span><span>襄阳</span><span>西宁</span><span>湘潭</span><span>孝感</span><span>许昌</span><span>信阳</span><span>咸宁</span><span>忻州</span><span>新余</span><span>宣城</span><span>襄樊</span><span>锡林郭勒盟</span><span>湘西土家族苗族自治州</span><span>兴安盟</span>
														</dd>
													</dl>
													<dl>
														<dt>Y</dt>
														<dd>
															<span>烟台</span><span>扬州</span><span>银川</span><span>宜昌</span><span>盐城</span><span>岳阳</span><span>运城</span><span>宜春</span><span>宜宾</span><span>益阳</span><span>阳江</span><span>营口</span><span>阳泉</span><span>永州</span><span>玉林</span><span>榆林</span><span>玉溪</span><span>云浮</span><span>延安</span><span>鹰潭</span><span>雅安</span><span>伊春</span>
														</dd>
													</dl>
													<dl>
														<dt>Z</dt>
														<dd>
															<span>中山</span><span>郑州</span><span>珠海</span><span>长春</span><span>淄博</span><span>镇江</span><span>株洲</span><span>肇庆</span><span>漳州</span><span>湛江</span><span>遵义</span><span>舟山</span><span>张家港</span><span>张家口</span><span>周口</span><span>枣庄</span><span>自贡</span><span>长治</span><span>驻马店</span><span>资阳</span><span>张家界</span><span>昭通</span><span>张掖</span><span>中卫</span><span>章丘</span>
														</dd>
													</dl>
													<dl>
														<dt>其他</dt>
														<dd>
															<span>公司安排</span>
														</dd>
													</dl>
												</div>
											</td>
											<td>
												<ul class="profile_radio clearfix reset">
													<li id="radio1"  class="current">全职<em></em> <input type="radio" name="positionnature" id="positionnature"
														checked="checked" value="全职">
													</li>
													<li id="radio2" >兼职<em></em> <input type="radio" name="positionnature" id="positionnature"
														value="兼职">
													</li>
													<li id="radio3" >实习<em></em> <input type="radio" name="positionnature" id="positionnature"
														value="实习">
													</li>
												</ul>
											</td>
										</tr>
										<tr>
										<c:if test="${not empty jianli.hopepositionname}">
											<td><input type="text" placeholder="期望职位，如：教师" value="${jianli.hopepositionname}" onfocus="quxiao2()"
												name="positionname" id="positionname" >
												<span style="display:none" id="spanpositionname" generated="true" class="error">请输入期望职位，如：教师</span>
											</td>
										</c:if>	
										<c:if test="${empty jianli.hopepositionname}">
											<td><input type="text" placeholder="期望职位，如：教师" onfocus="quxiao2()"
												name="positionname" id="positionname" >
												<span style="display:none" id="spanpositionname" generated="true" class="error">请输入期望职位，如：教师</span>
											</td>
										</c:if>	
										</tr>
																
										
										<tr>
										<c:if test="${empty jianli.salarymin || jianli.salarymin==0}">
												<td><input type="text" placeholder="最低月薪"  onfocus="quxiao3()" 
														id="salarymin" name="salarymin" >
													<span style="display:none" id="spansalary" generated="true" class="error">请输入正确的月薪</span>
												</td>
										</c:if>
										<c:if test="${not empty jianli.salarymin && jianli.salarymin!=0}">
												<td><input type="text" placeholder="最低月薪"  onfocus="quxiao3()" value="${jianli.salarymin}"
														id="salarymin" name="salarymin" >
													<span style="display:none" id="spansalary" generated="true" class="error">请输入正确的月薪</span>
												</td>
										</c:if>
										<c:if test="${empty jianli.salarymax || jianli.salarymax==0}">
												<td><input type="text" placeholder="最高月薪"  onfocus="quxiao3()" 
														id="salarymax" name="salarymax">
												</td>
										</c:if>
										<c:if test="${not empty jianli.salarymax && jianli.salarymax!=0}">
												<td><input type="text" placeholder="最高月薪"  onfocus="quxiao3()" value="${jianli.salarymax}"
														id="salarymax" name="salarymax">
												</td>
										</c:if>
										</tr>
										<tr>
											<td colspan="2"><input type="button" value="保 存" onclick="expectjob();"
												class="btn_profile_save"></td>
										</tr>
									</tbody>
								</table>
							</form>
							<!--end #expectForm-->
						</div>
						<!--end .expectEdit-->

						<input type="hidden" id="expectJobVal" value=""> <input
							type="hidden" id="expectCityVal" value=""> <input
							type="hidden" id="typeVal" value=""> <input type="hidden"
							id="expectPositionVal" value=""> <input type="hidden"
							id="expectSalaryVal" value="">
					</div>
					<!--end #expectJob-->

					<div class="profile_box" id="projectExperience">
						<h2>工作经历</h2>
						<span class="c_edit dn"></span>
						<div class="projectShow dn"></div>
						<!--end .descriptionShow-->
						<div class="projectEdit">
							<form class="projectForm">
								<table>
									<tbody>
										<tr>
											<td valign="top"><span class="redstar">&nbsp;</span></td>
											<td colspan="2">
											<c:if test="${empty jianli.workexperience}">
												<textarea class="projectDescription s_textarea" id="workexperience" name="workexperience" placeholder="工作经历(可分条描述)"></textarea>
												<div class="word_count">
													你还可以输入 <span>500</span> 字
												</div>
											</c:if>
											<c:if test="${not empty jianli.workexperience}">
												<textarea class="projectDescription s_textarea" id="workexperience" name="workexperience" placeholder="工作经历(可分条描述)">${jianli.workexperience}</textarea>
												<div class="word_count">
													你还可以输入 <span>500</span> 字
												</div>
											</c:if>
											</td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">&nbsp;</span></td>
											<td colspan="2"><input type="button" value="保 存" onclick="gongzuojingyan();"
												class="btn_profile_save"></td>
										</tr>
									</tbody>
								</table>
							</form>
							<!--end .descriptionForm-->
						</div>
						<!--end .descriptionEdit-->
					</div>
					<!--end #selfDescription-->

					<div class="profile_box" id="educationalBackground">
						<h2>
							教育背景<span>（投递简历时必填）&nbsp;&nbsp;</span><span style="color:red">*</span>
						</h2>
						<span class="c_add dn"></span>
						<div class="educationalEdit">
							<form class="educationalForm" action="updatejiaoyubeijingtest.action"
							method="post"  onsubmit="return jiaoyubeijing()">
								<table>
									<tbody>						
										<tr>
										<!-- 	<td valign="top"><span class="redstar">*</span></td> -->
											<td>&nbsp;&nbsp;&nbsp;
											<c:if test="${empty jianli.schoolname}">
											<input type="text" placeholder="学校名称" id="schoolName"
												name="schoolName" class="schoolName">
											</c:if>
											<c:if test="${not empty jianli.schoolname}">
											<input type="text" placeholder="学校名称" id="schoolName" value="${jianli.schoolname}"
												name="schoolName" class="schoolName">
											</c:if>
<!-- 												<span style="display:none" id="spanschoolName" generated="true" class="error">请输入学校名称</span>
 -->										</td>
											<!-- <td valign="top"><span class="redstar">*</span></td> -->
											<td>
											<c:if test="${empty jianli.specialty}">
											<input type="text" placeholder="专业名称" id="professionalName"
												name="professionalName" class="professionalName">
											</c:if>
											<c:if test="${not empty jianli.specialty}">
											<input type="text" placeholder="专业名称" id="professionalName" value="${jianli.specialty}"
												name="professionalName" class="professionalName">
											</c:if>
<!-- 												<span style="display:none" id="spanprofessionalName" generated="true" class="error">请输入专业名称</span>
 -->										</td>
										</tr>
										<tr>

											<!-- <td valign="top"><span class="redstar">*</span></td> -->
											<td>
												<div class="fl">&nbsp;&nbsp;&nbsp;
												<c:if test="${empty jianli.yearstart}">
													<input type="hidden" class="schoolYearStart" value="" id="schoolYearStart"
														name="schoolYearStart"> <input type="button"
														value="开始年份"
														class="profile_select_139 profile_select_normal select_schoolYearStart">
												</c:if>
												<c:if test="${not empty jianli.yearstart}">
													<input type="hidden" class="schoolYearStart" value="${jianli.yearstart}" id="schoolYearStart"
														name="schoolYearStart"> <input type="button"
														value="${jianli.yearstart}"
														class="profile_select_139 profile_select_normal select_schoolYearStart">
												</c:if>
													<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn"
														style="display: none;margin-left:16px">
														<ul>
															<li>2019</li>
															<li>2018</li>
															<li>2017</li>
															<li>2016</li>
															<li>2015</li>
															<li>2014</li>
															<li>2013</li>
															<li>2012</li>
															<li>2011</li>
															<li>2010</li>
															<li>2009</li>
															<li>2008</li>
															<li>2007</li>
															<li>2006</li>
															<li>2005</li>
															<li>2004</li>
															<li>2003</li>
															<li>2002</li>
															<li>2001</li>
															<li>2000</li>
															<li>1999</li>
															<li>1998</li>
															<li>1997</li>
															<li>1996</li>
															<li>1995</li>
															<li>1994</li>
															<li>1993</li>
															<li>1992</li>
															<li>1991</li>
															<li>1990</li>
															<li>1989</li>
															<li>1988</li>
															<li>1987</li>
															<li>1986</li>
															<li>1985</li>
															<li>1984</li>
															<li>1983</li>
															<li>1982</li>
															<li>1981</li>
															<li>1980</li>
															<li>1979</li>
															<li>1978</li>
															<li>1977</li>
															<li>1976</li>
															<li>1975</li>
															<li>1974</li>
															<li>1973</li>
															<li>1972</li>
															<li>1971</li>
															<li>1970</li>
														</ul>
													</div>
												</div>
												<div class="fl">
												<c:if test="${empty jianli.yearend}">
													<input type="hidden" class="schoolYearEnd" value="" id="schoolYearEnd"
														name="schoolYearEnd"> <input type="button"
														value="结束年份"
														class="profile_select_139 profile_select_normal select_schoolYearEnd">
												</c:if>
												<c:if test="${not empty jianli.yearend}">
													<input type="hidden" class="schoolYearEnd" value="${jianli.yearend}" id="schoolYearEnd"
														name="schoolYearEnd"> <input type="button"
														value="${jianli.yearend}"
														class="profile_select_139 profile_select_normal select_schoolYearEnd">
												</c:if>
													<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn"
														style="display: none;">
														<ul>
															<li>2019</li>
															<li>2018</li>
															<li>2017</li>
															<li>2016</li>
															<li>2015</li>
															<li>2014</li>
															<li>2013</li>
															<li>2012</li>
															<li>2011</li>
															<li>2010</li>
															<li>2009</li>
															<li>2008</li>
															<li>2007</li>
															<li>2006</li>
															<li>2005</li>
															<li>2004</li>
															<li>2003</li>
															<li>2002</li>
															<li>2001</li>
															<li>2000</li>
															<li>1999</li>
															<li>1998</li>
															<li>1997</li>
															<li>1996</li>
															<li>1995</li>
															<li>1994</li>
															<li>1993</li>
															<li>1992</li>
															<li>1991</li>
															<li>1990</li>
															<li>1989</li>
															<li>1988</li>
															<li>1987</li>
															<li>1986</li>
															<li>1985</li>
															<li>1984</li>
															<li>1983</li>
															<li>1982</li>
															<li>1981</li>
															<li>1980</li>
															<li>1979</li>
															<li>1978</li>
															<li>1977</li>
															<li>1976</li>
															<li>1975</li>
															<li>1974</li>
															<li>1973</li>
															<li>1972</li>
															<li>1971</li>
															<li>1970</li>
														</ul>
													</div>
												</div>
												<div class="clear"></div>
<!-- 												<span style="display:none" id="schoolnian" generated="true" class="error">开始年份需小于结束年份</span>
 -->											</td>
										</tr>
										<tr>
											
											<td colspan="2"><input style="margin-left:17px;" type="submit" value="保 存" 
												class="btn_profile_save"></td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" class="eduId" value="">
							</form>
							<!--end .educationalForm-->
						</div>
						<!--end .educationalEdit-->
					</div>
					<!--end #educationalBackground-->

					<div class="profile_box">
						<h2>自我描述</h2>
						<span class="c_edit dn"></span>
						<div class="descriptionShow dn"></div>
						<!--end .descriptionShow-->
						<div class="descriptionEdit">
							<form class="descriptionForm">
								<table>
									<tbody>
										<tr>
										<c:if test="${not empty jianli.selfdescription}">
											<td colspan="2">
												<textarea class="selfDescription s_textarea" name="selfDescription" id="selfDescription" placeholder="请输入自我介绍">${jianli.selfdescription}</textarea>
												<div class="word_count">
													
												</div>
											</td>
										</c:if>
										<c:if test="${empty jianli.selfdescription}">
											<td colspan="2">
												<textarea class="selfDescription s_textarea" name="selfDescription" id="selfDescription" placeholder="请输入自我介绍"></textarea>
												<div class="word_count">
													
												</div>
											</td>
										</c:if>
										</tr>
										<tr>
											<td colspan="2"><input type="button" value="保 存" onclick="ziwojieshao();"
												class="btn_profile_save"></td>
										</tr>
									</tbody>
								</table>
							</form>
							<!--end .descriptionForm-->
						</div>
						<!--end .descriptionEdit-->
					</div>
					<!--end #selfDescription-->

					<input type="hidden" id="resumeId" value="268472">
				</div>
				<!--end .content_l-->
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

					<!-- <div class="mycenterR" id="myResume">
						<h2>
							我的附件简历 <a title="上传附件简历" href="#uploadFile"
								class="inline cboxElement">上传简历</a>
						</h2>
						<div class="resumeUploadDiv">暂无附件简历</div>
					</div> -->
					<!--end #myResume-->

					<div class="mycenterR" id="resumeSet">
						<h2>
							简历状态 
							<c:if test="${jianli.status=='0'}">
								<span id="zhuangtai">(未公开)</span>
							</c:if>
							<c:if test="${jianli.status=='1'}">
								<span id="zhuangtai">(已公开)</span>
							</c:if>
						</h2>
						<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
						<!-- <div class="set0">
							默认使用<span>附件简历</span>进行投递
						</div>
						<div class="noSet set1 dn">
							默认使用<span>在线简历</span>进行投递
						</div> -->
						<input type='checkbox' class='weui_switch'>
						<c:if test="${jianli.status=='1'}">
							<div><br>
								<div id="tishi" class="noSet">请注意您的邮箱,可能有面试哦</div>
							</div>
						</c:if>
						<c:if test="${jianli.status=='0'}">
							<div><br>
								<div id="tishi" class="noSet">公开简历信息后师聘可以帮您找工作</div>
							</div>
						</c:if>
						
						<input type="hidden" class="defaultResume" value="-1">
						<form class="dn" id="resumeSetForm">
							<label><input type="radio" value="1" class="resume1"
								name="resume">默认使用<span>在线简历</span>进行投递</label> <label><input
								type="radio" value="0" class="resume0" name="resume">默认使用<span>附件简历</span>进行投递</label>
							<span class="setTip error"></span>
							<div class="resumeTip">设置后投递简历时将不再提醒</div>
							<input type="submit" value="保 存" class="btn_profile_save">
							<a class="btn_profile_cancel" href="javascript:;">取 消</a>
						</form>
					</div>
					<!--end #resumeSet-->

					<!-- <div class="mycenterR" id="myShare">
						<h2>当前每日投递量：10个</h2>
						<a target="_blank" href="h/share/invite.html">邀请好友，提升投递量</a>
					</div> -->
					<!--end #myShare-->


					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="师聘微信公众号二维码"
							src="style/images/qr_resume.png"> <span class="c7">微信扫一扫，轻松找工作</span>
					</div>
				</div>
				<!--end .content_r-->
			</div>

			<input type="hidden" id="userid" name="userid" value="314873">

			<!-------------------------------------弹窗lightbox ----------------------------------------->
			<div style="display: none;">
				<!-- 上传简历 -->
				<div class="popup" id="uploadFile">
					<table width="100%">
						<tbody>
							<tr>
								<td align="center">
									<form>
										<a class="btn_addPic" href="javascript:void(0);"> <span>选择上传文件</span>
											<input type="file"
											onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')"
											class="filePrew" id="resumeUpload" name="newResume" size="3"
											title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3">
										</a>
									</form>
								</td>
							</tr>
							<tr>
								<td align="left">支持word、pdf、ppt、txt、wps格式文件<br>文件大小需小于10M
								</td>
							</tr>
							<tr>
								<td align="left" style="color: #dd4a38; padding-top: 10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
							</tr>
							<tr>
								<td align="center"><img width="55" height="16"
									alt="loading" style="visibility: hidden;" id="loadingImg"
									src="style/images/loading.gif"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#uploadFile-->

				<!-- 简历上传成功 -->
				<div class="popup" id="uploadFileSuccess">
					<h4>简历上传成功！</h4>
					<table width="100%">
						<tbody>
							<tr>
								<td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
							</tr>
							<tr>
								<td align="center"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#uploadFileSuccess-->

				<!-- 没有简历请上传 -->
				<div class="popup" id="deliverResumesNo">
					<table width="100%">
						<tbody>
							<tr>
								<td align="center"><p class="font_16">你在师聘还没有简历，请先上传一份</p></td>
							</tr>
							<tr>
								<td align="center">
									<form>
										<a class="btn_addPic" href="javascript:void(0);"> <span>选择上传文件</span>
											<input type="file"
											onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')"
											class="filePrew" id="resumeUpload1" name="newResume" size="3"
											title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M">
										</a>
									</form>
								</td>
							</tr>
							<tr>
								<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#deliverResumesNo-->

				<!-- 上传附件简历操作说明-重新上传 -->
				<div class="popup" id="fileResumeUpload">
					<table width="100%">
						<tbody>
							<tr>
								<td>
									<div class="f18 mb10">请上传标准格式的word简历</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="f16">
										操作说明：<br> 打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
									</div>
								</td>
							</tr>
							<tr>
								<td align="center"><a title="上传附件简历" href="#uploadFile"
									class="inline btn cboxElement">重新上传</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#fileResumeUpload-->

				<!-- 上传附件简历操作说明-重新上传 -->
				<div class="popup" id="fileResumeUploadSize">
					<table width="100%">
						<tbody>
							<tr>
								<td>
									<div class="f18 mb10">上传文件大小超出限制</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="f16">
										提示：<br> 单个附件不能超过10M，请重新选择附件简历！
									</div>
								</td>
							</tr>
							<tr>
								<td align="center"><a title="上传附件简历" href="#uploadFile"
									class="inline btn cboxElement">重新上传</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#deliverResumeConfirm-->

			</div>
			<!------------------------------------- end ----------------------------------------->

			<script src="style/js/Chart.min.js" type="text/javascript"></script>
			<script src="style/js/profile.min.js" type="text/javascript"></script>
			<!-- <div id="profileOverlay"></div> -->
			<div class="" id="qr_cloud_resume" style="display: none;">
				<div class="cloud">
					<img width="134" height="134" src=""> <a class="close"
						href="javascript:;"></a>
				</div>
			</div>

			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655"
				id="resubmitToken"> <a rel="nofollow" title="回到顶部"
				id="backtop" style="display: none;"></a>
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
	<script src="style/js/jobs.min.js" type="text/javascript"></script>
	<script>
	function jianliname(){
		 var jianliname = document.getElementById("jianliname").value.replace(/(^\s*)|(\s*$)/g, "");
		 
		 //alert(name+sex+topDegree+workyear+tel+email+currentState)
		 if(jianliname ==  null || jianliname == '' ){
			 alert("请输入简历名称")
		 }else{
			 var formData = new FormData(); 
		     formData.append('jianliname', jianliname);
		     $.ajax({
		        url: '/uploadjianli.action',
		        type: 'POST',
		        data: formData, 
		        processData: false, // 告诉jQuery不要去处理发送的数据
		        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		        success: function (data) {
		        	//nameShow     nameShow fl(div) <h1 id="h1" title="${jianli.jianliname}">${jianli.jianliname}</h1>
		        	//resumeNameForm      fl dn(form)  <input id="jianliname" value=""/>
		        	document.getElementById('nameShow').className = 'nameShow fl';
		        	document.getElementById('resumeNameForm').className = 'fl dn';   	
		        	var h1= document.getElementsByTagName("h1")[0]; 
		        	h1.innerHTML = jianliname;
		        	h1.title = jianliname;
		        	document.getElementById('jianliname').value=jianliname;
		        	alert("简历名称更新成功")
		        },
		        error: function (data) {
		        	alert("简历名称更新失败")
		        }
		    })  
		 }
		 
	}
	function gongzuojingyan(){
		 var workexperience = document.getElementById("workexperience").value;
		 var flag= document.getElementById("workexperience").value.replace(/(^\s*)|(\s*$)/g, "")
		 //alert(name+sex+topDegree+workyear+tel+email+currentState)
		 if(flag==null || flag==''){
			 alert("请输入工作经历")
		 }else{
			 var newworkexperience = workexperience.replace(new RegExp("\n", "gm"), "</br>");
			 var formData = new FormData(); 
		     formData.append('workexperience', newworkexperience);
		     $.ajax({
		        url: '/uploadjianli.action',
		        type: 'POST',
		        data: formData, 
		        processData: false, // 告诉jQuery不要去处理发送的数据
		        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		        success: function (data) {
		        	document.getElementById("quxiao").click()
		        	alert("更新工作经历成功")
		        },
		        error: function (data) {
		        	alert("更新工作经历失败")
		        }
		    })  
		 }
	}
	function ziwojieshao(){
		 var selfDescription = document.getElementById("selfDescription").value;
		 var flag= document.getElementById("selfDescription").value.replace(/(^\s*)|(\s*$)/g, "")
		 //alert(flag)
		 if(flag==null || flag==''){
			 alert("请输入自我介绍")
		 }else{
			 var newselfDescription = selfDescription.replace(new RegExp("\n", "gm"), "</br>");
			 var formData = new FormData(); 
		     formData.append('selfdescription', newselfDescription);
		     $.ajax({
		        url: '/uploadjianli.action',
		        type: 'POST',
		        data: formData, 
		        processData: false, // 告诉jQuery不要去处理发送的数据
		        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		        success: function (data) {
		        	document.getElementById("quxiao").click()
		        	alert("更新自我介绍成功")
		        },
		        error: function (data) {
		        	alert("更新自我介绍失败")
		        }
		    })  
		 } 
	}
	function jiaoyubeijing(){
		 
		 var schoolName = document.getElementById("schoolName").value.replace(/(^\s*)|(\s*$)/g, "");
		 var professionalName = document.getElementById("professionalName").value.replace(/(^\s*)|(\s*$)/g, "");
		 var schoolYearStart = document.getElementById("schoolYearStart").value.replace(/(^\s*)|(\s*$)/g, "");
		 var schoolYearEnd = document.getElementById("schoolYearEnd").value.replace(/(^\s*)|(\s*$)/g, "");
		 //alert(flag)
		 if(schoolName==null || schoolName==''){
			 return false;
		 }
		 if(professionalName==null || professionalName==''){ 
			 return false;
		 }
		 if(schoolYearStart==null || schoolYearStart==''){  
			 return false;
		 }
		 if(schoolYearEnd==null || schoolYearEnd==''){
			 return false;
		 }
		 if(schoolYearStart>schoolYearEnd){
			 return false;
		 }
		 
		 if(schoolName!=null&&schoolName!='' && professionalName!=null && professionalName!='' && schoolYearStart!=null && schoolYearStart!='' && schoolYearEnd!=null && schoolYearEnd!=''&&
				 schoolYearStart<schoolYearEnd ){
			 var formData = new FormData(); 
		     formData.append('schoolname', schoolName);
		     formData.append('specialty', professionalName);
		     formData.append('yearstart', schoolYearStart);
		     formData.append('yearend', schoolYearEnd);
		     $.ajax({
		        url: '/uploadjianli.action',
		        type: 'POST', 
		        data: formData, 
		        processData: false, // 告诉jQuery不要去处理发送的数据
		        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		        success: function (data) {
		        	document.getElementById("quxiao").click()
		        	alert("更新教育背景成功")
		        },
		        error: function (data) {
		        	alert("更新教育背景成功")
		        }
		    })  
			 return true;
		 }
	}
function jibeninfo(){
	 var name = document.getElementById("name").value.replace(/(^\s*)|(\s*$)/g, "");
	 var sex=$('input:radio[name="gender"]:checked').val().replace(/(^\s*)|(\s*$)/g, "");
	 var topDegree = document.getElementById("topDegree").value.replace(/(^\s*)|(\s*$)/g, "");
	 var workyear = document.getElementById("workyear").value.replace(/(^\s*)|(\s*$)/g, "");
	 var tel = document.getElementById("tel").value.replace(/(^\s*)|(\s*$)/g, "");
	 var email = document.getElementById("email").value.replace(/(^\s*)|(\s*$)/g, "");
	 var currentState = document.getElementById("currentState").value.replace(/(^\s*)|(\s*$)/g, "");
	 var image = document.getElementById('image').value.replace(/(^\s*)|(\s*$)/g, "");
	 //alert(name+sex+topDegree+workyear+tel+email+currentState)
	 if(name==null||name==''||sex==null||sex==''||topDegree==null||topDegree==''||workyear==null||workyear==''||
			 tel==null||tel==''||email==null||email==''){
		 alert("请输入基本信息")
	 }else{
		 var formData = new FormData(); 
	     formData.append('name', name);
	     formData.append('sex', sex);
	     formData.append('education', topDegree);
	     formData.append('experience', workyear);
	     formData.append('phone', tel);
	     formData.append('email', email);
	     formData.append('workstatus', currentState);
	     $.ajax({
	        url: '/uploadjianli.action',
	        type: 'POST',
	        data: formData, 
	        processData: false, // 告诉jQuery不要去处理发送的数据
	        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
	        success: function (data) {
	        	document.getElementById("quxiao").click()
	        	alert("更新基本信息成功")
	        },
	        error: function (data) {
	      	 
	        }
	    })  
	 } 
	 
}
function uploadjianliimage() {  
    var form = document.getElementById('jianliimage');
  	form.submit();
}
function jianli() {  
	 window.location.href = "jianli.action"; 
}
//在input file内容改变的时候触发事件
$('#image').change(function(){
  var userid='${jianli.userid}';
//获取input file的files文件数组;
//$('#filed')获取的是jQuery对象，.get(0)转为原生对象;
//这边默认只能选一个，但是存放形式仍然是数组，所以取第一个元素使用[0];
  var file1 = $('#image').get(0).files[0];
//创建用来读取此文件的对象
  var reader1 = new FileReader();
//使用该对象读取file文件
  reader1.readAsDataURL(file1);
//读取文件成功后执行的方法函数
  reader1.onload=function(e){
//读取成功后返回的一个参数e，整个的一个进度事件
    console.log(e);
//选择所要显示图片的img，要赋值给img的src就是e中target下result里面
//的base64编码格式的地址
    $('#imgshow').get(0).src = e.target.result;
    var formData = new FormData(); 
    formData.append('image', $('#image')[0].files[0]);  //添加图片信息的参数
     $.ajax({
        url: '/uploadjianliimage.action',
        type: 'POST',
        cache: false, //上传文件不需要缓存
        dataType: "text",  
        data: formData,
        processData: false, // 告诉jQuery不要去处理发送的数据
        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
        success: function (data) {
        	if(data=='1'){
        		alert("头像更新成功")
        	}else if(data=='error'){
        	    window.location.href = "jianli.action"; 
        	}else{
        		alert('头像更新失败')
        	}
        },
        error: function (data) {
      	  alert('头像更新失败')
        }
    })  
  }
})
	function expectjob(){
		var flag = true;
		 var select_expectCity = document.getElementById("select_expectCity").value.replace(/(^\s*)|(\s*$)/g, "");
		 var type=$('input:radio[name="positionnature"]:checked').val().replace(/(^\s*)|(\s*$)/g, "");
		 var positionname = document.getElementById("positionname").value.replace(/(^\s*)|(\s*$)/g, "");
		 var salarymin = document.getElementById("salarymin").value.replace(/(^\s*)|(\s*$)/g, "");
		 var salarymax = document.getElementById("salarymax").value.replace(/(^\s*)|(\s*$)/g, "");
		 //alert(select_expectCity+type+positionname+salarymin+salarymax)
		 if(select_expectCity=='期望城市，如：北京' ||select_expectCity == null||select_expectCity == ''){
			 document.getElementById('spanworkaddress').style.display = "block";   
			 flag = false;
		 }
		 if(positionname == null||positionname == ''){
			 document.getElementById('spanpositionname').style.display = "block";   
			 flag = false;
		 }
		 if(salarymin == null||salarymin == ''||salarymax == null||salarymax == ''){
			 flag = false;
			 document.getElementById('spansalary').style.display = "block";   
		 }else if(!(/(^[1-9]\d*$)/.test(salarymin)) || !(/(^[1-9]\d*$)/.test(salarymax))){
			 flag = false;
			 document.getElementById('spansalary').innerText = "请输入正整数";
			 document.getElementById('spansalary').style.display = "block"; 
		 }else if(salarymin>salarymax){
			 flag = false;
			 document.getElementById('spansalary').innerText = "最低月薪需小于最高月薪";
			 document.getElementById('spansalary').style.display = "block"; 
		 }else if(salarymax>2*salarymin){
			 flag = false;
			 document.getElementById('spansalary').innerText = "最高月薪不能大于最高月薪的2倍";
			 document.getElementById('spansalary').style.display = "block"; 
		 } 
		 
		 if(flag == true){
			 var formData = new FormData(); 
		     formData.append('workaddress', select_expectCity);
		     formData.append('positionnature', type);
		     formData.append('hopepositionname', positionname);
		     formData.append('salarymin', salarymin);
		     formData.append('salarymax', salarymax);
		     $.ajax({
		        url: '/uploadjianli.action',
		        type: 'POST',
		        async: false,
		        data: formData, 
		        processData: false, // 告诉jQuery不要去处理发送的数据
		        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		        success: function (data) {
		        	document.getElementById("quxiao").click()
		        	alert("期望工作信息更新成功")
		        },
		        error: function (data) {
		        	alert("期望工作信息更新失败")
		        }
		    })  
		 }
	}
	
function quxiao() {  
	document.getElementById('spanworkaddress').style.display = "none";   
}
function quxiao2() {  
	document.getElementById('spanpositionname').style.display = "none";   
}
function quxiao3() {  
	document.getElementById('spansalary').style.display = "none";   
}
</script>
<script type="application/javascript" src="style/js/zepto.min.js"></script>
</body>
<script type="text/javascript">
document.ready=function(){
	   var status = "${jianli.status}";
	   var positionnature = "${jianli.positionnature}";
	   var workaddress = "${jianli.workaddress}";
	   var workexperience = "${jianli.workexperience}";
	   if(workaddress !=  null && workaddress != ''){
		   document.getElementById("select_expectCity").value=workaddress;
	   }
	   //alert(positionnature);
	   if(positionnature !=  null && positionnature != ''){
			if(positionnature == "全职"){
				$("[name='positionnature'][value='全职']").prop("checked", "checked");
/* 				$("[name='positionnature'][value='兼职']").prop("checked", "");
				$("[name='positionnature'][value='实习']").prop("checked", ""); */
				document.getElementById("radio1").className = "current";
				document.getElementById("radio2").className = "";
				document.getElementById("radio3").className = "";
			}
			if(positionnature == "兼职"){
				$("[name='positionnature'][value='兼职']").prop("checked", "checked");
				/* $("[name='positionnature'][value='全职']").prop("checked", "");
				$("[name='positionnature'][value='实习']").prop("checked", ""); */
				document.getElementById("radio2").className = "current";
				document.getElementById("radio1").className = "";
				document.getElementById("radio3").className = "";
			}
			if(positionnature == "实习"){
				$("[name='positionnature'][value='实习']").prop("checked", "checked");
				/* $("[name='positionnature'][value='全职']").prop("checked", "");
				$("[name='positionnature'][value='兼职']").prop("checked", ""); */
				document.getElementById("radio3").className = "current";
				document.getElementById("radio2").className = "";
				document.getElementById("radio1").className = "";
			}
	   }
	   if(status=="0"){
		   $('.weui_switch').removeClass('checked');
	   }
	   if(status=="1"){
		   $('.weui_switch').addClass('checked');
	   }
	}
</script>
<script type="application/javascript">
    $(function(){
        $('.weui_switch').click(function(){
//            $(this).toggleClass('checked');  //只用这句的话，只可以控制样式。很方便，但是不能进行其他操作
            if($(this).hasClass('checked')){
                $(this).removeClass('checked');
                //console.log('关闭');
				//alert(0)
				var formData = new FormData(); 
		        formData.append('status', "0");
				$.ajax({
		        url: '/uploadjianlistatus.action',
		        type: 'POST',
		        data: formData, 
		        processData: false, // 告诉jQuery不要去处理发送的数据
		        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		        success: function (data) {
		        	if(data=="1"){
		        		document.getElementById("tishi").innerHTML="公开简历信息后师聘可以帮您找工作";
		        		document.getElementById('zhuangtai').innerText="(未公开)";
		        	}
		        	if(data=="0"){
		        		 window.location.href = "login.action"; 
		        	}
		        },
		        error: function (data) {	
		        	 window.location.href = "login.action"; 
		        }
		    })  
				
            }else{
                $(this).addClass('checked');
                //console.log('打开');
				//alert(1)
				var formData = new FormData(); 
		        formData.append('status', "1");
				$.ajax({
		        url: '/uploadjianlistatus.action',
		        type: 'POST',
		        data: formData, 
		        processData: false, // 告诉jQuery不要去处理发送的数据
		        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		        success: function (data) {
		        	if(data=="1"){
		        		document.getElementById("tishi").innerHTML="请注意您的邮箱,可能有面试哦";
		        		document.getElementById('zhuangtai').innerText="(已公开)";
		        	}
		        	if(data=="0"){
		        		 window.location.href = "login.action"; 
		        	}
		        },
		        error: function (data) {
		        	 window.location.href = "login.action"; 
		        }
		    })  
            }
        });
    });
</script>
</html>