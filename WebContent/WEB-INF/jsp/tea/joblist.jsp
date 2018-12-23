<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script id="allmobilize" charset="utf-8"
	src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>前端开发全国-职位搜索-师聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta
	content="前端开发招聘  全国地区招聘 紫色医疗招聘前端开发,月薪:10k-20k,要求:本科及以上学历,3-5年工作经验。职位诱惑：借移动医疗大势享受坐直升飞机的职场发展 公司规模:15-50人移动互联网 ,健康医疗类公司招聘信息汇总  最新最热门互联网行业招聘信息，尽在师聘网"
	name="description">
<meta
	content="前端开发招聘,全国地区前端开发招聘,紫色医疗招聘前端开发,移动互联网 类公司招聘信息汇总,健康医疗类公司招聘信息汇总,师聘招聘,师聘网,互联网招聘"
	name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
	var ctx = "h";
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
<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="style/css/style.css" />
<link rel="stylesheet" type="text/css" href="style/css/external.min.css" />
<link rel="stylesheet" type="text/css" href="style/css/popup.css" />
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body onload="current('${workaddress}')">
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a href="index" class="logo"> <img src="style/images/logo.png"
					width="229" height="43" alt="师聘招聘-专注互联网招聘" />
				</a>
				<ul class="reset" id="navheader">
					<li><a href="index.action">首页</a></li>
					<li class="current"><a href="joblist.action">职位</a></li>
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

			<div class="sidebar">
				<div id="options" class="greybg">

					<c:if test="${empty salary || salary=='不限'}">
						<dl class="slideUp">
							<dt>
								月薪范围 <em class="transform"></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty salary}">
									<span style="font-size: 14px">(${salary})</span>
								</c:if>
								<c:if test="${empty salary}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd style="display: none;">
								<div onclick="salary('不限');">不限</div>
								<div onclick="salary('2k以下');">2k以下</div>
								<div onclick="salary('2k-5k');">2k-5k</div>
								<div onclick="salary('5k-10k');">5k-10k</div>
								<div onclick="salary('10k-15k');">10k-15k</div>
								<div onclick="salary('15k-25k');">15k-25k</div>
								<div onclick="salary('25k-50k');">25k-50k</div>
								<div onclick="salary('50k以上');">50k以上</div>
							</dd>
						</dl>
					</c:if>
					<c:if test="${not empty salary && salary!='不限'}">
						<dl>
							<dt>
								月薪范围 <em></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty salary}">
									<span style="font-size: 14px">(${salary})</span>
								</c:if>
								<c:if test="${empty salary}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd>
								<div onclick="salary('不限');">不限</div>
								<div onclick="salary('2k以下');">2k以下</div>
								<div onclick="salary('2k-5k');">2k-5k</div>
								<div onclick="salary('5k-10k');">5k-10k</div>
								<div onclick="salary('10k-15k');">10k-15k</div>
								<div onclick="salary('15k-25k');">15k-25k</div>
								<div onclick="salary('25k-50k');">25k-50k</div>
								<div onclick="salary('50k以上');">50k以上</div>
							</dd>
						</dl>
					</c:if>
					<c:if test="${empty experience || experience=='不限'}">
						<dl class="slideUp">
							<dt>
								工作经验 <em class="transform"></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty experience}">
									<span style="font-size: 14px">(${experience})</span>
								</c:if>
								<c:if test="${empty experience}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd style="display: none;">
								<div onclick="experience('不限');">不限</div>
								<div onclick="experience('应届毕业生');">应届毕业生</div>
								<div onclick="experience('1年以下');">1年以下</div>
								<div onclick="experience('1-3年');">1-3年</div>
								<div onclick="experience('3-5年');">3-5年</div>
								<div onclick="experience('5-10年');">5-10年</div>
								<div onclick="experience('10年以上');">10年以上</div>
							</dd>
						</dl>
					</c:if>
					<c:if test="${not empty experience && experience!='不限'}">
						<dl>
							<dt>
								工作经验 <em></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty experience}">
									<span style="font-size: 14px">(${experience})</span>
								</c:if>
								<c:if test="${empty experience}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd>
								<div onclick="experience('不限');">不限</div>
								<div onclick="experience('应届毕业生');">应届毕业生</div>
								<div onclick="experience('1年以下');">1年以下</div>
								<div onclick="experience('1-3年');">1-3年</div>
								<div onclick="experience('3-5年');">3-5年</div>
								<div onclick="experience('5-10年');">5-10年</div>
								<div onclick="experience('10年以上');">10年以上</div>
							</dd>
						</dl>
					</c:if>
					<c:if test="${empty education || education=='不限'}">
						<dl class="slideUp">
							<dt>
								最低学历 <em class="transform"></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty education}">
									<span style="font-size: 14px">(${education})</span>
								</c:if>
								<c:if test="${empty education}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd style="display: none;">
								<div onclick="education('不限');">不限</div>
								<div onclick="education('大专');">大专</div>
								<div onclick="education('本科');">本科</div>
								<div onclick="education('硕士');">硕士</div>
								<div onclick="education('博士');">博士</div>
							</dd>
						</dl>
					</c:if>
					<c:if test="${not empty education && education!='不限'}">
						<dl>
							<dt>
								最低学历 <em></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty education}">
									<span style="font-size: 14px">(${education})</span>
								</c:if>
								<c:if test="${empty education}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd>
								<div onclick="education('不限');">不限</div>
								<div onclick="education('大专');">大专</div>
								<div onclick="education('本科');">本科</div>
								<div onclick="education('硕士');">硕士</div>
								<div onclick="education('博士');">博士</div>
							</dd>
						</dl>
					</c:if>
					<c:if test="${empty positionnature || positionnature=='不限'}">
						<dl class="slideUp">
							<dt>
								工作性质 <em class="transform"></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty positionnature}">
									<span style="font-size: 14px">(${positionnature})</span>
								</c:if>
								<c:if test="${empty positionnature}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd style="display: none;">
								<div onclick="positionnature('不限');">不限</div>
								<div onclick="positionnature('全职');">全职</div>
								<div onclick="positionnature('兼职');">兼职</div>
								<div onclick="positionnature('实习');">实习</div>
							</dd>
						</dl>
					</c:if>
					<c:if test="${not empty positionnature && positionnature!='不限'}">
						<dl>
							<dt>
								工作性质 <em></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test="${not empty positionnature}">
									<span style="font-size: 14px">(${positionnature})</span>
								</c:if>
								<c:if test="${empty positionnature}">
									<span style="font-size: 14px">(不限)</span>
								</c:if>
							</dt>
							<dd>
								<div onclick="positionnature('不限');">不限</div>
								<div onclick="positionnature('全职');">全职</div>
								<div onclick="positionnature('兼职');">兼职</div>
								<div onclick="positionnature('实习');">实习</div>
							</dd>
						</dl>
					</c:if>
				</div>

				<!-- QQ群 -->
				<div class="qq_group">
					加入<span>前端</span>QQ群
					<div class="f18">跟同行聊聊</div>
					<p>160541839</p>
				</div>

				<!-- 对外合作广告位  -->
				<a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
					<img src="style/images/w3cplus.png" width="230" height="80"
					alt="w3cplus" />
				</a> <a href="" target="_blank" class="partnersAd"> <img
					src="style/images/jquery_school.jpg" width="230" height="80"
					alt="JQ学校" />
				</a> <a href="http://linux.cn/" target="_blank" class="partnersAd">
					<img src="style/images/linuxcn.png" width="230" height="80"
					alt="Linux中文社区" />
				</a> <a
					href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl"
					target="_blank" class="partnersAd"> <img
					src="style/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
				</a> <a href="http://www.imooc.com" target="_blank" class="partnersAd">
					<img src="style/images/muke.jpg" width="230" height="80" alt="幕课网" />
				</a>
				<!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
	            	<img src="style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
	            </a>
	         -->
			</div>

			<div class="content">
				<div id="search_box">
					<form>
						<ul id="searchType">
							<li data-searchtype="1" class="type_selected">职位</li>

						</ul>
						<input type="text" id="search_input"
							onkeydown="if(event.keyCode==13){event.keyCode=0;event.returnValue=false;}"
							value="${positionname}" placeholder="请输入职位名称，如：教师" />
						<!-- <input type="hidden"
							name="spc" id="spcInput" value="1" /> <input type="hidden"
							name="pl" id="plInput" value="" /> <input type="hidden"
							name="gj" id="gjInput" value="" /> <input type="hidden"
							name="xl" id="xlInput" value="" /> <input type="hidden"
							name="yx" id="yxInput" value="" /> <input type="hidden"
							name="gx" id="gxInput" value="" /> <input type="hidden"
							name="st" id="stInput" value="" /> <input type="hidden"
							name="labelWords" id="labelWords" value="label" /> <input
							type="hidden" name="lc" id="lc" value="" /> <input type="hidden"
							name="workAddress" id="workAddress" value="" /> <input
							type="hidden" name="city" id="cityInput" value="全国" /> -->
						<input type="button" id="search_button" value="搜索"
							onclick="sousuo()" />
					</form>
				</div>
				<style>
.ui-autocomplete {
	width: 488px;
	background: #fafafa !important;
	position: relative;
	z-index: 10;
	border: 2px solid #91cebe;
}

.ui-autocomplete-category {
	font-size: 16px;
	color: #999;
	width: 50px;
	position: absolute;
	z-index: 11;
	right: 0px; /*top: 6px; */
	text-align: center;
	border-top: 1px dashed #e5e5e5;
	padding: 5px 0;
}

.ui-menu-item {
	*width: 439px;
	vertical-align: middle;
	position: relative;
	margin: 0px;
	margin-right: 50px !important;
	background: #fff;
	border-right: 1px dashed #ededed;
}

.ui-menu-item a {
	display: block;
	overflow: hidden;
}
</style>
				<script type="text/javascript" src="style/js/search.min.js"></script>
				<dl class="hotSearch">
					<dt>热门搜索：</dt>
					<c:forEach items="${listPosition}" var="listPosition">
					<dd>
						<a onclick="remensousuo('${listPosition.positionname}')">${listPosition.positionname}</a>
					</dd>
					</c:forEach>
				</dl>
				<div class="breakline"></div>
				<dl class="workplace" id="workplaceSelect">
					<dt class="fl">工作地点：</dt>
					<dd>
						<a onclick="workaddress('全国')" id="全国">全国</a> |
					</dd>
					<dd>
						<a onclick="workaddress('北京')" id="北京">北京</a> |
					</dd>
					<dd>
						<a onclick="workaddress('上海')" id="上海">上海</a> |
					</dd>
					<dd>
						<a onclick="workaddress('广州')" id="广州">广州</a> |
					</dd>
					<dd>
						<a onclick="workaddress('深圳')" id="深圳">深圳</a> |
					</dd>
					<dd>
						<a onclick="workaddress('成都')" id="成都">成都</a> |
					</dd>
					<dd>
						<a onclick="workaddress('杭州')" id="杭州">杭州</a> |
					</dd>
					<dd>
						<a onclick="workaddress('武汉')" id="武汉">武汉</a> |
					</dd>
					<dd>
						<a onclick="workaddress('南京')" id="南京">南京</a> |
					</dd>
					<dd class="more">
						<a href="javascript:;" id="其他">其他</a>
						<div class="triangle citymore_arrow"></div>
					</dd>
					<dd id="box_expectCity" class="searchlist_expectCity dn">
						<span class="bot"></span> <span class="top"></span>
						<dl>
							<dt>A</dt>
							<dd>
								<span><a onclick="workaddress('鞍山')" id="鞍山">鞍山</a></span><span><a
									onclick="workaddress('安阳')" id="安阳">安阳</a></span><span><a
									onclick="workaddress('安庆')" id="安庆">安庆</a></span><span><a
									onclick="workaddress('安康')" id="安康">安康</a></span><span><a
									onclick="workaddress('澳门')" id="澳门">澳门</a></span><span><a
									onclick="workaddress('安顺')" id="安顺">安顺</a></span><span><a
									onclick="workaddress('阿拉善盟')" id="阿拉善盟">阿拉善盟</a></span><span><a
									onclick="workaddress('阿坝藏族羌族自治州')" id="阿坝藏族羌族自治州">阿坝藏族羌族自治州</a></span>
							</dd>
						</dl>
						<dl>
							<dt>B</dt>
							<dd>
								<span><a onclick="workaddress('北京')" id="北京">北京</a></span><span><a
									onclick="workaddress('保定')" id="保定">保定</a></span><span><a
									onclick="workaddress('包头')" id="包头">包头</a></span><span><a
									onclick="workaddress('滨州')" id="滨州">滨州</a></span><span><a
									onclick="workaddress('蚌埠')" id="蚌埠">蚌埠</a></span><span><a
									onclick="workaddress('宝鸡')" id="宝鸡">宝鸡</a></span><span><a
									onclick="workaddress('北海')" id="北海">北海</a></span><span><a
									onclick="workaddress('巴中')" id="巴中">巴中</a></span><span><a
									onclick="workaddress('亳州')" id="亳州">亳州</a></span><span><a
									onclick="workaddress('保山')" id="保山">保山</a></span><span><a
									onclick="workaddress('白银')" id="白银">白银</a></span><span><a
									onclick="workaddress('百色')" id="百色">百色</a></span><span><a
									onclick="workaddress('巴彦淖尔')" id="巴彦淖尔">巴彦淖尔</a></span><span><a
									onclick="workaddress('本溪')" id="本溪">本溪</a></span><span><a
									onclick="workaddress('白山')" id="白山">白山</a></span><span><a
									onclick="workaddress('白城')" id="白城">白城</a></span>
							</dd>
						</dl>
						<dl>
							<dt>C</dt>
							<dd>
								<span><a onclick="workaddress('常州')" id="常州">常州</a></span><span><a
									onclick="workaddress('成都')" id="成都">成都</a></span><span><a
									onclick="workaddress('重庆')" id="重庆">重庆</a></span><span><a
									onclick="workaddress('长沙')" id="长沙">长沙</a></span><span><a
									onclick="workaddress('沧州')" id="沧州">沧州</a></span><span><a
									onclick="workaddress('常德')" id="常德">常德</a></span><span><a
									onclick="workaddress('赤峰')" id="赤峰">赤峰</a></span><span><a
									onclick="workaddress('郴州')" id="郴州">郴州</a></span><span><a
									onclick="workaddress('常熟')" id="常熟">常熟</a></span><span><a
									onclick="workaddress('承德')" id="承德">承德</a></span><span><a
									onclick="workaddress('滁州')" id="滁州">滁州</a></span><span><a
									onclick="workaddress('潮州')" id="潮州">潮州</a></span><span><a
									onclick="workaddress('朝阳')" id="朝阳">朝阳</a></span><span><a
									onclick="workaddress('池州')" id="池州">池州</a></span><span><a
									onclick="workaddress('崇左')" id="崇左">崇左</a></span>
							</dd>
						</dl>
						<dl>
							<dt>D</dt>
							<dd>
								<span><a onclick="workaddress('东莞')" id="东莞">东莞</a></span><span><a
									onclick="workaddress('大连')" id="大连">大连</a></span><span><a
									onclick="workaddress('德州')" id="德州">德州</a></span><span><a
									onclick="workaddress('东营')" id="东营">东营</a></span><span><a
									onclick="workaddress('德阳')" id="德阳">德阳</a></span><span><a
									onclick="workaddress('大庆')" id="大庆">大庆</a></span><span><a
									onclick="workaddress('达州')" id="达州">达州</a></span><span><a
									onclick="workaddress('大同')" id="大同">大同</a></span><span><a
									onclick="workaddress('丹东')" id="丹东">丹东</a></span><span><a
									onclick="workaddress('定西')" id="定西">定西</a></span>
							</dd>
						</dl>
						<dl>
							<dt>E</dt>
							<dd>
								<span><a onclick="workaddress('鄂尔多斯')" id="鄂尔多斯">鄂尔多斯</a></span><span><a
									onclick="workaddress('鄂州')" id="鄂州">鄂州</a></span>
							</dd>
						</dl>
						<dl>
							<dt>F</dt>
							<dd>
								<span><a onclick="workaddress('福州')" id="福州">福州</a></span><span><a
									onclick="workaddress('佛山')" id="佛山">佛山</a></span><span><a
									onclick="workaddress('阜阳')" id="阜阳">阜阳</a></span><span><a
									onclick="workaddress('抚州')" id="抚州">抚州</a></span><span><a
									onclick="workaddress('抚顺')" id="抚顺">抚顺</a></span><span><a
									onclick="workaddress('防城港')" id="防城港">防城港</a></span><span><a
									onclick="workaddress('阜新')" id="阜新">阜新</a></span>
							</dd>
						</dl>
						<dl>
							<dt>G</dt>
							<dd>
								<span><a onclick="workaddress('贵阳')" id="贵阳">贵阳</a></span><span><a
									onclick="workaddress('广州')" id="广州">广州</a></span><span><a
									onclick="workaddress('桂林')" id="桂林">桂林</a></span><span><a
									onclick="workaddress('赣州')" id="赣州">赣州</a></span><span><a
									onclick="workaddress('广安')" id="广安">广安</a></span><span><a
									onclick="workaddress('贵港')" id="贵港">贵港</a></span><span><a
									onclick="workaddress('广元')" id="广元">广元</a></span><span><a
									onclick="workaddress('固原')" id="固原">固原</a></span>
							</dd>
						</dl>
						<dl>
							<dt>H</dt>
							<dd>
								<span><a onclick="workaddress('哈尔滨')" id="哈尔滨">哈尔滨</a></span><span><a
									onclick="workaddress('杭州')" id="杭州">杭州</a></span><span><a
									onclick="workaddress('合肥')" id="合肥">合肥</a></span><span><a
									onclick="workaddress('惠州')" id="惠州">惠州</a></span><span><a
									onclick="workaddress('海口')" id="海口">海口</a></span><span><a
									onclick="workaddress('呼和浩特')" id="呼和浩特">呼和浩特</a></span><span><a
									onclick="workaddress('湖州')" id="湖州">湖州</a></span><span><a
									onclick="workaddress('邯郸')" id="邯郸">邯郸</a></span><span><a
									onclick="workaddress('淮安')" id="淮安">淮安</a></span><span><a
									onclick="workaddress('衡阳')" id="衡阳">衡阳</a></span><span><a
									onclick="workaddress('菏泽')" id="菏泽">菏泽</a></span><span><a
									onclick="workaddress('黄冈')" id="黄冈">黄冈</a></span><span><a
									onclick="workaddress('黄石')" id="黄石">黄石</a></span><span><a
									onclick="workaddress('衡水')" id="衡水">衡水</a></span><span><a
									onclick="workaddress('河源')" id="河源">河源</a></span><span><a
									onclick="workaddress('怀化')" id="怀化">怀化</a></span><span><a
									onclick="workaddress('淮南')" id="淮南">淮南</a></span><span><a
									onclick="workaddress('汉中')" id="汉中">汉中</a></span><span><a
									onclick="workaddress('淮北')" id="淮北">淮北</a></span><span><a
									onclick="workaddress('黄山')" id="黄山">黄山</a></span><span><a
									onclick="workaddress('葫芦岛')" id="葫芦岛">葫芦岛</a></span><span><a
									onclick="workaddress('贺州')" id="贺州">贺州</a></span><span><a
									onclick="workaddress('呼伦贝尔')" id="呼伦贝尔">呼伦贝尔</a></span><span><a
									onclick="workaddress('鹤壁')" id="鹤壁">鹤壁</a></span><span><a
									onclick="workaddress('河池')" id="河池">河池</a></span><span><a
									onclick="workaddress('鹤岗')" id="鹤岗">鹤岗</a></span><span><a
									onclick="workaddress('海东地区')" id="海东地区">海东地区</a></span><span><a
									onclick="workaddress('黑河')" id="黑河">黑河</a></span><span><a
									onclick="workaddress('海宁')" id="海宁">海宁</a></span><span><a
									onclick="workaddress('和田')" id="和田">和田</a></span>
							</dd>
						</dl>
						<dl>
							<dt>J</dt>
							<dd>
								<span><a onclick="workaddress('济南')" id="济南">济南</a></span><span><a
									onclick="workaddress('金华')" id="金华">金华</a></span><span><a
									onclick="workaddress('嘉兴')" id="嘉兴">嘉兴</a></span><span><a
									onclick="workaddress('济宁')" id="济宁">济宁</a></span><span><a
									onclick="workaddress('江门')" id="江门">江门</a></span><span><a
									onclick="workaddress('吉林')" id="吉林">吉林</a></span><span><a
									onclick="workaddress('九江')" id="九江">九江</a></span><span><a
									onclick="workaddress('荆州')" id="荆州">荆州</a></span><span><a
									onclick="workaddress('晋中')" id="晋中">晋中</a></span><span><a
									onclick="workaddress('揭阳')" id="揭阳">揭阳</a></span><span><a
									onclick="workaddress('吉安')" id="吉安">吉安</a></span><span><a
									onclick="workaddress('焦作')" id="焦作">焦作</a></span><span><a
									onclick="workaddress('景德镇')" id="景德镇">景德镇</a></span><span><a
									onclick="workaddress('江阴')" id="江阴">江阴</a></span><span><a
									onclick="workaddress('晋城')" id="晋城">晋城</a></span><span><a
									onclick="workaddress('荆门')" id="荆门">荆门</a></span><span><a
									onclick="workaddress('酒泉')" id="酒泉">酒泉</a></span><span><a
									onclick="workaddress('锦州')" id="锦州">锦州</a></span><span><a
									onclick="workaddress('佳木斯')" id="佳木斯">佳木斯</a></span><span><a
									onclick="workaddress('鸡西')" id="鸡西">鸡西</a></span><span><a
									onclick="workaddress('金昌')" id="金昌">金昌</a></span><span><a
									onclick="workaddress('嘉峪关')" id="嘉峪关">嘉峪关</a></span>
							</dd>
						</dl>
						<dl>
							<dt>K</dt>
							<dd>
								<span><a onclick="workaddress('昆明')" id="昆明">昆明</a></span><span><a
									onclick="workaddress('昆山')" id="昆山">昆山</a></span><span><a
									onclick="workaddress('开封')" id="开封">开封</a></span><span><a
									onclick="workaddress('克拉玛依')" id="克拉玛依">克拉玛依</a></span>
							</dd>
						</dl>
						<dl>
							<dt>L</dt>
							<dd>
								<span><a onclick="workaddress('廊坊')" id="廊坊">廊坊</a></span><span><a
									onclick="workaddress('洛阳')" id="洛阳">洛阳</a></span><span><a
									onclick="workaddress('兰州')" id="兰州">兰州</a></span><span><a
									onclick="workaddress('临沂')" id="临沂">临沂</a></span><span><a
									onclick="workaddress('柳州')" id="柳州">柳州</a></span><span><a
									onclick="workaddress('连云港')" id="连云港">连云港</a></span><span><a
									onclick="workaddress('聊城')" id="聊城">聊城</a></span><span><a
									onclick="workaddress('六安')" id="六安">六安</a></span><span><a
									onclick="workaddress('丽水')" id="丽水">丽水</a></span><span><a
									onclick="workaddress('泸州')" id="泸州">泸州</a></span><span><a
									onclick="workaddress('拉萨')" id="拉萨">拉萨</a></span><span><a
									onclick="workaddress('乐山')" id="乐山">乐山</a></span><span><a
									onclick="workaddress('莱芜')" id="莱芜">莱芜</a></span><span><a
									onclick="workaddress('龙岩')" id="龙岩">龙岩</a></span><span><a
									onclick="workaddress('丽江')" id="丽江">丽江</a></span><span><a
									onclick="workaddress('漯河')" id="漯河">漯河</a></span><span><a
									onclick="workaddress('临汾')" id="临汾">临汾</a></span><span><a
									onclick="workaddress('六盘水')" id="六盘水">六盘水</a></span><span><a
									onclick="workaddress('娄底')" id="娄底">娄底</a></span><span><a
									onclick="workaddress('辽阳')" id="辽阳">辽阳</a></span><span><a
									onclick="workaddress('凉山彝族自治州')" id="凉山彝族自治州">凉山彝族自治州</a></span><span><a
									onclick="workaddress('吕梁')" id="吕梁">吕梁</a></span><span><a
									onclick="workaddress('辽源')" id="辽源">辽源</a></span><span><a
									onclick="workaddress('陇南')" id="陇南">陇南</a></span><span><a
									onclick="workaddress('来宾')" id="来宾">来宾</a></span>
							</dd>
						</dl>
						<dl>
							<dt>M</dt>
							<dd>
								<span><a onclick="workaddress('绵阳')" id="绵阳">绵阳</a></span><span><a
									onclick="workaddress('茂名')" id="茂名">茂名</a></span><span><a
									onclick="workaddress('马鞍山')" id="马鞍山">马鞍山</a></span><span><a
									onclick="workaddress('梅州')" id="梅州">梅州</a></span><span><a
									onclick="workaddress('眉山')" id="眉山">眉山</a></span><span><a
									onclick="workaddress('牡丹江')" id="牡丹江">牡丹江</a></span>
							</dd>
						</dl>
						<dl>
							<dt>N</dt>
							<dd>
								<span><a onclick="workaddress('南宁')" id="南宁">南宁</a></span><span><a
									onclick="workaddress('南京')" id="南京">南京</a></span><span><a
									onclick="workaddress('宁波')" id="宁波">宁波</a></span><span><a
									onclick="workaddress('南昌')" id="南昌">南昌</a></span><span><a
									onclick="workaddress('南通')" id="南通">南通</a></span><span><a
									onclick="workaddress('南阳')" id="南阳">南阳</a></span><span><a
									onclick="workaddress('南充')" id="南充">南充</a></span><span><a
									onclick="workaddress('南平')" id="南平">南平</a></span><span><a
									onclick="workaddress('宁德')" id="宁德">宁德</a></span><span><a
									onclick="workaddress('内江')" id="内江">内江</a></span><span><a
									onclick="workaddress('南海区')" id="南海区">南海区</a></span>
							</dd>
						</dl>
						<dl>
							<dt>P</dt>
							<dd>
								<span><a onclick="workaddress('莆田')" id="莆田">莆田</a></span><span><a
									onclick="workaddress('盘锦')" id="盘锦">盘锦</a></span><span><a
									onclick="workaddress('濮阳')" id="濮阳">濮阳</a></span><span><a
									onclick="workaddress('平顶山')" id="平顶山">平顶山</a></span><span><a
									onclick="workaddress('萍乡')" id="萍乡">萍乡</a></span><span><a
									onclick="workaddress('攀枝花')" id="攀枝花">攀枝花</a></span>
							</dd>
						</dl>
						<dl>
							<dt>Q</dt>
							<dd>
								<span><a onclick="workaddress('青岛')" id="青岛">青岛</a></span><span><a
									onclick="workaddress('泉州')" id="泉州">泉州</a></span><span><a
									onclick="workaddress('秦皇岛')" id="秦皇岛">秦皇岛</a></span><span><a
									onclick="workaddress('清远')" id="清远">清远</a></span><span><a
									onclick="workaddress('衢州')" id="衢州">衢州</a></span><span><a
									onclick="workaddress('齐齐哈尔')" id="齐齐哈尔">齐齐哈尔</a></span><span><a
									onclick="workaddress('钦州')" id="钦州">钦州</a></span><span><a
									onclick="workaddress('曲靖')" id="曲靖">曲靖</a></span><span><a
									onclick="workaddress('庆阳')" id="庆阳">庆阳</a></span><span><a
									onclick="workaddress('七台河')" id="七台河">七台河</a></span>
							</dd>
						</dl>
						<dl>
							<dt>R</dt>
							<dd>
								<span><a onclick="workaddress('日照')" id="日照">日照</a></span>
							</dd>
						</dl>
						<dl>
							<dt>S</dt>
							<dd>
								<span><a onclick="workaddress('上海')" id="上海">上海</a></span><span><a
									onclick="workaddress('苏州')" id="苏州">苏州</a></span><span><a
									onclick="workaddress('沈阳')" id="沈阳">沈阳</a></span><span><a
									onclick="workaddress('深圳')" id="深圳">深圳</a></span><span><a
									onclick="workaddress('石家庄')" id="石家庄">石家庄</a></span><span><a
									onclick="workaddress('绍兴')" id="绍兴">绍兴</a></span><span><a
									onclick="workaddress('汕头')" id="汕头">汕头</a></span><span><a
									onclick="workaddress('三亚')" id="三亚">三亚</a></span><span><a
									onclick="workaddress('宿迁')" id="宿迁">宿迁</a></span><span><a
									onclick="workaddress('十堰')" id="十堰">十堰</a></span><span><a
									onclick="workaddress('韶关')" id="韶关">韶关</a></span><span><a
									onclick="workaddress('商丘')" id="商丘">商丘</a></span><span><a
									onclick="workaddress('上饶')" id="上饶">上饶</a></span><span><a
									onclick="workaddress('宿州')" id="宿州">宿州</a></span><span><a
									onclick="workaddress('三门峡')" id="三门峡">三门峡</a></span><span><a
									onclick="workaddress('遂宁')" id="遂宁">遂宁</a></span><span><a
									onclick="workaddress('三明')" id="三明">三明</a></span><span><a
									onclick="workaddress('汕尾')" id="汕尾">汕尾</a></span><span><a
									onclick="workaddress('随州')" id="随州">随州</a></span><span><a
									onclick="workaddress('邵阳')" id="邵阳">邵阳</a></span><span><a
									onclick="workaddress('松原')" id="松原">松原</a></span><span><a
									onclick="workaddress('商洛')" id="商洛">商洛</a></span><span><a
									onclick="workaddress('朔州')" id="朔州">朔州</a></span><span><a
									onclick="workaddress('双鸭山')" id="双鸭山">双鸭山</a></span>
							</dd>
						</dl>
						<dl>
							<dt>T</dt>
							<dd>
								<span><a onclick="workaddress('太原')" id="太原">太原</a></span><span><a
									onclick="workaddress('天津')" id="天津">天津</a></span><span><a
									onclick="workaddress('台州')" id="台州">台州</a></span><span><a
									onclick="workaddress('唐山')" id="唐山">唐山</a></span><span><a
									onclick="workaddress('泰州')" id="泰州">泰州</a></span><span><a
									onclick="workaddress('泰安')" id="泰安">泰安</a></span><span><a
									onclick="workaddress('通辽')" id="通辽">通辽</a></span><span><a
									onclick="workaddress('铜陵')" id="铜陵">铜陵</a></span><span><a
									onclick="workaddress('铁岭')" id="铁岭">铁岭</a></span><span><a
									onclick="workaddress('通化')" id="通化">通化</a></span><span><a
									onclick="workaddress('太仓')" id="太仓">太仓</a></span><span><a
									onclick="workaddress('天水')" id="天水">天水</a></span><span><a
									onclick="workaddress('台湾')" id="台湾">台湾</a></span>
							</dd>
						</dl>
						<dl>
							<dt>W</dt>
							<dd>
								<span><a onclick="workaddress('武汉')" id="武汉">武汉</a></span><span><a
									onclick="workaddress('无锡')" id="无锡">无锡</a></span><span><a
									onclick="workaddress('温州')" id="温州">温州</a></span><span><a
									onclick="workaddress('潍坊')" id="潍坊">潍坊</a></span><span><a
									onclick="workaddress('乌鲁木齐')" id="乌鲁木齐">乌鲁木齐</a></span><span><a
									onclick="workaddress('芜湖')" id="芜湖">芜湖</a></span><span><a
									onclick="workaddress('威海')" id="威海">威海</a></span><span><a
									onclick="workaddress('渭南')" id="渭南">渭南</a></span><span><a
									onclick="workaddress('梧州')" id="梧州">梧州</a></span><span><a
									onclick="workaddress('吴忠')" id="吴忠">吴忠</a></span><span><a
									onclick="workaddress('乌兰察布')" id="乌兰察布">乌兰察布</a></span><span><a
									onclick="workaddress('乌海')" id="乌海">乌海</a></span>
							</dd>
						</dl>
						<dl>
							<dt>X</dt>
							<dd>
								<span><a onclick="workaddress('厦门')" id="厦门">厦门</a></span><span><a
									onclick="workaddress('西安')" id="西安">西安</a></span><span><a
									onclick="workaddress('徐州')" id="徐州">徐州</a></span><span><a
									onclick="workaddress('香港')" id="香港">香港</a></span><span><a
									onclick="workaddress('新乡')" id="新乡">新乡</a></span><span><a
									onclick="workaddress('咸阳')" id="咸阳">咸阳</a></span><span><a
									onclick="workaddress('邢台')" id="邢台">邢台</a></span><span><a
									onclick="workaddress('襄阳')" id="襄阳">襄阳</a></span><span><a
									onclick="workaddress('西宁')" id="西宁">西宁</a></span><span><a
									onclick="workaddress('湘潭')" id="湘潭">湘潭</a></span><span><a
									onclick="workaddress('孝感')" id="孝感">孝感</a></span><span><a
									onclick="workaddress('许昌')" id="许昌">许昌</a></span><span><a
									onclick="workaddress('信阳')" id="信阳">信阳</a></span><span><a
									onclick="workaddress('咸宁')" id="咸宁">咸宁</a></span><span><a
									onclick="workaddress('忻州')" id="忻州">忻州</a></span><span><a
									onclick="workaddress('新余')" id="新余">新余</a></span><span><a
									onclick="workaddress('宣城')" id="宣城">宣城</a></span><span><a
									onclick="workaddress('襄樊')" id="襄樊">襄樊</a></span><span><a
									onclick="workaddress('锡林郭勒盟')" id="锡林郭勒盟">锡林郭勒盟</a></span><span><a
									onclick="workaddress('湘西土家族苗族自治州')" id="湘西土家族苗族自治州">湘西土家族苗族自治州</a></span><span><a
									onclick="workaddress('兴安盟')" id="兴安盟">兴安盟</a></span>
							</dd>
						</dl>
						<dl>
							<dt>Y</dt>
							<dd>
								<span><a onclick="workaddress('烟台')" id="烟台">烟台</a></span><span><a
									onclick="workaddress('扬州')" id="扬州">扬州</a></span><span><a
									onclick="workaddress('银川')" id="银川">银川</a></span><span><a
									onclick="workaddress('宜昌')" id="宜昌">宜昌</a></span><span><a
									onclick="workaddress('盐城')" id="盐城">盐城</a></span><span><a
									onclick="workaddress('岳阳')" id="岳阳">岳阳</a></span><span><a
									onclick="workaddress('运城')" id="运城">运城</a></span><span><a
									onclick="workaddress('宜春')" id="宜春">宜春</a></span><span><a
									onclick="workaddress('宜宾')" id="宜宾">宜宾</a></span><span><a
									onclick="workaddress('益阳')" id="益阳">益阳</a></span><span><a
									onclick="workaddress('阳江')" id="阳江">阳江</a></span><span><a
									onclick="workaddress('营口')" id="营口">营口</a></span><span><a
									onclick="workaddress('阳泉')" id="阳泉">阳泉</a></span><span><a
									onclick="workaddress('永州')" id="永州">永州</a></span><span><a
									onclick="workaddress('玉林')" id="玉林">玉林</a></span><span><a
									onclick="workaddress('榆林')" id="榆林">榆林</a></span><span><a
									onclick="workaddress('玉溪')" id="玉溪">玉溪</a></span><span><a
									onclick="workaddress('云浮')" id="云浮">云浮</a></span><span><a
									onclick="workaddress('延安')" id="延安">延安</a></span><span><a
									onclick="workaddress('鹰潭')" id="鹰潭">鹰潭</a></span><span><a
									onclick="workaddress('雅安')" id="雅安">雅安</a></span><span><a
									onclick="workaddress('伊春')" id="伊春">伊春</a></span>
							</dd>
						</dl>
						<dl>
							<dt>Z</dt>
							<dd>
								<span><a onclick="workaddress('中山')" id="中山">中山</a></span><span><a
									onclick="workaddress('郑州')" id="郑州">郑州</a></span><span><a
									onclick="workaddress('珠海')" id="珠海">珠海</a></span><span><a
									onclick="workaddress('长春')" id="长春">长春</a></span><span><a
									onclick="workaddress('淄博')" id="淄博">淄博</a></span><span><a
									onclick="workaddress('镇江')" id="镇江">镇江</a></span><span><a
									onclick="workaddress('株洲')" id="株洲">株洲</a></span><span><a
									onclick="workaddress('肇庆')" id="肇庆">肇庆</a></span><span><a
									onclick="workaddress('漳州')" id="漳州">漳州</a></span><span><a
									onclick="workaddress('湛江')" id="湛江">湛江</a></span><span><a
									onclick="workaddress('遵义')" id="遵义">遵义</a></span><span><a
									onclick="workaddress('舟山')" id="舟山">舟山</a></span><span><a
									onclick="workaddress('张家港')" id="张家港">张家港</a></span><span><a
									onclick="workaddress('张家口')" id="张家口">张家口</a></span><span><a
									onclick="workaddress('周口')" id="周口">周口</a></span><span><a
									onclick="workaddress('枣庄')" id="枣庄">枣庄</a></span><span><a
									onclick="workaddress('自贡')" id="自贡">自贡</a></span><span><a
									onclick="workaddress('长治')" id="长治">长治</a></span><span><a
									onclick="workaddress('驻马店')" id="驻马店">驻马店</a></span><span><a
									onclick="workaddress('资阳')" id="资阳">资阳</a></span><span><a
									onclick="workaddress('张家界')" id="张家界">张家界</a></span><span><a
									onclick="workaddress('昭通')" id="昭通">昭通</a></span><span><a
									onclick="workaddress('张掖')" id="张掖">张掖</a></span><span><a
									onclick="workaddress('中卫')" id="中卫">中卫</a></span><span><a
									onclick="workaddress('章丘')" id="章丘">章丘</a></span>
							</dd>
						</dl>
					</dd>
				</dl>

				<div id="tip_didi" class="dn">
					<span>亲，“嘀嘀打车”已更名为“滴滴打车”了哦，我们已帮您自动跳转~</span> <a href="javascript:;">我知道了</a>
				</div>

				<ul class="hot_pos reset">
					<c:if test="${pageall=='0'}">
						<br>
						<br>
						<br>
						<div class="filter_tip">
							很抱歉 &nbsp; &nbsp;<span>没有相符</span>的搜索。 <span> &nbsp;</span>&nbsp;
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
									<a
										href="jobdetail.action?positionid=${listPosandcom.positionid}&companyid=${listPosandcom.companyid}"
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
					<!-- <li class="clearfix">
						<div class="hot_pos_l">
							<div class="mb10">
								<a href="h/jobs/114177.html" title="前端开发" target="_blank">前端开发</a>
								&nbsp; <span class="c9">[北京]</span>
							</div>
							<span><em class="c7">月薪：</em>8k-16k</span> <span><em
								class="c7">经验：</em> 3-5年</span> <span><em class="c7">最低学历：
							</em>本科</span> <br /> <span><em class="c7">职位诱惑：</em>第一家互联网私人银行招募各路牛人</span>
							<br /> <span>09:41发布</span>
						</div>
						<div class="hot_pos_r">
							<div class="apply">
								<a href="toudi.html" target="_blank">投个简历</a>
							</div>
							<div class="mb10">
								<a href="h/c/7626.html" title="网利宝" target="_blank">网利宝</a>
							</div>
							<span><em class="c7">领域： </em>O2O,金融互联网</span> <span><em
								class="c7">创始人：</em> 赵润龙（Kevin Chiu）</span> <br /> <span><em
								class="c7">阶段： </em>成长型(A轮)</span> <span><em class="c7">规模：
							</em>15-50人</span>
							<ul class="companyTags reset">
								<li>股票期权</li>
								<li>五险一金</li>
								<li>带薪年假</li>
							</ul>
						</div>
					</li> -->


				</ul>
				<!-- <div class="Pagination"></div>  -->
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


			<script>
				$(function() {
					/***************************
					 * 分页
					 */
					$('.Pagination').pager({
						currPage : 1,
						pageNOName : "pn",
						form : "searchForm",
						pageCount : 30,
						pageSize : 5
					});

					$(".workplace dd").not('.more').children('a').click(
							function() {
								$('#lc').val(1);
								editForm("cityInput", $(this).html());
							});

					$("#box_expectCity dd span").click(function() {
						$('#lc').val(1);
						editForm("cityInput", $(this).html());
					});

					/* $('#options dd div').click(
							function() {
								var firstName = $(this).parents('dl').children(
										'dt').text();
								var fn = $.trim(firstName);
								if (fn == "月薪范围") {
									editForm("yxInput", $(this).html());
								} else if (fn == "工作经验") {
									editForm("gjInput", $(this).html());
								} else if (fn == "最低学历") {
									editForm("xlInput", $(this).html());
								} else if (fn == "工作性质") {
									editForm("gxInput", $(this).html());
								} else if (fn == "发布时间") {
									editForm("stInput", $(this).html());
								}
							}); */

					$('#selected ul').delegate(
							'li span.select_remove',
							'click',
							function(event) {
								var firstName = $(this).parent('li').find(
										'strong').text();
								var fn = $.trim(firstName);
								if (fn == "月薪范围")
									editForm("yxInput", "");
								else if (fn == "工作经验")
									editForm("gjInput", "");
								else if (fn == "最低学历")
									editForm("xlInput", "");
								else if (fn == "工作性质")
									editForm("gxInput", "");
								else if (fn == "发布时间")
									editForm("stInput", "");
							});

					/* search结果飘绿	*/
					(function($) {
						var searchVal = $('#search_input').val();
						var reg = /\s/g;
						searchVal = searchVal.replace(reg, "").split("");

						var resultL = '';
						var resultR = '';
						$('.hot_pos li').each(
								function() {
									resultL = $('.hot_pos_l a', this).text()
											.split("");
									$.each(resultL, function(i, v) {
										if ($.inArray(v.toLowerCase(),
												searchVal) != -1
												|| $.inArray(v.toUpperCase(),
														searchVal) != -1) {
											resultL[i] = '<span>' + v
													+ '</span>';
										}
									});
									$('.hot_pos_l a', this).html(
											resultL.join(''));

									resultR = $('.hot_pos_r .mb10 a', this)
											.text().split("");
									$.each(resultR, function(i, v) {
										if ($.inArray(v.toLowerCase(),
												searchVal) != -1
												|| $.inArray(v.toUpperCase(),
														searchVal) != -1) {
											resultR[i] = '<span>' + v
													+ '</span>';
										}
									});
									$('.hot_pos_r .mb10 a', this).html(
											resultR.join(''));
								});

					})(jQuery);

					//didi tip
					if ($.cookie('didiTip') != 1 && false) {
						$('#tip_didi').show();
					}
					$('#tip_didi a').click(function() {
						$(this).parent().remove();
						$.cookie('didiTip', 1, {
							expires : 30,
							path : '/'
						});
					});

				});

				/* function editForm(inputId, inputValue) {
					$("#" + inputId).val(inputValue);
					var keyword = $.trim($('#search_input').val());
					var reg = /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
					var re = /#/g;
					var r = /\./g;
					var kw = keyword.replace(reg, " ");

					if (kw == '') {
						$('#searchForm').attr('action', 'list.html所有职位')
								.submit();
					} else {
						kw = kw.replace(re, '井');
						kw = kw.replace(r, '。');
						$('#searchForm').attr('action', 'list.html' + kw)
								.submit();
					}
					//$("#searchForm").submit();
				} */
			</script>

			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" /> <a id="backtop"
				title="回到顶部" rel="nofollow"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="h/about.html" target="_blank" rel="nofollow">联系我们</a> <a
				href="h/af/zhaopin.html" target="_blank">互联网公司导航</a> <a
				href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">师聘微博</a>
			<a class="footer_qr" href="javascript:void(0)" rel="nofollow">师聘微信<i></i></a>
			<div class="copyright">
				&copy;2017-2019 师聘 <a target="_blank"
					href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>
<script>
function fanye(yeshu){
	
	var positionname = '${positionname}';
	var workaddress = '${workaddress}';
	var salary = '${salary}';
	var experience = '${experience}';
	var education = '${education}';
	var positionnature = '${positionnature}';
	var page = yeshu; 
	window.location.href = "selectjob.action?positionname="+positionname+"&workaddress="+workaddress+"&salary="+salary+"&experience="+experience+"&education="+education+"&positionnature="+positionnature+"&page="+page+""; 
}
</script>
<script>
function sousuo(){
    var search_input = $("#search_input").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
    if(search_input==''||search_input==null){
    	document.getElementById("search_input").value = null;
    	alert("请输入搜索信息!")
    }else{
    	window.location.href = "selectjob.action?positionname="+search_input+"&address=&salary=&experience=&education=&positionnature=&page=1"; 
    }
}

function salary(selectsalary){
    //alert(salary)
    var positionname = '${positionname}';
	var workaddress = '${workaddress}';
	var salary = selectsalary;
	var experience = '${experience}';
	var education = '${education}';
	var positionnature = '${positionnature}';
	var page = 1; 
	window.location.href = "selectjob.action?positionname="+positionname+"&workaddress="+workaddress+"&salary="+salary+"&experience="+experience+"&education="+education+"&positionnature="+positionnature+"&page="+page+""; 
 
}
function experience(selectexperience){
    //alert(salary)
    var positionname = '${positionname}';
	var workaddress = '${workaddress}';
	var salary = '${salary}';
	var experience = selectexperience;
	var education = '${education}';
	var positionnature = '${positionnature}';
	var page = 1; 
	window.location.href = "selectjob.action?positionname="+positionname+"&workaddress="+workaddress+"&salary="+salary+"&experience="+experience+"&education="+education+"&positionnature="+positionnature+"&page="+page+""; 
}
function education(education){
    //alert(salary)
    var positionname = '${positionname}';
	var workaddress = '${workaddress}';
	var salary = '${salary}';
	var experience = '${experience}';
	var education = education;
	var positionnature = '${positionnature}';
	var page = 1; 
	window.location.href = "selectjob.action?positionname="+positionname+"&workaddress="+workaddress+"&salary="+salary+"&experience="+experience+"&education="+education+"&positionnature="+positionnature+"&page="+page+""; 
}
function positionnature(positionnature){
    //alert(salary)
    var positionname = '${positionname}';
	var workaddress = '${workaddress}';
	var salary = '${salary}';
	var experience = '${experience}';
	var education = '${education}';
	var positionnature = positionnature;
	var page = 1; 
	window.location.href = "selectjob.action?positionname="+positionname+"&workaddress="+workaddress+"&salary="+salary+"&experience="+experience+"&education="+education+"&positionnature="+positionnature+"&page="+page+""; 
}
function workaddress(workaddress){
    //alert(workaddress)
    //document.getElementById(workaddress).className = "current";
    var positionname = '${positionname}';
	var workaddress = workaddress;
	var salary = '${salary}';
	var experience = '${experience}';
	var education = '${education}';
	var positionnature = '${positionnature}';
	var page = 1; 
	window.location.href = "selectjob.action?positionname="+positionname+"&workaddress="+workaddress+"&salary="+salary+"&experience="+experience+"&education="+education+"&positionnature="+positionnature+"&page="+page+""; 
 	
 }
 function current(workaddress){
	    //alert(workaddress)
	    document.getElementById(workaddress).className = "current";
	    if(workaddress!='全国' && workaddress!='北京' && workaddress!='上海' && workaddress!='广州'
	    && workaddress!='深圳' && workaddress!='成都' && workaddress!='杭州' && workaddress!='武汉' && workaddress!='南京'){
	    	document.getElementById('其他').className = "current";
	    }
}
 function remensousuo(remen){
	    var positionname = remen;
	    window.location.href = "selectjob.action?positionname="+positionname+"&workaddress=全国&salary=&experience=&education=&positionnature=&page=1"; 
	}
</script>
</body>
</html>