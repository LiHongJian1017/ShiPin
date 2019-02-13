<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
<title>师聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description"
	content=" ">
<meta name="keywords"
	content="">
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
					<li class="current"><a href="myhome.action">公司主页</a></li>
					<li><a href="createjob.action">发布的职位</a></li>
					<li><a href="caninterviewresumes.action">收到的简历</a></li>
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
			<!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
			<div class="clearfix">

				<div class="content_l">
					<div class="c_detail">
							<form id="companylogoo" action="uploadlogo.action" method="post" enctype="multipart/form-data">
								<input type="hidden" value="${company.companyid}" class="leader_id" id="companyid" name="companyid">
								<div class="c_logo" style="background-color:#fff;">
				                	<div id="logoShow">
				                	<c:if test="${not empty company.companylogo}">
				                		<img src="/pic/${company.companylogo}" id="showcompanylogo" name="showcompanylogo" width="190" height="190" alt="公司logo" />
			                        	<span>更换公司LOGO<br />190px*190px 小于5M</span>
			                        </c:if>
			                        <c:if test="${empty company.companylogo}">
				                		<img src="style/images/logo_default.png" id="showcompanylogo" name="showcompanylogo" width="190" height="190" alt="公司logo" />
			                        	<span>更换公司LOGO<br />190px*190px 小于5M</span>
			                        </c:if>
			                        </div>
			                        <input onchange="uploadlogoPic()" type="file" id="companylogo" name="companylogo" title="支持jpg、jpeg、gif、png格式，文件小于5M" />
				                </div>
			                </form>
						  
						<div class="c_box companyName">
							<c:if test="${not empty company.companyname}">
								<h2 title="">${company.companyname}</h2>
							</c:if>
							<c:if test="${empty company.companyname}">
								<h2 title="">公司名称</h2>
							</c:if>
							<c:if test="${empty lianheposition}">
								<em class="unvalid"></em> <span class="va dn">师聘未认证企业</span>
								<div class="clear"></div>
							</c:if>
							<c:if test="${not empty lianheposition}">
								<em class="valid"><img src="style/images/valid.png" width="15" height="19" alt="师聘认证企业"></em>
							<span class="va dn">师聘认证企业</span>
							<div class="clear"></div>
							</c:if>
							
							<h1 title="" class="fullname">${company.companyname}</h1>

							<form class="clear editDetail dn" id="updatecompanytop" name="updatecompanytop" action="updatecompanytop.action" method="post">
								<input type="text" placeholder="请输入公司名称" maxlength="35"
									value="${company.companyname}" name="companyname" 
									id="companyname"> <input type="text"
									placeholder="一句话描述公司优势，核心价值，限50字" maxlength="50"
									value="${company.companyfeatures}" name="companyfeatures"
									id="companyfeatures"> <input type="hidden"
									value="${company.companyid}" id="companyid" name="companyid"> <input
									type="submit" value="保存" id="saveDetail" class="btn_small">
								<a id="cancelDetail" class="btn_cancel_s">取消</a>
							</form>

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
								<li class="link">编辑</li>
							</ul>
							<form id="updatetags" name="updatetags" action="updatetags.action"  method="post">
								<div class="dn" id="addLabels">
								<input type="hidden" value="${company.companyid}" class="leader_id" id="companyid" name="companyid">
								<input type="text" placeholder="添加自定义标签1" value="${company.companytag1}" name="companytag1" id="companytag1" class="label_form">
								<input type="text" placeholder="添加自定义标签2" value="${company.companytag2}" name="companytag2" id="companytag2" class="label_form">
								<input type="text" placeholder="添加自定义标签3" value="${company.companytag3}" name="companytag3" id="companytag3" class="label_form">
								<input type="text" placeholder="添加自定义标签4" value="${company.companytag4}" name="companytag4" id="companytag4" class="label_form">
								<input type="text" placeholder="添加自定义标签5" value="${company.companytag5}" name="companytag5" id="companytag5" class="label_form">
								
								<div class="clear"></div>
								<ul class="reset clearfix"></ul>
								<a id="saveLabels" class="btn_small" href="JavaScript:updatetags();">保存</a>
								<a id="cancelLabels" class="btn_cancel_s" href="javascript:void(0)">取消</a>
								</div>
							</form>
						</div>
						<a title="编辑基本信息" class="c_edit" id="editCompanyDetail"
							href="javascript:void(0);"></a>
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
								<dd>
									<div class="addnew">
										详细公司的发展历程、让求职者更加了解你!<br> <a id="addIntro"
											href="javascript:void(0)">+添加公司介绍</a>
									</div>
								</dd>
							</dl>
							<!--编辑介绍-->
							<dl class="c_section newIntro dn">
								<dt>
									<h2>
										<em></em>公司介绍
									</h2>
								</dt>
								<dd>
									<form id="companyintroduce" name="companyintroduce" action="updatecompanyintroduce.action"  method="post">
										<input type="hidden" value="${company.companyid}" class="leader_id" id="companyid" name="companyid">
										<textarea placeholder="请分段详细描述公司简介、企业文化等"
											name="companyintroduce" id="companyintroduce">${company.companyintroduce}</textarea>
										<div class="word_count fr">
											你还可以输入 <span>1000</span> 字
										</div>
										<div class="clear"></div>
										<input type="submit" value="保存" id="submitProfile"
											class="btn_small"> <a id="delProfile"
											class="btn_cancel_s" href="javascript:void(0)">取消</a>
									</form>
								</dd>
							</dl>

							<!--有介绍-->
							<dl class="c_section">
								<dt>
									<h2>
										<em></em>公司介绍
									</h2>
								</dt>
								<dd>
									<div class="c_intro">${company.companyintroduce}</div>
									<a title="编辑公司介绍" id="editIntro" class="c_edit"
										href="javascript:void(0)"></a>
								</dd>
							</dl>
						</div>

					</div>
					<!-- end #Profile -->

					<!--[if IE 7]> <br /> <![endif]-->

					
					<dl id="noJobs" class="c_section">
					<dt>
						<h2>
							<em></em>招聘职位
						</h2>
					</dt>
					<br><br>
					<c:forEach items="${listPosition}" var="listPosition">
						<ul class="reset my_jobs">
							<li data-id="">
								<h3>
									<a target="_blank" title="">${listPosition.positionname}</a> 
									<span>[${listPosition.workaddress}]</span>
								</h3> 
								<div>${listPosition.positionnature}/
											${listPosition.salarymin}k-${listPosition.salarymax}k /
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
								<div class="c9" style="text-align:right">
									<fmt:formatDate value="${listPosition.releasetime}" pattern="yyyy-MM-dd HH:mm:ss" />
								</div>
							</li>
						</ul>
					</c:forEach>
				<!-- 	
						<dd>
							<div class="addnew">
								发布需要的人才信息，让伯乐和千里马尽快相遇……<br> <a href="createjob.action">+添加招聘职位</a>
							</div>
						</dd> -->
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
										<td title="">${company.companytype}</td>
									</tr>
									<tr>
										<td>规模</td>
										<td>${company.companysize}</td>
									</tr>
									<tr>
										<td>主页</td>
										<td><a rel="nofollow" title=""
											target="_blank" href="https://${company.companyweb}">${company.companyweb}</a>
										</td>
									</tr>
								</tbody>
							</table>
							<a id="editTags" class="c_edit" href="javascript:void(0)"></a>
						</div>
						<div id="c_tags_edit" class="c_tags editTags dn">
							<form id="updatecompanyright" name="updatecompanyright" action="updatecompanyright.action" method="post">
							<input type="hidden" value="${company.companyid}" class="leader_id" id="companyid" name="companyid">
								<table>
									<tbody>
										<tr>
											<td>地点</td>
											<td><input type="text" placeholder="请输入地点" value="${company.companyaddress}"
												name="companyaddress" id="companyaddress"></td>
										</tr>
										<tr>
											<td>类型</td>
											<td><input type="text" placeholder="请输入类型" value="${company.companytype}"
												id="companytype" name="companytype"> 
		                                	</td>
										</tr>
										<tr>
											<td>规模</td>
											<td><input type="hidden" id="companysize" name="companysize" value="${company.companysize}">
											 <input type="button" value="${company.companysize}" id="select_sca"  
												class="select_tags">
												<div class="selectBox dn" id="box_sca"
													style="display: none;">
													<ul class="reset">
														<li>少于15人</li>
														<li>15-50人</li>
														<li>50-150人</li>
														<li>150-500人</li>
														<li>500-2000人</li>
														<li>2000人以上</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td>主页</td>
											<td><input type="text" placeholder="请输入网址"
												value="${company.companyweb}" name="companyweb"
												id="companyweb"></td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" id="comCity" value="上海"> <input
									type="hidden" id="comInd" value="移动互联网"> <input
									type="hidden" id="comSize" value="150-500人"> <input
									type="hidden" id="comUrl" value="http://www.zmtpost.com">
								<input type="submit" value="保存" id="submitFeatures"
									class="btn_small"> <a id="cancelFeatures"
									class="btn_cancel_s" href="javascript:void(0)">取消</a>
								<div class="clear"></div>
							</form>
						</div>
					</div>
					<!-- end #Tags -->

					<!-- <div class="c_breakline"></div> -->
					<br>
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
										展示公司的领导班子，<br>提升诱人指数！<br> <a class="member_edit"
											href="javascript:void(0)">+添加成员</a>
									</div>

									<!-- 编辑创始人 -->
									<div id="editceo" class="member_info newMember dn">
										<form  action="updatecompanyceo.action" method="post" enctype="multipart/form-data">
											<div class="new_portrait">
												<div class="portrait_upload dn portraitNo">
													<span>上传创始人头像</span>
												</div>
												<div class="portraitShow">
												<c:if test="${not empty company.companyceologo}">
													<img width="120" height="120" id="imgshow"
														src="/pic/${company.companyceologo}"> <span>更换头像</span>
												</c:if>
												<c:if test="${empty company.companyceologo}">
													<img width="120" height="120" id="imgshow"
														src="style/images/leader_default.png"> <span>更换头像</span>
												</c:if>
												 
												</div>
												<input type="file" id="logo" name="logo"
													title="支持jpg、jpeg、gif、png格式，文件小于5M">
													 <input type="hidden" value="7" name="type" class="type">
													 <input type="hidden" value="images/leader_default.png" name="photo" class="leaderInfos">
													 <em>
														尺寸：120*120px <br> 大小：小于5M
													</em>
											</div>
											<input type="text" placeholder="请输入创始人姓名" value="${company.companyceoname}"
												name="companyceoname" id="companyceoname"> <input type="text"
												placeholder="请输入创始人当前职位" value="${company.companyceoposition}" name="companyceoposition" id="companyceoposition">
											<input type="text" placeholder="请输入创始人新浪微博地址"
												value="${company.companyceoweibo}" name="companyceoweibo" id="companyceoweibo">
											<textarea placeholder="请输入创始人个人简介" maxlength="500"
												class="s_textarea" name="companyceoremark" id="companyceoremark">${company.companyceoremark}</textarea>
											<div class="word_count fr">
												你还可以输入 <span>500</span> 字
											</div>
											<div class="clear"></div>
											<input type="submit" value="保存" class="btn_small">
											<a id="cancelFeatures" class="btn_cancel_s" onclick="ceo();">取消</a>
											<input type="hidden" value="${company.companyid}" class="leader_id" id="companyid" name="companyid">
										</form>
									</div>

									<!-- 显示创始人 -->
									<div id="ceo" class="member_info">
										<a title="编辑创始人" class="c_edit member_edit"
											href="javascript:void(0)"></a>
										<div class="m_portrait">
											<div></div>
											<c:if test="${company.companyceologo !=null}">
											<img width="120" height="120" alt=""
												src="/pic/${company.companyceologo}">
											</c:if>
											<c:if test="${empty company.companyceologo}">
											<img width="120" height="120" alt=""
												src="style/images/leader_default.png">
											</c:if>
										</div>
										<div class="m_name">
											${company.companyceoname} <a target="_blank" class="weibo"
												href="https://${company.companyceoweibo}"></a>
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
    //在input file内容改变的时候触发事件
    $('#logo').change(function(){
    //获取input file的files文件数组;
    //$('#filed')获取的是jQuery对象，.get(0)转为原生对象;
    //这边默认只能选一个，但是存放形式仍然是数组，所以取第一个元素使用[0];
      var file = $('#logo').get(0).files[0];
    //创建用来读取此文件的对象
      var reader = new FileReader();
    //使用该对象读取file文件
      reader.readAsDataURL(file);
    //读取文件成功后执行的方法函数
      reader.onload=function(e){
    //读取成功后返回的一个参数e，整个的一个进度事件
        console.log(e);
    //选择所要显示图片的img，要赋值给img的src就是e中target下result里面
    //的base64编码格式的地址
        $('#imgshow').get(0).src = e.target.result;
      }
    })
</script>
<script>
    //在input file内容改变的时候触发事件
    $('#companylogo').change(function(){
    //获取input file的files文件数组;
    //$('#filed')获取的是jQuery对象，.get(0)转为原生对象;
    //这边默认只能选一个，但是存放形式仍然是数组，所以取第一个元素使用[0];
      var file1 = $('#companylogo').get(0).files[0];
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
        $('#showcompanylogo').get(0).src = e.target.result;
      }
    })
</script>

<script type="text/javascript">  

    function uploadlogoPic() {  
        var form = document.getElementById('companylogoo');
      	form.submit();
    }  
    function updatetags() {  
        var form1 = document.getElementById('updatetags');
      	form1.submit();
    }
    $(function(){
        $('#select_sca').bind('input propertychange', function() {  
        	var input1 = $("#select_sca").val();
        	 $("#companysize").val(input1);
        });  
          
    });
    function tongbu() {  
    	var companysize = document.getElementById("select_sca").value;
    	document.getElementById("companysize").value = companysize;
    }
    function ceo() {  
    	document.getElementById("ceo").className = 'member_info';
    	document.getElementById("editceo").className = 'member_info newMember dn';
    }
</script>
</body>
</html>