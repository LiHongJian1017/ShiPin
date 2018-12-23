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
<title>全国-公司列表-师聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="全国condition-condition-公司列表-师聘网-最专业的互联网招聘平台"
	name="description">
<meta content="全国condition-公司列表-师聘网-最专业的互联网招聘平台" name="keywords">
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
<link rel="shortcut icon" href="style/images/favicon.ico" type="image/x-icon" />
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
<body onload="current('${companyaddress}','${companysize}')">
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a href="index.html" class="logo"> <img
					src="style/images/logo.png" width="229" height="43"
					alt="师聘招聘-专注互联网招聘" />
				</a>
				<ul class="reset" id="navheader">
					<li><a href="index.action">首页</a></li>
					<li><a href="joblist.action">职位</a></li>
					<li class="current"><a href="companylist.action">公司</a></li>
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
					<dd  class="btm" style="display: none;">
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
				<%-- <div id="search_box">
					<form id="searchForm" name="searchForm" action="list.html"
						method="get">
						<ul id="searchType">
							<li data-searchtype="1" class="type_selected">公司</li>

						</ul>
						<input type="text" id="search_input" name="kd" tabindex="1"
							value="${kd}" placeholder="请输入公司名称，如：师聘" /> <input type="hidden"
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
							type="hidden" name="city" id="cityInput" value="全国" /> <input
							type="submit" id="search_button" value="搜索" />
					</form>
					
				</div>
				<dl class="hotSearch">
					<dt>热门搜索：</dt>
					<dd>
						<a href="">高等数学</a>
					</dd>
					<dd>
						<a href="">表演</a>
					</dd>
					<dd>
						<a href="">语文</a>
					</dd>
					<dd>
						<a href="">软件工程</a>
					</dd>
					<dd>
						<a href="">电子商务</a>
					</dd>
					<dd>
						<a href="">计算机</a>
					</dd>
					<dd>
						<a href="">播音</a>
					</dd>
				</dl>
				<div class="breakline"></div> --%>
			<div class="clearfix">
				<div class="content_l">
					<form>
						<dl class="workplace" id="workplaceSelect">
							<dt class="fl">
								<strong>地点：</strong>
							</dt>
							<dd>
								<a onclick="companyaddress('全国')" id="全国">全国</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('北京')" id="北京">北京</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('上海')" id="上海">上海</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('广州')" id="广州">广州</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('深圳')" id="深圳">深圳</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('成都')" id="成都">成都</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('杭州')" id="杭州">杭州</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('武汉')" id="武汉">武汉</a> |
							</dd>
							<dd>
								<a onclick="companyaddress('南京')" id="南京">南京</a> |
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
								<span><a onclick="companyaddress('鞍山')" id="鞍山">鞍山</a></span><span><a
									onclick="companyaddress('安阳')" id="安阳">安阳</a></span><span><a
									onclick="companyaddress('安庆')" id="安庆">安庆</a></span><span><a
									onclick="companyaddress('安康')" id="安康">安康</a></span><span><a
									onclick="companyaddress('澳门')" id="澳门">澳门</a></span><span><a
									onclick="companyaddress('安顺')" id="安顺">安顺</a></span><span><a
									onclick="companyaddress('阿拉善盟')" id="阿拉善盟">阿拉善盟</a></span><span><a
									onclick="companyaddress('阿坝藏族羌族自治州')" id="阿坝藏族羌族自治州">阿坝藏族羌族自治州</a></span>
							</dd>
						</dl>
						<dl>
							<dt>B</dt>
							<dd>
								<span><a onclick="companyaddress('北京')" id="北京">北京</a></span><span><a
									onclick="companyaddress('保定')" id="保定">保定</a></span><span><a
									onclick="companyaddress('包头')" id="包头">包头</a></span><span><a
									onclick="companyaddress('滨州')" id="滨州">滨州</a></span><span><a
									onclick="companyaddress('蚌埠')" id="蚌埠">蚌埠</a></span><span><a
									onclick="companyaddress('宝鸡')" id="宝鸡">宝鸡</a></span><span><a
									onclick="companyaddress('北海')" id="北海">北海</a></span><span><a
									onclick="companyaddress('巴中')" id="巴中">巴中</a></span><span><a
									onclick="companyaddress('亳州')" id="亳州">亳州</a></span><span><a
									onclick="companyaddress('保山')" id="保山">保山</a></span><span><a
									onclick="companyaddress('白银')" id="白银">白银</a></span><span><a
									onclick="companyaddress('百色')" id="百色">百色</a></span><span><a
									onclick="companyaddress('巴彦淖尔')" id="巴彦淖尔">巴彦淖尔</a></span><span><a
									onclick="companyaddress('本溪')" id="本溪">本溪</a></span><span><a
									onclick="companyaddress('白山')" id="白山">白山</a></span><span><a
									onclick="companyaddress('白城')" id="白城">白城</a></span>
							</dd>
						</dl>
						<dl>
							<dt>C</dt>
							<dd>
								<span><a onclick="companyaddress('常州')" id="常州">常州</a></span><span><a
									onclick="companyaddress('成都')" id="成都">成都</a></span><span><a
									onclick="companyaddress('重庆')" id="重庆">重庆</a></span><span><a
									onclick="companyaddress('长沙')" id="长沙">长沙</a></span><span><a
									onclick="companyaddress('沧州')" id="沧州">沧州</a></span><span><a
									onclick="companyaddress('常德')" id="常德">常德</a></span><span><a
									onclick="companyaddress('赤峰')" id="赤峰">赤峰</a></span><span><a
									onclick="companyaddress('郴州')" id="郴州">郴州</a></span><span><a
									onclick="companyaddress('常熟')" id="常熟">常熟</a></span><span><a
									onclick="companyaddress('承德')" id="承德">承德</a></span><span><a
									onclick="companyaddress('滁州')" id="滁州">滁州</a></span><span><a
									onclick="companyaddress('潮州')" id="潮州">潮州</a></span><span><a
									onclick="companyaddress('朝阳')" id="朝阳">朝阳</a></span><span><a
									onclick="companyaddress('池州')" id="池州">池州</a></span><span><a
									onclick="companyaddress('崇左')" id="崇左">崇左</a></span>
							</dd>
						</dl>
						<dl>
							<dt>D</dt>
							<dd>
								<span><a onclick="companyaddress('东莞')" id="东莞">东莞</a></span><span><a
									onclick="companyaddress('大连')" id="大连">大连</a></span><span><a
									onclick="companyaddress('德州')" id="德州">德州</a></span><span><a
									onclick="companyaddress('东营')" id="东营">东营</a></span><span><a
									onclick="companyaddress('德阳')" id="德阳">德阳</a></span><span><a
									onclick="companyaddress('大庆')" id="大庆">大庆</a></span><span><a
									onclick="companyaddress('达州')" id="达州">达州</a></span><span><a
									onclick="companyaddress('大同')" id="大同">大同</a></span><span><a
									onclick="companyaddress('丹东')" id="丹东">丹东</a></span><span><a
									onclick="companyaddress('定西')" id="定西">定西</a></span>
							</dd>
						</dl>
						<dl>
							<dt>E</dt>
							<dd>
								<span><a onclick="companyaddress('鄂尔多斯')" id="鄂尔多斯">鄂尔多斯</a></span><span><a
									onclick="companyaddress('鄂州')" id="鄂州">鄂州</a></span>
							</dd>
						</dl>
						<dl>
							<dt>F</dt>
							<dd>
								<span><a onclick="companyaddress('福州')" id="福州">福州</a></span><span><a
									onclick="companyaddress('佛山')" id="佛山">佛山</a></span><span><a
									onclick="companyaddress('阜阳')" id="阜阳">阜阳</a></span><span><a
									onclick="companyaddress('抚州')" id="抚州">抚州</a></span><span><a
									onclick="companyaddress('抚顺')" id="抚顺">抚顺</a></span><span><a
									onclick="companyaddress('防城港')" id="防城港">防城港</a></span><span><a
									onclick="companyaddress('阜新')" id="阜新">阜新</a></span>
							</dd>
						</dl>
						<dl>
							<dt>G</dt>
							<dd>
								<span><a onclick="companyaddress('贵阳')" id="贵阳">贵阳</a></span><span><a
									onclick="companyaddress('广州')" id="广州">广州</a></span><span><a
									onclick="companyaddress('桂林')" id="桂林">桂林</a></span><span><a
									onclick="companyaddress('赣州')" id="赣州">赣州</a></span><span><a
									onclick="companyaddress('广安')" id="广安">广安</a></span><span><a
									onclick="companyaddress('贵港')" id="贵港">贵港</a></span><span><a
									onclick="companyaddress('广元')" id="广元">广元</a></span><span><a
									onclick="companyaddress('固原')" id="固原">固原</a></span>
							</dd>
						</dl>
						<dl>
							<dt>H</dt>
							<dd>
								<span><a onclick="companyaddress('哈尔滨')" id="哈尔滨">哈尔滨</a></span><span><a
									onclick="companyaddress('杭州')" id="杭州">杭州</a></span><span><a
									onclick="companyaddress('合肥')" id="合肥">合肥</a></span><span><a
									onclick="companyaddress('惠州')" id="惠州">惠州</a></span><span><a
									onclick="companyaddress('海口')" id="海口">海口</a></span><span><a
									onclick="companyaddress('呼和浩特')" id="呼和浩特">呼和浩特</a></span><span><a
									onclick="companyaddress('湖州')" id="湖州">湖州</a></span><span><a
									onclick="companyaddress('邯郸')" id="邯郸">邯郸</a></span><span><a
									onclick="companyaddress('淮安')" id="淮安">淮安</a></span><span><a
									onclick="companyaddress('衡阳')" id="衡阳">衡阳</a></span><span><a
									onclick="companyaddress('菏泽')" id="菏泽">菏泽</a></span><span><a
									onclick="companyaddress('黄冈')" id="黄冈">黄冈</a></span><span><a
									onclick="companyaddress('黄石')" id="黄石">黄石</a></span><span><a
									onclick="companyaddress('衡水')" id="衡水">衡水</a></span><span><a
									onclick="companyaddress('河源')" id="河源">河源</a></span><span><a
									onclick="companyaddress('怀化')" id="怀化">怀化</a></span><span><a
									onclick="companyaddress('淮南')" id="淮南">淮南</a></span><span><a
									onclick="companyaddress('汉中')" id="汉中">汉中</a></span><span><a
									onclick="companyaddress('淮北')" id="淮北">淮北</a></span><span><a
									onclick="companyaddress('黄山')" id="黄山">黄山</a></span><span><a
									onclick="companyaddress('葫芦岛')" id="葫芦岛">葫芦岛</a></span><span><a
									onclick="companyaddress('贺州')" id="贺州">贺州</a></span><span><a
									onclick="companyaddress('呼伦贝尔')" id="呼伦贝尔">呼伦贝尔</a></span><span><a
									onclick="companyaddress('鹤壁')" id="鹤壁">鹤壁</a></span><span><a
									onclick="companyaddress('河池')" id="河池">河池</a></span><span><a
									onclick="companyaddress('鹤岗')" id="鹤岗">鹤岗</a></span><span><a
									onclick="companyaddress('海东地区')" id="海东地区">海东地区</a></span><span><a
									onclick="companyaddress('黑河')" id="黑河">黑河</a></span><span><a
									onclick="companyaddress('海宁')" id="海宁">海宁</a></span><span><a
									onclick="companyaddress('和田')" id="和田">和田</a></span>
							</dd>
						</dl>
						<dl>
							<dt>J</dt>
							<dd>
								<span><a onclick="companyaddress('济南')" id="济南">济南</a></span><span><a
									onclick="companyaddress('金华')" id="金华">金华</a></span><span><a
									onclick="companyaddress('嘉兴')" id="嘉兴">嘉兴</a></span><span><a
									onclick="companyaddress('济宁')" id="济宁">济宁</a></span><span><a
									onclick="companyaddress('江门')" id="江门">江门</a></span><span><a
									onclick="companyaddress('吉林')" id="吉林">吉林</a></span><span><a
									onclick="companyaddress('九江')" id="九江">九江</a></span><span><a
									onclick="companyaddress('荆州')" id="荆州">荆州</a></span><span><a
									onclick="companyaddress('晋中')" id="晋中">晋中</a></span><span><a
									onclick="companyaddress('揭阳')" id="揭阳">揭阳</a></span><span><a
									onclick="companyaddress('吉安')" id="吉安">吉安</a></span><span><a
									onclick="companyaddress('焦作')" id="焦作">焦作</a></span><span><a
									onclick="companyaddress('景德镇')" id="景德镇">景德镇</a></span><span><a
									onclick="companyaddress('江阴')" id="江阴">江阴</a></span><span><a
									onclick="companyaddress('晋城')" id="晋城">晋城</a></span><span><a
									onclick="companyaddress('荆门')" id="荆门">荆门</a></span><span><a
									onclick="companyaddress('酒泉')" id="酒泉">酒泉</a></span><span><a
									onclick="companyaddress('锦州')" id="锦州">锦州</a></span><span><a
									onclick="companyaddress('佳木斯')" id="佳木斯">佳木斯</a></span><span><a
									onclick="companyaddress('鸡西')" id="鸡西">鸡西</a></span><span><a
									onclick="companyaddress('金昌')" id="金昌">金昌</a></span><span><a
									onclick="companyaddress('嘉峪关')" id="嘉峪关">嘉峪关</a></span>
							</dd>
						</dl>
						<dl>
							<dt>K</dt>
							<dd>
								<span><a onclick="companyaddress('昆明')" id="昆明">昆明</a></span><span><a
									onclick="companyaddress('昆山')" id="昆山">昆山</a></span><span><a
									onclick="companyaddress('开封')" id="开封">开封</a></span><span><a
									onclick="companyaddress('克拉玛依')" id="克拉玛依">克拉玛依</a></span>
							</dd>
						</dl>
						<dl>
							<dt>L</dt>
							<dd>
								<span><a onclick="companyaddress('廊坊')" id="廊坊">廊坊</a></span><span><a
									onclick="companyaddress('洛阳')" id="洛阳">洛阳</a></span><span><a
									onclick="companyaddress('兰州')" id="兰州">兰州</a></span><span><a
									onclick="companyaddress('临沂')" id="临沂">临沂</a></span><span><a
									onclick="companyaddress('柳州')" id="柳州">柳州</a></span><span><a
									onclick="companyaddress('连云港')" id="连云港">连云港</a></span><span><a
									onclick="companyaddress('聊城')" id="聊城">聊城</a></span><span><a
									onclick="companyaddress('六安')" id="六安">六安</a></span><span><a
									onclick="companyaddress('丽水')" id="丽水">丽水</a></span><span><a
									onclick="companyaddress('泸州')" id="泸州">泸州</a></span><span><a
									onclick="companyaddress('拉萨')" id="拉萨">拉萨</a></span><span><a
									onclick="companyaddress('乐山')" id="乐山">乐山</a></span><span><a
									onclick="companyaddress('莱芜')" id="莱芜">莱芜</a></span><span><a
									onclick="companyaddress('龙岩')" id="龙岩">龙岩</a></span><span><a
									onclick="companyaddress('丽江')" id="丽江">丽江</a></span><span><a
									onclick="companyaddress('漯河')" id="漯河">漯河</a></span><span><a
									onclick="companyaddress('临汾')" id="临汾">临汾</a></span><span><a
									onclick="companyaddress('六盘水')" id="六盘水">六盘水</a></span><span><a
									onclick="companyaddress('娄底')" id="娄底">娄底</a></span><span><a
									onclick="companyaddress('辽阳')" id="辽阳">辽阳</a></span><span><a
									onclick="companyaddress('凉山彝族自治州')" id="凉山彝族自治州">凉山彝族自治州</a></span><span><a
									onclick="companyaddress('吕梁')" id="吕梁">吕梁</a></span><span><a
									onclick="companyaddress('辽源')" id="辽源">辽源</a></span><span><a
									onclick="companyaddress('陇南')" id="陇南">陇南</a></span><span><a
									onclick="companyaddress('来宾')" id="来宾">来宾</a></span>
							</dd>
						</dl>
						<dl>
							<dt>M</dt>
							<dd>
								<span><a onclick="companyaddress('绵阳')" id="绵阳">绵阳</a></span><span><a
									onclick="companyaddress('茂名')" id="茂名">茂名</a></span><span><a
									onclick="companyaddress('马鞍山')" id="马鞍山">马鞍山</a></span><span><a
									onclick="companyaddress('梅州')" id="梅州">梅州</a></span><span><a
									onclick="companyaddress('眉山')" id="眉山">眉山</a></span><span><a
									onclick="companyaddress('牡丹江')" id="牡丹江">牡丹江</a></span>
							</dd>
						</dl>
						<dl>
							<dt>N</dt>
							<dd>
								<span><a onclick="companyaddress('南宁')" id="南宁">南宁</a></span><span><a
									onclick="companyaddress('南京')" id="南京">南京</a></span><span><a
									onclick="companyaddress('宁波')" id="宁波">宁波</a></span><span><a
									onclick="companyaddress('南昌')" id="南昌">南昌</a></span><span><a
									onclick="companyaddress('南通')" id="南通">南通</a></span><span><a
									onclick="companyaddress('南阳')" id="南阳">南阳</a></span><span><a
									onclick="companyaddress('南充')" id="南充">南充</a></span><span><a
									onclick="companyaddress('南平')" id="南平">南平</a></span><span><a
									onclick="companyaddress('宁德')" id="宁德">宁德</a></span><span><a
									onclick="companyaddress('内江')" id="内江">内江</a></span><span><a
									onclick="companyaddress('南海区')" id="南海区">南海区</a></span>
							</dd>
						</dl>
						<dl>
							<dt>P</dt>
							<dd>
								<span><a onclick="companyaddress('莆田')" id="莆田">莆田</a></span><span><a
									onclick="companyaddress('盘锦')" id="盘锦">盘锦</a></span><span><a
									onclick="companyaddress('濮阳')" id="濮阳">濮阳</a></span><span><a
									onclick="companyaddress('平顶山')" id="平顶山">平顶山</a></span><span><a
									onclick="companyaddress('萍乡')" id="萍乡">萍乡</a></span><span><a
									onclick="companyaddress('攀枝花')" id="攀枝花">攀枝花</a></span>
							</dd>
						</dl>
						<dl>
							<dt>Q</dt>
							<dd>
								<span><a onclick="companyaddress('青岛')" id="青岛">青岛</a></span><span><a
									onclick="companyaddress('泉州')" id="泉州">泉州</a></span><span><a
									onclick="companyaddress('秦皇岛')" id="秦皇岛">秦皇岛</a></span><span><a
									onclick="companyaddress('清远')" id="清远">清远</a></span><span><a
									onclick="companyaddress('衢州')" id="衢州">衢州</a></span><span><a
									onclick="companyaddress('齐齐哈尔')" id="齐齐哈尔">齐齐哈尔</a></span><span><a
									onclick="companyaddress('钦州')" id="钦州">钦州</a></span><span><a
									onclick="companyaddress('曲靖')" id="曲靖">曲靖</a></span><span><a
									onclick="companyaddress('庆阳')" id="庆阳">庆阳</a></span><span><a
									onclick="companyaddress('七台河')" id="七台河">七台河</a></span>
							</dd>
						</dl>
						<dl>
							<dt>R</dt>
							<dd>
								<span><a onclick="companyaddress('日照')" id="日照">日照</a></span>
							</dd>
						</dl>
						<dl>
							<dt>S</dt>
							<dd>
								<span><a onclick="companyaddress('上海')" id="上海">上海</a></span><span><a
									onclick="companyaddress('苏州')" id="苏州">苏州</a></span><span><a
									onclick="companyaddress('沈阳')" id="沈阳">沈阳</a></span><span><a
									onclick="companyaddress('深圳')" id="深圳">深圳</a></span><span><a
									onclick="companyaddress('石家庄')" id="石家庄">石家庄</a></span><span><a
									onclick="companyaddress('绍兴')" id="绍兴">绍兴</a></span><span><a
									onclick="companyaddress('汕头')" id="汕头">汕头</a></span><span><a
									onclick="companyaddress('三亚')" id="三亚">三亚</a></span><span><a
									onclick="companyaddress('宿迁')" id="宿迁">宿迁</a></span><span><a
									onclick="companyaddress('十堰')" id="十堰">十堰</a></span><span><a
									onclick="companyaddress('韶关')" id="韶关">韶关</a></span><span><a
									onclick="companyaddress('商丘')" id="商丘">商丘</a></span><span><a
									onclick="companyaddress('上饶')" id="上饶">上饶</a></span><span><a
									onclick="companyaddress('宿州')" id="宿州">宿州</a></span><span><a
									onclick="companyaddress('三门峡')" id="三门峡">三门峡</a></span><span><a
									onclick="companyaddress('遂宁')" id="遂宁">遂宁</a></span><span><a
									onclick="companyaddress('三明')" id="三明">三明</a></span><span><a
									onclick="companyaddress('汕尾')" id="汕尾">汕尾</a></span><span><a
									onclick="companyaddress('随州')" id="随州">随州</a></span><span><a
									onclick="companyaddress('邵阳')" id="邵阳">邵阳</a></span><span><a
									onclick="companyaddress('松原')" id="松原">松原</a></span><span><a
									onclick="companyaddress('商洛')" id="商洛">商洛</a></span><span><a
									onclick="companyaddress('朔州')" id="朔州">朔州</a></span><span><a
									onclick="companyaddress('双鸭山')" id="双鸭山">双鸭山</a></span>
							</dd>
						</dl>
						<dl>
							<dt>T</dt>
							<dd>
								<span><a onclick="companyaddress('太原')" id="太原">太原</a></span><span><a
									onclick="companyaddress('天津')" id="天津">天津</a></span><span><a
									onclick="companyaddress('台州')" id="台州">台州</a></span><span><a
									onclick="companyaddress('唐山')" id="唐山">唐山</a></span><span><a
									onclick="companyaddress('泰州')" id="泰州">泰州</a></span><span><a
									onclick="companyaddress('泰安')" id="泰安">泰安</a></span><span><a
									onclick="companyaddress('通辽')" id="通辽">通辽</a></span><span><a
									onclick="companyaddress('铜陵')" id="铜陵">铜陵</a></span><span><a
									onclick="companyaddress('铁岭')" id="铁岭">铁岭</a></span><span><a
									onclick="companyaddress('通化')" id="通化">通化</a></span><span><a
									onclick="companyaddress('太仓')" id="太仓">太仓</a></span><span><a
									onclick="companyaddress('天水')" id="天水">天水</a></span><span><a
									onclick="companyaddress('台湾')" id="台湾">台湾</a></span>
							</dd>
						</dl>
						<dl>
							<dt>W</dt>
							<dd>
								<span><a onclick="companyaddress('武汉')" id="武汉">武汉</a></span><span><a
									onclick="companyaddress('无锡')" id="无锡">无锡</a></span><span><a
									onclick="companyaddress('温州')" id="温州">温州</a></span><span><a
									onclick="companyaddress('潍坊')" id="潍坊">潍坊</a></span><span><a
									onclick="companyaddress('乌鲁木齐')" id="乌鲁木齐">乌鲁木齐</a></span><span><a
									onclick="companyaddress('芜湖')" id="芜湖">芜湖</a></span><span><a
									onclick="companyaddress('威海')" id="威海">威海</a></span><span><a
									onclick="companyaddress('渭南')" id="渭南">渭南</a></span><span><a
									onclick="companyaddress('梧州')" id="梧州">梧州</a></span><span><a
									onclick="companyaddress('吴忠')" id="吴忠">吴忠</a></span><span><a
									onclick="companyaddress('乌兰察布')" id="乌兰察布">乌兰察布</a></span><span><a
									onclick="companyaddress('乌海')" id="乌海">乌海</a></span>
							</dd>
						</dl>
						<dl>
							<dt>X</dt>
							<dd>
								<span><a onclick="companyaddress('厦门')" id="厦门">厦门</a></span><span><a
									onclick="companyaddress('西安')" id="西安">西安</a></span><span><a
									onclick="companyaddress('徐州')" id="徐州">徐州</a></span><span><a
									onclick="companyaddress('香港')" id="香港">香港</a></span><span><a
									onclick="companyaddress('新乡')" id="新乡">新乡</a></span><span><a
									onclick="companyaddress('咸阳')" id="咸阳">咸阳</a></span><span><a
									onclick="companyaddress('邢台')" id="邢台">邢台</a></span><span><a
									onclick="companyaddress('襄阳')" id="襄阳">襄阳</a></span><span><a
									onclick="companyaddress('西宁')" id="西宁">西宁</a></span><span><a
									onclick="companyaddress('湘潭')" id="湘潭">湘潭</a></span><span><a
									onclick="companyaddress('孝感')" id="孝感">孝感</a></span><span><a
									onclick="companyaddress('许昌')" id="许昌">许昌</a></span><span><a
									onclick="companyaddress('信阳')" id="信阳">信阳</a></span><span><a
									onclick="companyaddress('咸宁')" id="咸宁">咸宁</a></span><span><a
									onclick="companyaddress('忻州')" id="忻州">忻州</a></span><span><a
									onclick="companyaddress('新余')" id="新余">新余</a></span><span><a
									onclick="companyaddress('宣城')" id="宣城">宣城</a></span><span><a
									onclick="companyaddress('襄樊')" id="襄樊">襄樊</a></span><span><a
									onclick="companyaddress('锡林郭勒盟')" id="锡林郭勒盟">锡林郭勒盟</a></span><span><a
									onclick="companyaddress('湘西土家族苗族自治州')" id="湘西土家族苗族自治州">湘西土家族苗族自治州</a></span><span><a
									onclick="companyaddress('兴安盟')" id="兴安盟">兴安盟</a></span>
							</dd>
						</dl>
						<dl>
							<dt>Y</dt>
							<dd>
								<span><a onclick="companyaddress('烟台')" id="烟台">烟台</a></span><span><a
									onclick="companyaddress('扬州')" id="扬州">扬州</a></span><span><a
									onclick="companyaddress('银川')" id="银川">银川</a></span><span><a
									onclick="companyaddress('宜昌')" id="宜昌">宜昌</a></span><span><a
									onclick="companyaddress('盐城')" id="盐城">盐城</a></span><span><a
									onclick="companyaddress('岳阳')" id="岳阳">岳阳</a></span><span><a
									onclick="companyaddress('运城')" id="运城">运城</a></span><span><a
									onclick="companyaddress('宜春')" id="宜春">宜春</a></span><span><a
									onclick="companyaddress('宜宾')" id="宜宾">宜宾</a></span><span><a
									onclick="companyaddress('益阳')" id="益阳">益阳</a></span><span><a
									onclick="companyaddress('阳江')" id="阳江">阳江</a></span><span><a
									onclick="companyaddress('营口')" id="营口">营口</a></span><span><a
									onclick="companyaddress('阳泉')" id="阳泉">阳泉</a></span><span><a
									onclick="companyaddress('永州')" id="永州">永州</a></span><span><a
									onclick="companyaddress('玉林')" id="玉林">玉林</a></span><span><a
									onclick="companyaddress('榆林')" id="榆林">榆林</a></span><span><a
									onclick="companyaddress('玉溪')" id="玉溪">玉溪</a></span><span><a
									onclick="companyaddress('云浮')" id="云浮">云浮</a></span><span><a
									onclick="companyaddress('延安')" id="延安">延安</a></span><span><a
									onclick="companyaddress('鹰潭')" id="鹰潭">鹰潭</a></span><span><a
									onclick="companyaddress('雅安')" id="雅安">雅安</a></span><span><a
									onclick="companyaddress('伊春')" id="伊春">伊春</a></span>
							</dd>
						</dl>
						<dl>
							<dt>Z</dt>
							<dd>
								<span><a onclick="companyaddress('中山')" id="中山">中山</a></span><span><a
									onclick="companyaddress('郑州')" id="郑州">郑州</a></span><span><a
									onclick="companyaddress('珠海')" id="珠海">珠海</a></span><span><a
									onclick="companyaddress('长春')" id="长春">长春</a></span><span><a
									onclick="companyaddress('淄博')" id="淄博">淄博</a></span><span><a
									onclick="companyaddress('镇江')" id="镇江">镇江</a></span><span><a
									onclick="companyaddress('株洲')" id="株洲">株洲</a></span><span><a
									onclick="companyaddress('肇庆')" id="肇庆">肇庆</a></span><span><a
									onclick="companyaddress('漳州')" id="漳州">漳州</a></span><span><a
									onclick="companyaddress('湛江')" id="湛江">湛江</a></span><span><a
									onclick="companyaddress('遵义')" id="遵义">遵义</a></span><span><a
									onclick="companyaddress('舟山')" id="舟山">舟山</a></span><span><a
									onclick="companyaddress('张家港')" id="张家港">张家港</a></span><span><a
									onclick="companyaddress('张家口')" id="张家口">张家口</a></span><span><a
									onclick="companyaddress('周口')" id="周口">周口</a></span><span><a
									onclick="companyaddress('枣庄')" id="枣庄">枣庄</a></span><span><a
									onclick="companyaddress('自贡')" id="自贡">自贡</a></span><span><a
									onclick="companyaddress('长治')" id="长治">长治</a></span><span><a
									onclick="companyaddress('驻马店')" id="驻马店">驻马店</a></span><span><a
									onclick="companyaddress('资阳')" id="资阳">资阳</a></span><span><a
									onclick="companyaddress('张家界')" id="张家界">张家界</a></span><span><a
									onclick="companyaddress('昭通')" id="昭通">昭通</a></span><span><a
									onclick="companyaddress('张掖')" id="张掖">张掖</a></span><span><a
									onclick="companyaddress('中卫')" id="中卫">中卫</a></span><span><a
									onclick="companyaddress('章丘')" id="章丘">章丘</a></span>
							</dd>
						</dl>
					</dd>
				</dl>

						<div class="breakline"></div>
						<dl class="workplace" id="workplaceSelect">
							<dt class="fl">
								<strong>规模：</strong>
							</dt>
							<dd>
								<a onclick="companysize('不限')" id="不限">不限</a> |
							</dd>
							<dd>
								<a onclick="companysize('少于15人')" id="少于15人">少于15人</a> |
							</dd>
							<dd>
								<a onclick="companysize('15-50人')" id="15-50人">15-50人</a> |
							</dd>
							<dd>
								<a onclick="companysize('50-150人')" id="50-150人">50-150人</a> |
							</dd>
							<dd>
								<a onclick="companysize('150-500人')" id="150-500人">150-500人</a> |
							</dd>
							<dd>
								<a onclick="companysize('500-2000人')" id="500-2000人">500-2000人</a> |
							</dd>
							<dd>
								<a onclick="companysize('2000人以上')" id="2000人以上">2000人以上</a> 
							</dd>
							<!-- <dl>
	                            <dt>热门标签：</dt>
	                            <dd>
	                                <a href="javascript:void(0)">年底双薪</a>
		                            <a href="javascript:void(0)">专项奖金</a>
		                            <a href="javascript:void(0)">股票期权</a>
		                            <a href="javascript:void(0)">绩效奖金</a>
		                            <a href="javascript:void(0)">年终分红</a>
		                            <a href="javascript:void(0)">带薪年假</a>
		                            <a href="javascript:void(0)">交通补助</a>
		                            <a href="javascript:void(0)">通讯津贴</a>
		                            <a href="javascript:void(0)">午餐补助</a>
									<a href="javascript:void(0)">定期体检</a>
									<a href="javascript:void(0)">弹性工作</a>
									<a href="javascript:void(0)">年度旅游</a>
									<a href="javascript:void(0)">节日礼物</a>
									<a href="javascript:void(0)">免费班车</a>
									<a href="javascript:void(0)">帅哥多</a>
									<a href="javascript:void(0)">美女多</a>
									<a href="javascript:void(0)">领导好</a>
									<a href="javascript:void(0)">扁平管理</a>
									<a href="javascript:void(0)">管理规范</a>
									<a href="javascript:void(0)">技能培训</a>
									<a href="javascript:void(0)">岗位晋升</a>
									<a href="javascript:void(0)">五险一金</a>   	                                	                                			                               	
		                       </dd>
	                        </dl> -->
						</dl>

						<ul class="hc_list reset">
							<c:if test="${pageall=='0'}">
								<br>
								<br>
								<br>
								<div class="filter_tip">
									很抱歉 &nbsp; &nbsp;<span>没有相符</span>的搜索。 <span> &nbsp;</span>&nbsp;
								</div>
							</c:if>
							<c:forEach items="${listcompany}" var="listcompany" varStatus="index">
								<c:if test="${index.count%3==1}">
									<li style="clear: both;">
								</c:if>
								<c:if test="${index.count%3!=1}">
									<li>
								</c:if>
								<a href="companydetail.action?companyid=${listcompany.companyid}" target="_blank">
									<h3 title="${listcompany.companyname}">${listcompany.companyname}</h3>
									<div class="comLogo">
									<c:if test="${empty listcompany.companylogo}">
										<img src="style/images/logo_default.png" width="190" height="190" alt="${listcompany.companyname}" />
									</c:if>
									<c:if test="${not empty listcompany.companylogo}">
										<img src="/pic/${listcompany.companylogo}" width="190" height="190" alt="${listcompany.companyname}" />
									</c:if>
										<ul>
											<li>${listcompany.companytype}</li>
											<li>${listcompany.companyaddress}，${listcompany.companysize}</li>
										</ul>
									</div>
								</a> 
								
									<ul class="reset ctags">
										<c:if test="${not empty listcompany.companytag1}">
											<li>${listcompany.companytag1}</li>
										</c:if>
										<c:if test="${not empty listcompany.companytag2}">
											<li>${listcompany.companytag2}</li>
										</c:if>
										<c:if test="${not empty listcompany.companytag3}">
											<li>${listcompany.companytag3}</li>
										</c:if>
										<c:if test="${not empty listcompany.companytag4}">
											<li>${listcompany.companytag4}</li>
										</c:if>
										<c:if test="${not empty listcompany.companytag5}">
											<li>${listcompany.companytag5}</li>
										</c:if>
									</ul>
								</li>
							</c:forEach> 
						</ul>

						<!-- <div class="Pagination"></div> -->
						
					</form>
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
						<a href="subscribe.html" target="_blank">
							<div class="subpos">
								<span>订阅</span> 职位
							</div>
							<div class="c7">师聘网会根据你的筛选条件，定期将符合你要求的职位信息发给你</div>
							<div class="count">
								已有 <em>3</em> <em>4</em> <em>2</em> <em>1</em> <em>0</em> 人订阅
							</div> <i>我也要订阅职位</i>
						</a>
					</div>
					<div class="greybg qrcode mt20">
						<img src="style/images/companylist_qr.png" width="242"
							height="242" alt="师聘微信公众号二维码" /> <span class="c7">扫描师聘二维码，微信轻松搜工作</span>
					</div>
					<!-- <a href="h/speed/speed3.html" target="_blank" class="adSpeed"></a> -->
					<a href="h/subject/jobguide.html" target="_blank" class="eventAd">
						<img src="style/images/subject280.jpg" width="280" height="135" />
					</a> <a href="h/subject/risingPrice.html" target="_blank"
						class="eventAd"> <img src="style/images/rising280.png"
						width="280" height="135" />
					</a>
				</div>
			</div>

			<input type="hidden" value="" name="userid" id="userid" />

			<script type="text/javascript" src="style/js/company_list.min.js"></script>
			<script>
				$(function() {
					/*分页 */
					$('.Pagination').pager({
						currPage : 1,
						pageNOName : "pn",
						form : "companyListForm",
						pageCount : 20,
						pageSize : 5
					});
				})
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

	<!--  -->
<script>
function companyaddress(companyaddress){
    //alert(companyaddress)
    //document.getElementById(companyaddress).className = "current";
    /* var positionname = '${positionname}';
	var companyaddress = companyaddress;
	var salary = '${salary}';
	var experience = '${experience}';
	var education = '${education}';
	var positionnature = '${positionnature}';
	var page = 1; 
	window.location.href = "selectjob.action?positionname="+positionname+"&companyaddress="+companyaddress+"&salary="+salary+"&experience="+experience+"&education="+education+"&positionnature="+positionnature+"&page="+page+""; 
 	 */
 }
function current(companyaddress,companysize){
    //alert(companyaddress+" "+companysize)
    document.getElementById(companyaddress).className = "current";
    document.getElementById(companysize).className = "current";
    if(companyaddress!='全国' && companyaddress!='北京' && companyaddress!='上海' && companyaddress!='广州'
    && companyaddress!='深圳' && companyaddress!='成都' && companyaddress!='杭州' && companyaddress!='武汉' && companyaddress!='南京'){
    	document.getElementById('其他').className = "current";
    }
}
function companyaddress(companyaddress){
	var companyname = '${companyname}';
	var companyaddress = companyaddress;
	var companysize = '${companysize}';
	var page = 1; 
	window.location.href = "selectcompanylist.action?companyname="+companyname+"&companyaddress="+companyaddress+"&companysize="+companysize+"&page="+page+""; 
}
function companysize(companysize){
	var companyname = '${companyname}';
	var companyaddress = '${companyaddress}';
	var companysize = companysize;
	var page = 1; 
	window.location.href = "selectcompanylist.action?companyname="+companyname+"&companyaddress="+companyaddress+"&companysize="+companysize+"&page="+page+""; 
}
</script>
<script>
function fanye(yeshu){
	var companyname = '${companyname}';
	var companyaddress = '${companyaddress}';
	var companysize = '${companysize}';
	var page = yeshu; 
	window.location.href = "selectcompanylist.action?companyname="+companyname+"&companyaddress="+companyaddress+"&companysize="+companysize+"&page="+page+""; 
}
</script>
</body>
</html>