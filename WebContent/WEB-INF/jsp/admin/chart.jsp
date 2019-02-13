<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>账号管理-师聘网-最专业的互联网招聘平台</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="shortcut icon" href="style/images/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<script src="assets/js/echarts.min.js"></script>
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<link rel="stylesheet" href="assets/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="assets/css/app.css">
<script src="assets/js/jquery.min.js"></script>

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

.button2 {
	background-color: #009875;
	color: white;
}

.button2:hover {
	background-color: #009875;
	color: white;
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
</head>
<body data-type="widgets">
	<script src="assets/js/theme.js"></script>
	<div class="am-g tpl-g">
		<!-- 头部 -->
		<header> <!-- logo -->
		<div class="am-fl tpl-header-logo">
			<a style="color: #019875; font-size: 30px; text-decoration: none">师聘网</a>
		</div>
		<!-- 右侧内容 -->
		<div class="tpl-header-fluid">
			<!-- 侧边切换 -->
			<div class="am-fl tpl-header-switch-button"
				style="width: 67px; height: 55px;">
				<span> III </span>
			</div>
			<!-- 搜索 -->
			<div class="am-fl tpl-header-search">
				<div></div>
				<div style="margin-top: 10px;">
					<a style="font-size: 22px; margin-top: 5px; text-decoration: none"
						class="tpl-header-search-box">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎使用师聘</a>
				</div>
			</div>
			<!-- 其它功能-->
			<div class="am-fr tpl-header-navbar">
				<ul>
					<!-- 欢迎语 -->
					<li class="am-text-sm tpl-header-navbar-welcome"><a
						href="javascript:;">欢迎你, <span>${sessionScope.nickname}&nbsp;管理员</span>
					</a></li>

					<!-- 退出 -->
					<li class="am-text-sm"><a href="logout.action"> <span
							class="am-icon-sign-out"></span> 退出
					</a></li>
				</ul>
			</div>
		</div>

		</header>
		<!-- 风格切换 -->
		<div class="tpl-skiner">
			<div class="tpl-skiner-toggle" style="font-size: 15px">主题</div>
			<div class="tpl-skiner-content">
				<div class="tpl-skiner-content-title">选择主题</div>
				<div class="tpl-skiner-content-bar">
					<span class="skiner-color skiner-white" data-color="theme-white"></span>
					<span class="skiner-color skiner-black" data-color="theme-black"></span>
				</div>
			</div>
		</div>
		<!-- 侧边导航栏 -->
		<div class="left-sidebar">

			<!-- 菜单 -->
			<ul class="sidebar-nav">
				<li class="sidebar-nav-heading">管理员菜单 <span
					class="sidebar-nav-heading-info"> </span></li>
				<li class="sidebar-nav-link"><a
					href="userlist.action?page=1&status=2"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 审核员管理
				</a></li>
				<li class="sidebar-nav-link" class="active"><a
					href="chart.action" class="active"> <i
						class="am-icon-clone sidebar-nav-link-logo"></i> 统计图表
				</a></li>
				<li class="sidebar-nav-link"><a href="adminaccount.action">
						<i class="am-icon-clone sidebar-nav-link-logo"></i> 账号管理
				</a></li>
			</ul>
		</div>

		<!-- 内容区域 -->
		<div class="tpl-content-wrapper">

			<div class="row-content am-cf">
				·
				<div class="row">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title  am-cf">统计图表</div>
							</div>
							<br>
							<div class="am-u-sm-12 am-u-md-6 am-u-lg-3" style="float: left;">
								<select id="diqu1"
									data-am-selected="{maxHeight: 200,btnSize: 'sm'}">
									<optgroup label="地区">
										<option value="选择地区">选择地区</option>
									</optgroup>
									<optgroup label="A">
										<option value="鞍山">鞍山</option>
										<option value="安阳">安阳</option>
										<option value="安庆">安庆</option>
										<option value="安康">安康</option>
										<option value="澳门">澳门</option>
										<option value="安顺">安顺</option>
										<option value="阿拉善盟">阿拉善盟</option>
										<option value="阿坝藏族羌族自治州">阿坝藏族羌族自治州</option>
									</optgroup>
									<optgroup label="B">
										<option value="北京">北京</option>
										<option value="保定">保定</option>
										<option value="包头">包头</option>
										<option value="滨州">滨州</option>
										<option value="蚌埠">蚌埠</option>
										<option value="宝鸡">宝鸡</option>
										<option value="北海">北海</option>
										<option value="巴中">巴中</option>
										<option value="亳州">亳州</option>
										<option value="保山">保山</option>
										<option value="白银">白银</option>
										<option value="百色">百色</option>
										<option value="巴彦淖尔">巴彦淖尔</option>
										<option value="本溪">本溪</option>
										<option value="白山">白山</option>
										<option value="白城">白城</option>
									</optgroup>
									<optgroup label="C">
										<option value="常州">常州</option>
										<option value="成都">成都</option>
										<option value="重庆">重庆</option>
										<option value="长沙">长沙</option>
										<option value="沧州">沧州</option>
										<option value="常德">常德</option>
										<option value="赤峰">赤峰</option>
										<option value="郴州">郴州</option>
										<option value="常熟">常熟</option>
										<option value="承德">承德</option>
										<option value="滁州">滁州</option>
										<option value="潮州">潮州</option>
										<option value="朝阳">朝阳</option>
										<option value="池州">池州</option>
										<option value="崇左">崇左</option>
									</optgroup>
									<optgroup label="D">
										<option value="东莞">东莞</option>
										<option value="大连">大连</option>
										<option value="德州">德州</option>
										<option value="东营">东营</option>
										<option value="德阳">德阳</option>
										<option value="大庆">大庆</option>
										<option value="达州">达州</option>
										<option value="大同">大同</option>
										<option value="丹东">丹东</option>
										<option value="定西">定西</option>
									</optgroup>
									<optgroup label="E">
										<option value="鄂尔多斯">鄂尔多斯</option>
										<option value="鄂州">鄂州</option>
									</optgroup>
									<optgroup label="F">
										<option value="福州">福州</option>
										<option value="佛山">佛山</option>
										<option value="阜阳">阜阳</option>
										<option value="抚州">抚州</option>
										<option value="抚顺">抚顺</option>
										<option value="防城港">防城港</option>
										<option value="阜新">阜新</option>
									</optgroup>
									<optgroup label="G">
										<option value="贵阳">贵阳</option>
										<option value="广州">广州</option>
										<option value="桂林">桂林</option>
										<option value="赣州">赣州</option>
										<option value="广安">广安</option>
										<option value="贵港">贵港</option>
										<option value="广元">广元</option>
										<option value="固原">固原</option>
									</optgroup>
									<optgroup label="H">
										<option value="哈尔滨">哈尔滨</option>
										<option value="杭州">杭州</option>
										<option value="合肥">合肥</option>
										<option value="惠州">惠州</option>
										<option value="海口">海口</option>
										<option value="呼和浩特">呼和浩特</option>
										<option value="湖州">湖州</option>
										<option value="邯郸">邯郸</option>
										<option value="淮安">淮安</option>
										<option value="衡阳">衡阳</option>
										<option value="菏泽">菏泽</option>
										<option value="黄冈">黄冈</option>
										<option value="黄石">黄石</option>
										<option value="衡水">衡水</option>
										<option value="河源">河源</option>
										<option value="怀化">怀化</option>
										<option value="淮南">淮南</option>
										<option value="汉中">汉中</option>
										<option value="淮北">淮北</option>
										<option value="黄山">黄山</option>
										<option value="葫芦岛">葫芦岛</option>
										<option value="贺州">贺州</option>
										<option value="呼伦贝尔">呼伦贝尔</option>
										<option value="鹤壁">鹤壁</option>
										<option value="河池">河池</option>
										<option value="鹤岗">鹤岗</option>
										<option value="海东地区">海东地区</option>
										<option value="黑河">黑河</option>
										<option value="海宁">海宁</option>
										<option value="和田">和田</option>
									</optgroup>
									<optgroup label="J">
										<option value="济南">济南</option>
										<option value="金华">金华</option>
										<option value="嘉兴">嘉兴</option>
										<option value="济宁">济宁</option>
										<option value="江门">江门</option>
										<option value="吉林">吉林</option>
										<option value="九江">九江</option>
										<option value="荆州">荆州</option>
										<option value="晋中">晋中</option>
										<option value="揭阳">揭阳</option>
										<option value="吉安">吉安</option>
										<option value="焦作">焦作</option>
										<option value="景德镇">景德镇</option>
										<option value="江阴">江阴</option>
										<option value="晋城">晋城</option>
										<option value="荆门">荆门</option>
										<option value="酒泉">酒泉</option>
										<option value="锦州">锦州</option>
										<option value="佳木斯">佳木斯</option>
										<option value="鸡西">鸡西</option>
										<option value="金昌">金昌</option>
										<option value="嘉峪关">嘉峪关</option>
									</optgroup>
									<optgroup label="K">
										<option value="昆明">昆明</option>
										<option value="昆山">昆山</option>
										<option value="开封">开封</option>
										<option value="克拉玛依">克拉玛依</option>
									</optgroup>
									<optgroup label="L">
										<option value="廊坊">廊坊</option>
										<option value="洛阳">洛阳</option>
										<option value="兰州">兰州</option>
										<option value="临沂">临沂</option>
										<option value="柳州">柳州</option>
										<option value="连云港">连云港</option>
										<option value="聊城">聊城</option>
										<option value="六安">六安</option>
										<option value="丽水">丽水</option>
										<option value="泸州">泸州</option>
										<option value="拉萨">拉萨</option>
										<option value="乐山">乐山</option>
										<option value="莱芜">莱芜</option>
										<option value="龙岩">龙岩</option>
										<option value="丽江">丽江</option>
										<option value="漯河">漯河</option>
										<option value="临汾">临汾</option>
										<option value="六盘水">六盘水</option>
										<option value="娄底">娄底</option>
										<option value="辽阳">辽阳</option>
										<option value="凉山彝族自治州">凉山彝族自治州</option>
										<option value="吕梁">吕梁</option>
										<option value="辽源">辽源</option>
										<option value="陇南">陇南</option>
										<option value="来宾">来宾</option>
									</optgroup>
									<optgroup label="M">
										<option value="绵阳">绵阳</option>
										<option value="茂名">茂名</option>
										<option value="马鞍山">马鞍山</option>
										<option value="梅州">梅州</option>
										<option value="眉山">眉山</option>
										<option value="牡丹江">牡丹江</option>
									</optgroup>
									<optgroup label="N">
										<option value="南宁">南宁</option>
										<option value="南京">南京</option>
										<option value="宁波">宁波</option>
										<option value="南昌">南昌</option>
										<option value="南通">南通</option>
										<option value="南阳">南阳</option>
										<option value="南充">南充</option>
										<option value="南平">南平</option>
										<option value="宁德">宁德</option>
										<option value="内江">内江</option>
										<option value="南海区">南海区</option>
									</optgroup>
									<optgroup label="P">
										<option value="莆田">莆田</option>
										<option value="盘锦">盘锦</option>
										<option value="濮阳">濮阳</option>
										<option value="平顶山">平顶山</option>
										<option value="萍乡">萍乡</option>
										<option value="攀枝花">攀枝花</option>
									</optgroup>
									<optgroup label="Q">
										<option value="青岛">青岛</option>
										<option value="泉州">泉州</option>
										<option value="秦皇岛">秦皇岛</option>
										<option value="清远">清远</option>
										<option value="衢州">衢州</option>
										<option value="齐齐哈尔">齐齐哈尔</option>
										<option value="钦州">钦州</option>
										<option value="曲靖">曲靖</option>
										<option value="庆阳">庆阳</option>
										<option value="七台河">七台河</option>
									</optgroup>
									<optgroup label="R">
										<option value="日照">日照</option>
									</optgroup>
									<optgroup label="S">
										<option value="上海">上海</option>
										<option value="苏州">苏州</option>
										<option value="沈阳">沈阳</option>
										<option value="深圳">深圳</option>
										<option value="石家庄">石家庄</option>
										<option value="绍兴">绍兴</option>
										<option value="汕头">汕头</option>
										<option value="三亚">三亚</option>
										<option value="宿迁">宿迁</option>
										<option value="十堰">十堰</option>
										<option value="韶关">韶关</option>
										<option value="商丘">商丘</option>
										<option value="上饶">上饶</option>
										<option value="宿州">宿州</option>
										<option value="三门峡">三门峡</option>
										<option value="遂宁">遂宁</option>
										<option value="三明">三明</option>
										<option value="汕尾">汕尾</option>
										<option value="随州">随州</option>
										<option value="邵阳">邵阳</option>
										<option value="松原">松原</option>
										<option value="商洛">商洛</option>
										<option value="朔州">朔州</option>
										<option value="双鸭山">双鸭山</option>
									</optgroup>
									<optgroup label="T">
										<option value="太原">太原</option>
										<option value="天津">天津</option>
										<option value="台州">台州</option>
										<option value="唐山">唐山</option>
										<option value="泰州">泰州</option>
										<option value="泰安">泰安</option>
										<option value="通辽">通辽</option>
										<option value="铜陵">铜陵</option>
										<option value="铁岭">铁岭</option>
										<option value="通化">通化</option>
										<option value="太仓">太仓</option>
										<option value="天水">天水</option>
										<option value="台湾">台湾</option>
									</optgroup>
									<optgroup label="W">
										<option value="武汉">武汉</option>
										<option value="无锡">无锡</option>
										<option value="温州">温州</option>
										<option value="潍坊">潍坊</option>
										<option value="乌鲁木齐">乌鲁木齐</option>
										<option value="芜湖">芜湖</option>
										<option value="威海">威海</option>
										<option value="渭南">渭南</option>
										<option value="梧州">梧州</option>
										<option value="吴忠">吴忠</option>
										<option value="乌兰察布">乌兰察布</option>
										<option value="乌海">乌海</option>
									</optgroup>
									<optgroup label="X">
										<option value="厦门">厦门</option>
										<option value="西安">西安</option>
										<option value="徐州">徐州</option>
										<option value="香港">香港</option>
										<option value="新乡">新乡</option>
										<option value="咸阳">咸阳</option>
										<option value="邢台">邢台</option>
										<option value="襄阳">襄阳</option>
										<option value="西宁">西宁</option>
										<option value="湘潭">湘潭</option>
										<option value="孝感">孝感</option>
										<option value="许昌">许昌</option>
										<option value="信阳">信阳</option>
										<option value="咸宁">咸宁</option>
										<option value="忻州">忻州</option>
										<option value="新余">新余</option>
										<option value="宣城">宣城</option>
										<option value="襄樊">襄樊</option>
										<option value="锡林郭勒盟">锡林郭勒盟</option>
										<option value="湘西土家族苗族自治州">湘西土家族苗族自治州</option>
										<option value="兴安盟">兴安盟</option>
									</optgroup>
									<optgroup label="Y">
										<option value="烟台">烟台</option>
										<option value="扬州">扬州</option>
										<option value="银川">银川</option>
										<option value="宜昌">宜昌</option>
										<option value="盐城">盐城</option>
										<option value="岳阳">岳阳</option>
										<option value="运城">运城</option>
										<option value="宜春">宜春</option>
										<option value="宜宾">宜宾</option>
										<option value="益阳">益阳</option>
										<option value="阳江">阳江</option>
										<option value="营口">营口</option>
										<option value="阳泉">阳泉</option>
										<option value="永州">永州</option>
										<option value="玉林">玉林</option>
										<option value="榆林">榆林</option>
										<option value="玉溪">玉溪</option>
										<option value="云浮">云浮</option>
										<option value="延安">延安</option>
										<option value="鹰潭">鹰潭</option>
										<option value="雅安">雅安</option>
										<option value="伊春">伊春</option>
									</optgroup>
									<optgroup label="Z">
										<option value="中山">中山</option>
										<option value="郑州">郑州</option>
										<option value="珠海">珠海</option>
										<option value="长春">长春</option>
										<option value="淄博">淄博</option>
										<option value="镇江">镇江</option>
										<option value="株洲">株洲</option>
										<option value="肇庆">肇庆</option>
										<option value="漳州">漳州</option>
										<option value="湛江">湛江</option>
										<option value="遵义">遵义</option>
										<option value="舟山">舟山</option>
										<option value="张家港">张家港</option>
										<option value="张家口">张家口</option>
										<option value="周口">周口</option>
										<option value="枣庄">枣庄</option>
										<option value="自贡">自贡</option>
										<option value="长治">长治</option>
										<option value="驻马店">驻马店</option>
										<option value="资阳">资阳</option>
										<option value="张家界">张家界</option>
										<option value="昭通">昭通</option>
										<option value="张掖">张掖</option>
										<option value="中卫">中卫</option>
										<option value="章丘">章丘</option>
									</optgroup>

								</select> <br> <br> <select id="diqu2"
									data-am-selected="{maxHeight: 200,btnSize: 'sm'}">
									<optgroup label="地区">
										<option value="选择地区">选择地区</option>
									</optgroup>
									<optgroup label="A">
										<option value="鞍山">鞍山</option>
										<option value="安阳">安阳</option>
										<option value="安庆">安庆</option>
										<option value="安康">安康</option>
										<option value="澳门">澳门</option>
										<option value="安顺">安顺</option>
										<option value="阿拉善盟">阿拉善盟</option>
										<option value="阿坝藏族羌族自治州">阿坝藏族羌族自治州</option>
									</optgroup>
									<optgroup label="B">
										<option value="北京">北京</option>
										<option value="保定">保定</option>
										<option value="包头">包头</option>
										<option value="滨州">滨州</option>
										<option value="蚌埠">蚌埠</option>
										<option value="宝鸡">宝鸡</option>
										<option value="北海">北海</option>
										<option value="巴中">巴中</option>
										<option value="亳州">亳州</option>
										<option value="保山">保山</option>
										<option value="白银">白银</option>
										<option value="百色">百色</option>
										<option value="巴彦淖尔">巴彦淖尔</option>
										<option value="本溪">本溪</option>
										<option value="白山">白山</option>
										<option value="白城">白城</option>
									</optgroup>
									<optgroup label="C">
										<option value="常州">常州</option>
										<option value="成都">成都</option>
										<option value="重庆">重庆</option>
										<option value="长沙">长沙</option>
										<option value="沧州">沧州</option>
										<option value="常德">常德</option>
										<option value="赤峰">赤峰</option>
										<option value="郴州">郴州</option>
										<option value="常熟">常熟</option>
										<option value="承德">承德</option>
										<option value="滁州">滁州</option>
										<option value="潮州">潮州</option>
										<option value="朝阳">朝阳</option>
										<option value="池州">池州</option>
										<option value="崇左">崇左</option>
									</optgroup>
									<optgroup label="D">
										<option value="东莞">东莞</option>
										<option value="大连">大连</option>
										<option value="德州">德州</option>
										<option value="东营">东营</option>
										<option value="德阳">德阳</option>
										<option value="大庆">大庆</option>
										<option value="达州">达州</option>
										<option value="大同">大同</option>
										<option value="丹东">丹东</option>
										<option value="定西">定西</option>
									</optgroup>
									<optgroup label="E">
										<option value="鄂尔多斯">鄂尔多斯</option>
										<option value="鄂州">鄂州</option>
									</optgroup>
									<optgroup label="F">
										<option value="福州">福州</option>
										<option value="佛山">佛山</option>
										<option value="阜阳">阜阳</option>
										<option value="抚州">抚州</option>
										<option value="抚顺">抚顺</option>
										<option value="防城港">防城港</option>
										<option value="阜新">阜新</option>
									</optgroup>
									<optgroup label="G">
										<option value="贵阳">贵阳</option>
										<option value="广州">广州</option>
										<option value="桂林">桂林</option>
										<option value="赣州">赣州</option>
										<option value="广安">广安</option>
										<option value="贵港">贵港</option>
										<option value="广元">广元</option>
										<option value="固原">固原</option>
									</optgroup>
									<optgroup label="H">
										<option value="哈尔滨">哈尔滨</option>
										<option value="杭州">杭州</option>
										<option value="合肥">合肥</option>
										<option value="惠州">惠州</option>
										<option value="海口">海口</option>
										<option value="呼和浩特">呼和浩特</option>
										<option value="湖州">湖州</option>
										<option value="邯郸">邯郸</option>
										<option value="淮安">淮安</option>
										<option value="衡阳">衡阳</option>
										<option value="菏泽">菏泽</option>
										<option value="黄冈">黄冈</option>
										<option value="黄石">黄石</option>
										<option value="衡水">衡水</option>
										<option value="河源">河源</option>
										<option value="怀化">怀化</option>
										<option value="淮南">淮南</option>
										<option value="汉中">汉中</option>
										<option value="淮北">淮北</option>
										<option value="黄山">黄山</option>
										<option value="葫芦岛">葫芦岛</option>
										<option value="贺州">贺州</option>
										<option value="呼伦贝尔">呼伦贝尔</option>
										<option value="鹤壁">鹤壁</option>
										<option value="河池">河池</option>
										<option value="鹤岗">鹤岗</option>
										<option value="海东地区">海东地区</option>
										<option value="黑河">黑河</option>
										<option value="海宁">海宁</option>
										<option value="和田">和田</option>
									</optgroup>
									<optgroup label="J">
										<option value="济南">济南</option>
										<option value="金华">金华</option>
										<option value="嘉兴">嘉兴</option>
										<option value="济宁">济宁</option>
										<option value="江门">江门</option>
										<option value="吉林">吉林</option>
										<option value="九江">九江</option>
										<option value="荆州">荆州</option>
										<option value="晋中">晋中</option>
										<option value="揭阳">揭阳</option>
										<option value="吉安">吉安</option>
										<option value="焦作">焦作</option>
										<option value="景德镇">景德镇</option>
										<option value="江阴">江阴</option>
										<option value="晋城">晋城</option>
										<option value="荆门">荆门</option>
										<option value="酒泉">酒泉</option>
										<option value="锦州">锦州</option>
										<option value="佳木斯">佳木斯</option>
										<option value="鸡西">鸡西</option>
										<option value="金昌">金昌</option>
										<option value="嘉峪关">嘉峪关</option>
									</optgroup>
									<optgroup label="K">
										<option value="昆明">昆明</option>
										<option value="昆山">昆山</option>
										<option value="开封">开封</option>
										<option value="克拉玛依">克拉玛依</option>
									</optgroup>
									<optgroup label="L">
										<option value="廊坊">廊坊</option>
										<option value="洛阳">洛阳</option>
										<option value="兰州">兰州</option>
										<option value="临沂">临沂</option>
										<option value="柳州">柳州</option>
										<option value="连云港">连云港</option>
										<option value="聊城">聊城</option>
										<option value="六安">六安</option>
										<option value="丽水">丽水</option>
										<option value="泸州">泸州</option>
										<option value="拉萨">拉萨</option>
										<option value="乐山">乐山</option>
										<option value="莱芜">莱芜</option>
										<option value="龙岩">龙岩</option>
										<option value="丽江">丽江</option>
										<option value="漯河">漯河</option>
										<option value="临汾">临汾</option>
										<option value="六盘水">六盘水</option>
										<option value="娄底">娄底</option>
										<option value="辽阳">辽阳</option>
										<option value="凉山彝族自治州">凉山彝族自治州</option>
										<option value="吕梁">吕梁</option>
										<option value="辽源">辽源</option>
										<option value="陇南">陇南</option>
										<option value="来宾">来宾</option>
									</optgroup>
									<optgroup label="M">
										<option value="绵阳">绵阳</option>
										<option value="茂名">茂名</option>
										<option value="马鞍山">马鞍山</option>
										<option value="梅州">梅州</option>
										<option value="眉山">眉山</option>
										<option value="牡丹江">牡丹江</option>
									</optgroup>
									<optgroup label="N">
										<option value="南宁">南宁</option>
										<option value="南京">南京</option>
										<option value="宁波">宁波</option>
										<option value="南昌">南昌</option>
										<option value="南通">南通</option>
										<option value="南阳">南阳</option>
										<option value="南充">南充</option>
										<option value="南平">南平</option>
										<option value="宁德">宁德</option>
										<option value="内江">内江</option>
										<option value="南海区">南海区</option>
									</optgroup>
									<optgroup label="P">
										<option value="莆田">莆田</option>
										<option value="盘锦">盘锦</option>
										<option value="濮阳">濮阳</option>
										<option value="平顶山">平顶山</option>
										<option value="萍乡">萍乡</option>
										<option value="攀枝花">攀枝花</option>
									</optgroup>
									<optgroup label="Q">
										<option value="青岛">青岛</option>
										<option value="泉州">泉州</option>
										<option value="秦皇岛">秦皇岛</option>
										<option value="清远">清远</option>
										<option value="衢州">衢州</option>
										<option value="齐齐哈尔">齐齐哈尔</option>
										<option value="钦州">钦州</option>
										<option value="曲靖">曲靖</option>
										<option value="庆阳">庆阳</option>
										<option value="七台河">七台河</option>
									</optgroup>
									<optgroup label="R">
										<option value="日照">日照</option>
									</optgroup>
									<optgroup label="S">
										<option value="上海">上海</option>
										<option value="苏州">苏州</option>
										<option value="沈阳">沈阳</option>
										<option value="深圳">深圳</option>
										<option value="石家庄">石家庄</option>
										<option value="绍兴">绍兴</option>
										<option value="汕头">汕头</option>
										<option value="三亚">三亚</option>
										<option value="宿迁">宿迁</option>
										<option value="十堰">十堰</option>
										<option value="韶关">韶关</option>
										<option value="商丘">商丘</option>
										<option value="上饶">上饶</option>
										<option value="宿州">宿州</option>
										<option value="三门峡">三门峡</option>
										<option value="遂宁">遂宁</option>
										<option value="三明">三明</option>
										<option value="汕尾">汕尾</option>
										<option value="随州">随州</option>
										<option value="邵阳">邵阳</option>
										<option value="松原">松原</option>
										<option value="商洛">商洛</option>
										<option value="朔州">朔州</option>
										<option value="双鸭山">双鸭山</option>
									</optgroup>
									<optgroup label="T">
										<option value="太原">太原</option>
										<option value="天津">天津</option>
										<option value="台州">台州</option>
										<option value="唐山">唐山</option>
										<option value="泰州">泰州</option>
										<option value="泰安">泰安</option>
										<option value="通辽">通辽</option>
										<option value="铜陵">铜陵</option>
										<option value="铁岭">铁岭</option>
										<option value="通化">通化</option>
										<option value="太仓">太仓</option>
										<option value="天水">天水</option>
										<option value="台湾">台湾</option>
									</optgroup>
									<optgroup label="W">
										<option value="武汉">武汉</option>
										<option value="无锡">无锡</option>
										<option value="温州">温州</option>
										<option value="潍坊">潍坊</option>
										<option value="乌鲁木齐">乌鲁木齐</option>
										<option value="芜湖">芜湖</option>
										<option value="威海">威海</option>
										<option value="渭南">渭南</option>
										<option value="梧州">梧州</option>
										<option value="吴忠">吴忠</option>
										<option value="乌兰察布">乌兰察布</option>
										<option value="乌海">乌海</option>
									</optgroup>
									<optgroup label="X">
										<option value="厦门">厦门</option>
										<option value="西安">西安</option>
										<option value="徐州">徐州</option>
										<option value="香港">香港</option>
										<option value="新乡">新乡</option>
										<option value="咸阳">咸阳</option>
										<option value="邢台">邢台</option>
										<option value="襄阳">襄阳</option>
										<option value="西宁">西宁</option>
										<option value="湘潭">湘潭</option>
										<option value="孝感">孝感</option>
										<option value="许昌">许昌</option>
										<option value="信阳">信阳</option>
										<option value="咸宁">咸宁</option>
										<option value="忻州">忻州</option>
										<option value="新余">新余</option>
										<option value="宣城">宣城</option>
										<option value="襄樊">襄樊</option>
										<option value="锡林郭勒盟">锡林郭勒盟</option>
										<option value="湘西土家族苗族自治州">湘西土家族苗族自治州</option>
										<option value="兴安盟">兴安盟</option>
									</optgroup>
									<optgroup label="Y">
										<option value="烟台">烟台</option>
										<option value="扬州">扬州</option>
										<option value="银川">银川</option>
										<option value="宜昌">宜昌</option>
										<option value="盐城">盐城</option>
										<option value="岳阳">岳阳</option>
										<option value="运城">运城</option>
										<option value="宜春">宜春</option>
										<option value="宜宾">宜宾</option>
										<option value="益阳">益阳</option>
										<option value="阳江">阳江</option>
										<option value="营口">营口</option>
										<option value="阳泉">阳泉</option>
										<option value="永州">永州</option>
										<option value="玉林">玉林</option>
										<option value="榆林">榆林</option>
										<option value="玉溪">玉溪</option>
										<option value="云浮">云浮</option>
										<option value="延安">延安</option>
										<option value="鹰潭">鹰潭</option>
										<option value="雅安">雅安</option>
										<option value="伊春">伊春</option>
									</optgroup>
									<optgroup label="Z">
										<option value="中山">中山</option>
										<option value="郑州">郑州</option>
										<option value="珠海">珠海</option>
										<option value="长春">长春</option>
										<option value="淄博">淄博</option>
										<option value="镇江">镇江</option>
										<option value="株洲">株洲</option>
										<option value="肇庆">肇庆</option>
										<option value="漳州">漳州</option>
										<option value="湛江">湛江</option>
										<option value="遵义">遵义</option>
										<option value="舟山">舟山</option>
										<option value="张家港">张家港</option>
										<option value="张家口">张家口</option>
										<option value="周口">周口</option>
										<option value="枣庄">枣庄</option>
										<option value="自贡">自贡</option>
										<option value="长治">长治</option>
										<option value="驻马店">驻马店</option>
										<option value="资阳">资阳</option>
										<option value="张家界">张家界</option>
										<option value="昭通">昭通</option>
										<option value="张掖">张掖</option>
										<option value="中卫">中卫</option>
										<option value="章丘">章丘</option>
									</optgroup>

								</select>

							</div>
							<div class="am-u-sm-12 am-u-md-6 am-u-lg-3"
								style="float: center;">
								<select id="xueli1"
									data-am-selected="{maxHeight: 100,btnSize: 'sm'}">
									<option value="选择学历" >选择学历</option>
									<option value="1" >大专</option>
									<option value="2" >本科</option>
									<option value="3" >硕士</option>
									<option value="4" >博士</option>
									<option value="0" >不限</option>
								</select> <br> <br> <select id="xueli2"
									data-am-selected="{maxHeight: 100,btnSize: 'sm'}">
									<option value="选择学历" >选择学历</option>
									<option value="1" >大专</option>
									<option value="2" >本科</option>
									<option value="3" >硕士</option>
									<option value="4" >博士</option>
									<option value="0" >不限</option>
								</select>

							</div>
							<div class="am-u-sm-12 am-u-md-6 am-u-lg-3"
								style="width: 500px; float: right;">
								<select id="jingyan1"
									data-am-selected="{maxHeight: 100,btnSize: 'sm'}">
									<option value="选择经验" >选择经验</option>
									<option value="0" >应届毕业生</option>
									<option value="1" >至少1年</option>
									<option value="2" >至少2年</option>
									<option value="3" >至少3年</option>
									<option value="4" >至少4年</option>
									<option value="5" >至少5年</option>
									<option value="6" >至少6年</option>
									<option value="7" >至少7年</option>
									<option value="8" >至少8年</option>
									<option value="9" >至少9年</option>
									<option value="10" >至少10年</option>
									<option value="11" >10年以上</option>
									<option value="-1" >不限</option>
								</select> <br> <br> <select id="jingyan2"
									data-am-selected="{maxHeight: 100,btnSize: 'sm'}">
									<option value="选择经验" >选择经验</option>
									<option value="选择经验" >选择经验</option>
									<option value="0" >应届毕业生</option>
									<option value="1" >至少1年</option>
									<option value="2" >至少2年</option>
									<option value="3" >至少3年</option>
									<option value="4" >至少4年</option>
									<option value="5" >至少5年</option>
									<option value="6" >至少6年</option>
									<option value="7" >至少7年</option>
									<option value="8" >至少8年</option>
									<option value="9" >至少9年</option>
									<option value="10" >至少10年</option>
									<option value="11" >10年以上</option>
									<option value="-1" >不限</option>
								</select>

							</div>
							<br> <br> <br> <br> <br>
							<div class="am-btn-group am-btn-group-xs">
								&nbsp;
								<button type="button" class="button button2" onclick="chart()">
									开始统计</button>
							</div>
							<div id="pie" style="width: 600px; height: 400px;"></div>
							<!-- <button type="button" class="am-btn am-btn-primary am-radius">主色按钮</button> -->
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/amazeui.datatables.min.js"></script>
	<script src="assets/js/dataTables.responsive.min.js"></script>
	<script src="assets/js/app.js"></script>
	<script src="chart/echarts.min.js"></script>

</body>
<script type="text/javascript">
	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById('pie'));

	myChart.setOption({
		color : [ '#c23531 ', '#2f4554 ' ],//饼图颜色
		title : {
			text : '统计结果(单位：元)',
			subtext : '',
			x : 'center'
		},
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b} : {c} "
		},
		legend : {
			orient : 'vertical',
			x : 'left',
			data : [ ]
		},
		toolbox : {
			show : true,
			feature : {
				mark : {
					show : true
				},
				dataView : {
					show : true,
					readOnly : false
				},
				magicType : {
					show : true,
					type : [ 'pie', 'funnel' ],
					option : {
						funnel : {
							x : '25%',
							width : '50%',
							funnelAlign : 'left',
							max : 1548
						}
					}
				},
				restore : {
					show : true
				},
				saveAsImage : {
					show : true
				}
			}
		},
		series : [ {
			name : '统计结果(单位：元)',
			type : 'pie',
			radius : '55%',
			center : [ '50%', '60%' ],
			data : [ ]
		} ]
	});
	//myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
	//myChart.hideLoading();
</script>
<script>
	function chart() {

		var diqu1=$("#diqu1 optgroup").children('option:selected').val()
		var diqu2=$("#diqu2 optgroup").children('option:selected').val()
		var xueli1=$("#xueli1").children('option:selected').val()
		var xueli2=$("#xueli2").children('option:selected').val()
		var jingyan1=$("#jingyan1").children('option:selected').val()
		var jingyan2=$("#jingyan2").children('option:selected').val()
		if(diqu1=="选择地区"&&diqu2=="选择地区"&&xueli1=="选择学历"&&xueli2=="选择学历"&&jingyan1=="选择经验"&&jingyan2=="选择经验"){
			alert("请选择条件！")
		}else if((diqu1=="选择地区"&&diqu2!="选择地区")||(diqu2=="选择地区"&&diqu1!="选择地区")){
			alert("请成对选择地区！")
		}else if((xueli1=="选择学历"&&xueli2!="选择学历")||(xueli2=="选择学历"&&xueli1!="选择学历")){
			alert("请成对选择学历！")
		}else if((jingyan1=="选择经验"&&jingyan2!="选择经验")||(jingyan2=="选择经验"&&jingyan1!="选择经验")){
			alert("请成对选择经验！")
		}else{
			//alert(diqu1+diqu2+xueli1+xueli2+jingyan1+jingyan2)
			var myChart = echarts.init(document.getElementById('pie'));
			myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
			var names = []; //类别数组（用于存放饼图的类别）
			var num = [];
			var arr = [];
			$.ajax({
				url : '/getchart.action',//请求数据的地址
				async : true,
				type : "get",
				data : {
					"diqu1" : diqu1,
					"diqu2" : diqu2,
					"xueli1" : xueli1,
					"xueli2" : xueli2,
					"jingyan1" : jingyan1,
					"jingyan2" : jingyan2,
				},
				dataType : "json",
				success : function(result) {
					//alert(666)
					arr = result;
					for (var i = 0; i < arr.length; i++) {
						names.push(arr[i].name);
						num.push({
							name :arr[i].name,
							value : arr[i].value
						});
					}
					myChart.hideLoading(); //隐藏加载动画
					myChart.setOption({ //加载数据图表
						legend : {
							data : names
						},
						series : [ {
							data : num
						} ]
					}); 
				},
				error : function(errorMsg) {
					//请求失败时执行该函数
					alert("图表请求数据失败!");
					myChart.hideLoading();
				}
			}); 
		}
		
	}
</script>
</html>