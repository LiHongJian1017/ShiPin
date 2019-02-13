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
<title>师聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
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
<body>
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a href="index.action" class="logo"> <img
					src="style/images/logo.png" width="229" height="43"
					alt="师聘招聘-专注互联网招聘" />
				</a>
				<ul class="reset" id="navheader">
					<li class="current"><a href="index.action">首页</a></li>
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
			</div>
		</div>
		<!-- end #header -->
		<div id="container">

			<div id="sidebar">
				<div class="mainNavs">

					<div class="menu_box">
						<div class="menu_main">
							<h2>
								高等学校 <span></span>
							</h2>
							<a href="javascript:void(0);" onclick="selectjob('哲学')">哲学</a> <a href="javascript:void(0);" onclick="selectjob('经济学')">经济学</a> <a href="javascript:void(0);" onclick="selectjob('法学')">法学</a> <a href="javascript:void(0);" onclick="selectjob('教育学')">教育学</a>
							<a href="javascript:void(0);" onclick="selectjob('文学')">文学</a> <a href="javascript:void(0);" onclick="selectjob('历史学')">历史学</a> <a href="javascript:void(0);" onclick="selectjob('理学')">理学</a> <a href="javascript:void(0);" onclick="selectjob('工学')">工学</a>
							<a href="javascript:void(0);" onclick="selectjob('农学')">农学</a> <a href="javascript:void(0);" onclick="selectjob('医学')">医学</a> <a href="javascript:void(0);" onclick="selectjob('管理学')">管理学</a> <a href="javascript:void(0);" onclick="selectjob('艺术学')">艺术学</a>
						</div>
						<div class="menu_sub dn">
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('哲学')"> 哲学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('哲学')" class="curr">哲学</a> <a href="javascript:void(0);" onclick="selectjob('逻辑学')" class="curr">逻辑学</a>
									<a href="javascript:void(0);" onclick="selectjob('宗教学')">宗教学</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('经济学')"> 经济学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('经济统计学')"> 经济统计学</a> <a href="javascript:void(0);" onclick="selectjob('财政学')" class="curr">财政学</a> <a
										href="javascript:void(0);" onclick="selectjob('税收学')" class="curr">税收学</a> <a href="javascript:void(0);" onclick="selectjob('金融学')">金融学</a> <a href="javascript:void(0);" onclick="selectjob('金融工程')">金融工程</a>
									<a href="javascript:void(0);" onclick="selectjob('保险学')">保险学</a> <a href="javascript:void(0);" onclick="selectjob('投资学')">投资学</a> <a href="javascript:void(0);" onclick="selectjob('国际经济与贸易')">国际经济与贸易</a> <a
										href="javascript:void(0);" onclick="selectjob('贸易经济')">贸易经济</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('法学')"> 法学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('政治学与行政学')">政治学与行政学</a> <a href="javascript:void(0);" onclick="selectjob('国际政治')">国际政治</a> <a href="javascript:void(0);" onclick="selectjob('外交学')"
										class="curr">外交学</a> <a href="javascript:void(0);" onclick="selectjob('社会学')" class="curr">社会学</a> <a
										href="javascript:void(0);" onclick="selectjob('民族学')">民族学</a> <a href="javascript:void(0);" onclick="selectjob('科学社会主义')">科学社会主义</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('教育学')"> 教育学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('科学教育')" class="curr">科学教育</a> <a href="javascript:void(0);" onclick="selectjob('人文教育')">人文教育</a> <a href="javascript:void(0);" onclick="selectjob('学前教育')">学前教育</a>
									<a href="javascript:void(0);" onclick="selectjob('小学教育')">小学教育</a> <a href="javascript:void(0);" onclick="selectjob('特殊教育')">特殊教育</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('文学')"> 文学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('汉语言')" class="curr">汉语言</a> <a href="javascript:void(0);" onclick="selectjob('中国少数民族语言文学')">中国少数民族语言文学</a> <a
										href="javascript:void(0);" onclick="selectjob('古典文献学')">古典文献学</a> <a href="javascript:void(0);" onclick="selectjob('英语')" class="curr">英语</a> <a href="javascript:void(0);" onclick="selectjob('俄语')">俄语</a>
									<a href="javascript:void(0);" onclick="selectjob('日语')">日语</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('历史学 ')"> 历史学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('世界史')">世界史</a> <a href="javascript:void(0);" onclick="selectjob('考古学')">考古学</a> <a href="javascript:void(0);" onclick="selectjob('文物与博物馆学')">文物与博物馆学</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('理学')"> 理学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('数学')" class="curr">数学</a> <a href="javascript:void(0);" onclick="selectjob('物理学')" class="curr">物理学</a>
									<a href="javascript:void(0);" onclick="selectjob('化学')">化学</a> <a href="javascript:void(0);" onclick="selectjob('天文学')">天文学</a> <a href="javascript:void(0);" onclick="selectjob('地理科学')" class="curr">地理科学</a>
									<a href="javascript:void(0);" onclick="selectjob('大气科学')" class="curr">大气科学</a> <a href="javascript:void(0);" onclick="selectjob('海洋科学')" class="curr">海洋科学</a>
									<a href="javascript:void(0);" onclick="selectjob('地质学')">地质学</a> <a href="javascript:void(0);" onclick="selectjob('生物科学')">生物科学</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('工学')"> 工学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('力学')" class="curr">力学</a> <a href="javascript:void(0);" onclick="selectjob('机械')">机械</a> <a href="javascript:void(0);" onclick="selectjob('仪器')">仪器</a>
									<a href="javascript:void(0);" onclick="selectjob('材料')" class="curr">材料</a> <a href="javascript:void(0);" onclick="selectjob('能源动力')">能源动力</a> <a href="javascript:void(0);" onclick="selectjob('电气')"
										class="curr">电气</a> <a href="javascript:void(0);" onclick="selectjob('电子信息')">电子信息</a> <a href="javascript:void(0);" onclick="selectjob('自动化')">自动化</a> <a
										href="javascript:void(0);" onclick="selectjob('计算机')">计算机</a> <a href="javascript:void(0);" onclick="selectjob('土木')">土木</a> <a href="javascript:void(0);" onclick="selectjob('水利')">水利</a> <a href="javascript:void(0);" onclick="selectjob('测绘')">测绘</a>
									<a href="javascript:void(0);" onclick="selectjob('矿业')">矿业</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('农学')"> 农学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('园艺')" class="curr">园艺</a> <a href="javascript:void(0);" onclick="selectjob('植物保护')">植物保护</a> <a href="javascript:void(0);" onclick="selectjob('植物科学与技术')"
										class="curr">植物科学与技术</a> <a href="javascript:void(0);" onclick="selectjob('种子科学与工程')">种子科学与工程</a> <a href="javascript:void(0);" onclick="selectjob('农业资源与环境')">农业资源与环境</a>
									<a href="javascript:void(0);" onclick="selectjob('野生动物与自然保护区管理')">野生动物与自然保护区管理</a> <a href="javascript:void(0);" onclick="selectjob('水土保持与荒漠化防治')">水土保持与荒漠化防治</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('医学')"> 医学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('基础医学')" class="curr">基础医学</a> <a href="javascript:void(0);" onclick="selectjob('临床医学')">临床医学</a> <a href="javascript:void(0);" onclick="selectjob('口腔医学')"
										class="curr">口腔医学</a> <a href="javascript:void(0);" onclick="selectjob('中医学')">中医学</a> <a href="javascript:void(0);" onclick="selectjob('针灸推拿学')"
										class="curr">针灸推拿学</a> <a href="javascript:void(0);" onclick="selectjob('中西医临床医学')">中西医临床医学</a> <a href="javascript:void(0);" onclick="selectjob('中药学')">中药学</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('管理学')"> 管理学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('工商管理')" class="curr">工商管理</a> <a href="javascript:void(0);" onclick="selectjob('市场营销')">市场营销</a> <a href="javascript:void(0);" onclick="selectjob('会计学')"
										class="curr">会计学</a> <a href="javascript:void(0);" onclick="selectjob('财务管理')">财务管理</a> <a href="javascript:void(0);" onclick="selectjob('国际商务')"
										class="curr">国际商务</a> <a href="javascript:void(0);" onclick="selectjob('审计学')">审计学</a> <a href="javascript:void(0);" onclick="selectjob('物业管理')">物业管理</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('艺术学')"> 艺术学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('艺术史论')" class="curr">艺术史论</a> <a href="javascript:void(0);" onclick="selectjob('音乐学')">音乐学</a> <a href="javascript:void(0);" onclick="selectjob('舞蹈学')">舞蹈学</a>
									<a href="javascript:void(0);" onclick="selectjob('表演')">表演</a> <a href="javascript:void(0);" onclick="selectjob('戏剧学')">戏剧学</a> <a href="javascript:void(0);" onclick="selectjob('电影学')">电影学</a> <a
										href="javascript:void(0);" onclick="selectjob('美术学')">美术学</a>
								</dd>
							</dl>
						</div>
					</div>
					<div class="menu_box">
						<div class="menu_main">
							<h2>
								高级中学<span></span>
							</h2>
							<a href="javascript:void(0);" onclick="selectjob('理科')">理科</a> <a href="javascript:void(0);" onclick="selectjob('文科')">文科</a> <a href="javascript:void(0);" onclick="selectjob('其他')">其他</a>
						</div>
						<div class="menu_sub dn">
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('理科')"> 理科 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('高中数学')" class="curr">高中数学</a> <a href="javascript:void(0);" onclick="selectjob('高中语文')">高中语文</a> <a href="javascript:void(0);" onclick="selectjob('高中英语')">高中英语</a>
									<a href="javascript:void(0);" onclick="selectjob('高中物理')" class="curr">高中物理</a> <a href="javascript:void(0);" onclick="selectjob('高中化学')">高中化学</a> <a href="javascript:void(0);" onclick="selectjob('高中生物')">高中生物</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('文科')"> 文科 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('高中数学')" class="curr">高中数学</a> <a href="javascript:void(0);" onclick="selectjob('高中语文')">高中语文</a> <a href="javascript:void(0);" onclick="selectjob('高中英语')">高中英语</a>
									<a href="javascript:void(0);" onclick="selectjob('高中历史')">高中历史</a> <a href="javascript:void(0);" onclick="selectjob('高中地理')">高中地理</a> <a href="javascript:void(0);" onclick="selectjob('高中政治')">高中政治</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('其他')"> 其他 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('高中体育')">高中体育</a> <a href="javascript:void(0);" onclick="selectjob('高中心理')">高中心理</a>
								</dd>
							</dl>
						</div>
					</div>
					<div class="menu_box">
						<div class="menu_main">
							<h2>
								初级中学<span></span>
							</h2>
							<a href="javascript:void(0);" onclick="selectjob('理科')">理科</a> <a href="javascript:void(0);" onclick="selectjob('文科')">文科</a> <a href="javascript:void(0);" onclick="selectjob('其他')">其他</a>
						</div>
						<div class="menu_sub dn">
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('理科')"> 理科 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('初中数学')" class="curr">初中数学</a> <a href="javascript:void(0);" onclick="selectjob('初中语文')">初中语文</a> <a href="javascript:void(0);" onclick="selectjob('初中英语')">初中英语</a>
									<a href="javascript:void(0);" onclick="selectjob('初中生物')">初中生物</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('文科')"> 文科 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('初中数学')" class="curr">初中数学</a> <a href="javascript:void(0);" onclick="selectjob('初中语文')">初中语文</a> <a href="javascript:void(0);" onclick="selectjob('初中英语')">初中英语</a>
									<a href="javascript:void(0);" onclick="selectjob('初中历史')">初中历史</a> <a href="javascript:void(0);" onclick="selectjob('初中地理')">初中地理</a> <a href="javascript:void(0);" onclick="selectjob('思想品德')">思想品德</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('其他')"> 其他 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('初中体育')">初中体育</a> <a href="javascript:void(0);" onclick="selectjob('初中音乐')">初中音乐</a> <a href="javascript:void(0);" onclick="selectjob('初中美术')">初中美术</a> <a
										href="javascript:void(0);" onclick="selectjob('信息技术')">信息技术</a>
								</dd>
							</dl>
						</div>
					</div>
					<div class="menu_box">
						<div class="menu_main">
							<h2>
								小学 <span></span>
							</h2>
							<a href="javascript:void(0);" onclick="selectjob('语文')">语文</a> <a href="javascript:void(0);" onclick="selectjob('数学')">数学</a> <a href="javascript:void(0);" onclick="selectjob('英语')">英语</a>
						</div>
						<div class="menu_sub dn">
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('语文')"> 语文 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('小学语文')">小学语文</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('数学')"> 数学 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('小学数学')">小学数学</a>

								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('英语')"> 英语 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('小学英语')">小学英语</a>
								</dd>
							</dl>
						</div>
					</div>
					<div class="menu_box">
						<div class="menu_main">
							<h2>
								幼儿园<span></span>
							</h2>
							<a href="javascript:void(0);" onclick="selectjob('幼儿')">幼儿</a>
						</div>
						<div class="menu_sub dn">
							<dl class="reset">
								<dt>
									<a href=" "> 幼儿 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('幼儿卫生保育教程')">幼儿卫生保育教程</a> <a href="javascript:void(0);" onclick="selectjob('幼儿心理学')" class="curr">幼儿心理学</a> <a
										href="javascript:void(0);" onclick="selectjob('幼儿教育概论')">幼儿教育概论</a> <a href="javascript:void(0);" onclick="selectjob('幼师听话与说话')" class="curr">幼师听话与说话</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('幼儿')"> 幼儿 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('幼儿园教育活动的设计与指导')">幼儿园教育活动的设计与指导</a> <a href="javascript:void(0);" onclick="selectjob('幼儿手工')">幼儿手工</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('幼儿')"> 幼儿 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('教师口语')">教师口语</a> <a href="javascript:void(0);" onclick="selectjob('幼儿唱歌')">幼儿唱歌</a> <a href="javascript:void(0);" onclick="selectjob('幼儿绘画')">幼儿绘画</a> <a
										href="javascript:void(0);" onclick="selectjob('幼儿舞蹈')">幼儿舞蹈</a> <a href="javascript:void(0);" onclick="selectjob('幼师听话与说话')" class="curr">幼师听话与说话</a> <a
										href="javascript:void(0);" onclick="selectjob('幼儿手工')">幼儿手工</a>
								</dd>
							</dl>
						</div>
					</div>
					<div class="menu_box">
						<div class="menu_main">
							<h2>
								中等职业学校<span></span>
							</h2>
							<a href="javascript:void(0);" onclick="selectjob('电子商务')">电子商务</a> <a href="javascript:void(0);" onclick="selectjob('电子技术应用')">电子技术应用</a> <a href="javascript:void(0);" onclick="selectjob('航空旅游')">航空旅游</a> <a
								href="javascript:void(0);" onclick="selectjob('播音与主持')">播音与主持</a> <a href="javascript:void(0);" onclick="selectjob('高级海员')">高级海员</a> <a href="javascript:void(0);" onclick="selectjob('机电技术应用')">机电技术应用</a>
						</div>
						<div class="menu_sub dn">
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('电子商务')"> 电子商务 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('计算机基础应用')">计算机基础应用</a> <a href="javascript:void(0);" onclick="selectjob('Photoshop图像处理')">Photoshop图像处理</a> <a href="javascript:void(0);" onclick="selectjob('市场营销')">市场营销</a>
									<a href="javascript:void(0);" onclick="selectjob('基础会计')">基础会计</a> <a href="javascript:void(0);" onclick="selectjob('商贸英语')">商贸英语</a> <a href="javascript:void(0);" onclick="selectjob('商务法规')">商务法规</a> <a
										href="javascript:void(0);" onclick="selectjob('电子商务概论')">电子商务概论</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('电子技术应用')"> 电子技术应用 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('电子技术基础')">电子技术基础</a> <a href="javascript:void(0);" onclick="selectjob('电工基础')">电工基础</a> <a href="javascript:void(0);" onclick="selectjob('计算机应用基础')">计算机应用基础</a>
									<a href="javascript:void(0);" onclick="selectjob('仪表仪器测量与使用')" class="curr">仪表仪器测量与使用</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('航空旅游 ')"> 航空旅游 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('空乘')" class="curr">空乘</a> <a href="javascript:void(0);" onclick="selectjob('地勤')" class="curr">地勤</a> <a
										href="javascript:void(0);" onclick="selectjob('安检护卫')">安检护卫</a> <a href="javascript:void(0);" onclick="selectjob('铁乘服务')">铁乘服务</a> <a href="javascript:void(0);" onclick="selectjob('名航航空法')">名航航空法</a> <a
										href="javascript:void(0);" onclick="selectjob('服务心理学')">服务心理学</a> <a href="javascript:void(0);" onclick="selectjob('社交与礼仪')">社交与礼仪</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('播音与主持')"> 播音与主持 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('播音创作基础')">播音创作基础</a> <a href="javascript:void(0);" onclick="selectjob('广播播音主持')">广播播音主持</a> <a href="javascript:void(0);" onclick="selectjob('电视播音主持')">电视播音主持</a>
									<a href="javascript:void(0);" onclick="selectjob('艺术作品演播')">艺术作品演播</a> <a href="javascript:void(0);" onclick="selectjob('播音概论')">播音概论</a> <a href="javascript:void(0);" onclick="selectjob('新闻学概论')">新闻学概论</a>
									<a href="javascript:void(0);" onclick="selectjob('广播电视节目制作')">广播电视节目制作</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('高级海员')"> 高级海员 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('航海学')">航海学</a> <a href="javascript:void(0);" onclick="selectjob('航海英语')">航海英语</a> <a href="javascript:void(0);" onclick="selectjob('船舶结构与设备')">船舶结构与设备</a> <a
										href="javascript:void(0);" onclick="selectjob('海洋气象与海洋学')">海洋气象与海洋学</a> <a href="javascript:void(0);" onclick="selectjob('GMDSS训练')">GMDSS训练</a> <a href="javascript:void(0);" onclick="selectjob('海上货物运输')">海上货物运输</a>
								</dd>
							</dl>
							<dl class="reset">
								<dt>
									<a href="javascript:void(0);" onclick="selectjob('机电技术应用')"> 机电技术应用 </a>
								</dt>
								<dd>
									<a href="javascript:void(0);" onclick="selectjob('机械制图与CAD')">机械制图与CAD</a> <a href="javascript:void(0);" onclick="selectjob('电工与电子技术')">电工与电子技术</a> <a href="javascript:void(0);" onclick="selectjob('车工工艺学')">车工工艺学</a>
									<a href="javascript:void(0);" onclick="selectjob('钳工工艺学')">钳工工艺学</a> <a href="javascript:void(0);" onclick="selectjob('金属工艺学')">金属工艺学</a> <a href="javascript:void(0);" onclick="selectjob('车工操作实训')">车工操作实训</a>
									<a href="javascript:void(0);" onclick="selectjob('钳工操作实训')">钳工操作实训</a>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				<a class="subscribe" href="mlist.action?page=1" target="_blank">职位推荐</a>
			</div>
			<div class="content">
				<div id="search_box">
					<form>
						<ul id="searchType" name="searchType">
							<li value="职位" class="type_selected">职位</li>
							<li value="公司">公司</li>
						</ul>
						<div class="searchtype_arrow"></div>
						<input type="text" id="search_input" onkeydown="if(event.keyCode==13){event.keyCode=0;event.returnValue=false;}"
							 placeholder="请输入职位名称，如：教师" />
						<input type="button" id="search_button" onclick="sousuo();" value="搜索" />

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
				<div id="home_banner">
					<ul class="banner_bg">
						<li class="banner_bg_1 current"><a
		
							target="_blank"><img
								src="style/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg"
								width="612" height="160" alt="好买基金——来了就给100万" /></a></li>
						<li class="banner_bg_2"><a
							
							target="_blank"><img
								src="style/images/c9d8a0756d1442caa328adcf28a38857.jpg"
								width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a></li>
						<li class="banner_bg_3"><a
							
							target="_blank"><img
								src="style/images/d03110162390422bb97cebc7fd2ab586.jpg"
								width="612" height="160" alt="出北京记——第一站厦门" /></a></li>
					</ul>
					<div class="banner_control">
						<em></em>
						<ul class="thumbs">
							<li class="thumbs_1 current"><i></i> <img
								src="style/images/4469b1b83b1f46c7adec255c4b1e4802.jpg"
								width="113" height="42" /></li>
							<li class="thumbs_2"><i></i> <img
								src="style/images/381b343557774270a508206b3a725f39.jpg"
								width="113" height="42" /></li>
							<li class="thumbs_3"><i></i> <img
								src="style/images/354d445c5fd84f1990b91eb559677eb5.jpg"
								width="113" height="42" /></li>
						</ul>
					</div>
				</div>
				<!--/#main_banner-->

				<ul id="da-thumbs" class="da-thumbs">
					<li><a  target="_blank"> <img
							src="style/images/a254b11ecead45bda166afa8aaa9c8bc.jpg"
							width="113" height="113" alt="联想" />
							<div class="hot_info">
								<h2 title="联想">联想</h2>
								<em></em>
								<p title="世界因联想更美好">世界因联想更美好</p>
							</div>
					</a></li>
					<li><a  target="_blank"> <img
							src="style/images/c75654bc2ab141df8218983cfe5c89f9.jpg"
							width="113" height="113" alt="淘米" />
							<div class="hot_info">
								<h2 title="淘米">淘米</h2>
								<em></em>
								<p title="将心注入 追求极致">将心注入 追求极致</p>
							</div>
					</a></li>
					<li><a target="_blank"> <img
							src="style/images/2bba2b71d0b0443eaea1774f7ee17c9f.png"
							width="113" height="113" alt="优酷土豆" />
							<div class="hot_info">
								<h2 title="优酷土豆">优酷土豆</h2>
								<em></em>
								<p title="专注于视频领域，是中国网络视频行业领军企业">专注于视频领域，是中国网络视频行业领军企业</p>
							</div>
					</a></li>
					<li><a target="_blank"> <img
							src="style/images/f4822a445a8b495ebad81fcfad3e40e2.jpg"
							width="113" height="113" alt="思特沃克" />
							<div class="hot_info">
								<h2 title="思特沃克">思特沃克</h2>
								<em></em>
								<p title="一家全球信息技术服务公司">一家全球信息技术服务公司</p>
							</div>
					</a></li>
					<li><a  target="_blank"> <img
							src="style/images/5caf8f9631114bf990f87bb11360653e.png"
							width="113" height="113" alt="奇猫" />
							<div class="hot_info">
								<h2 title="奇猫">奇猫</h2>
								<em></em>
								<p title="专注于移动互联网、互联网产品研发">专注于移动互联网、互联网产品研发</p>
							</div>
					</a></li>
					<li class="last"><a  target="_blank">
							<img src="style/images/c0052c69ef4546c3b7d08366d0744974.jpg"
							width="113" height="113" alt="堆糖网" />
							<div class="hot_info">
								<h2 title="堆糖网">堆糖网</h2>
								<em></em>
								<p title="分享收集生活中的美好，遇见世界上的另外一个你">分享收集生活中的美好，遇见世界上的另外一个你</p>
							</div>
					</a></li>
				</ul>

				<ul class="reset hotabbing">
					<li class="current">热门职位</li>
					<li>最新职位</li>
				</ul>
				<div id="hotList">
					<ul class="hot_pos reset">
					<!-- 完整的职位加公司热门 -->
					<c:forEach items="${listPosandcomnumber}" var="listPosandcomnumber">
						<li class="clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a href="jobdetail.action?positionid=${listPosandcomnumber.positionid}&companyid=${listPosandcomnumber.companyid}" target="_blank">${listPosandcomnumber.positionname}</a> &nbsp; <span
										class="c9">[${listPosandcomnumber.workaddress}]</span>
								</div>
								<span><em class="c7">月薪： </em>${listPosandcomnumber.salarymin}k-${listPosandcomnumber.salarymax}k</span> 
								<span><em class="c7">经验：</em>
								<c:if test="${listPosandcomnumber.experience =='-1'}">
									不限
								</c:if><c:if test="${listPosandcomnumber.experience =='0'}">
									应届毕业生
								</c:if> <c:if test="${listPosandcomnumber.experience =='1'}">
									至少1年
								</c:if> <c:if test="${listPosandcomnumber.experience =='2'}">
									至少2年
								</c:if> <c:if test="${listPosandcomnumber.experience =='3'}">
									至少3年
								</c:if> <c:if test="${listPosandcomnumber.experience =='4'}">
									至少4年
								</c:if> <c:if test="${listPosandcomnumber.experience =='5'}">
									至少5年
								</c:if> <c:if test="${listPosandcomnumber.experience =='6'}">
									至少6年
								</c:if> <c:if test="${listPosandcomnumber.experience =='7'}">
									至少7年
								</c:if> <c:if test="${listPosandcomnumber.experience =='8'}">
									至少8年
								</c:if> <c:if test="${listPosandcomnumber.experience =='9'}">
									至少9年
								</c:if> <c:if test="${listPosandcomnumber.experience =='10'}">
									至少10年
								</c:if> <c:if test="${listPosandcomnumber.experience =='11'}">
									10年及以上
								</c:if> 
								</span> 
								<span><em class="c7">最低学历：</em>
								<c:if test="${listPosandcomnumber.education =='0'}">
									不限
								</c:if><c:if test="${listPosandcomnumber.education =='1'}">
									大专 
								</c:if> <c:if test="${listPosandcomnumber.education =='2'}">
									本科 
								</c:if> <c:if test="${listPosandcomnumber.education =='3'}">
									硕士 
								</c:if> <c:if test="${listPosandcomnumber.education =='4'}">
									博士
								</c:if>
								</span> <br /> 
								<span><em class="c7">职位诱惑：</em>${listPosandcomnumber.positionadvantage}</span> <br />
								<span><fmt:formatDate value="${listPosandcomnumber.releasetime}" pattern="yyyy-MM-dd HH:mm" />&nbsp;&nbsp;发布</span>
							</div>
							<div class="hot_pos_r">
								<div class="mb10 recompany">
									<a href="companydetail.action?companyid=${listPosandcomnumber.companyid}" target="_blank">${listPosandcomnumber.companyname}</a>
								</div>
								<span><em class="c7">类型：</em> ${listPosandcomnumber.companytype}</span> <span><em
									class="c7">创始人：</em>${listPosandcomnumber.companyceoname}</span> <br /> 
									<span><em class="c7">规模：</em>${listPosandcomnumber.companysize}</span>
								<ul class="companyTags reset">
								<c:if test="${not empty listPosandcomnumber.companytag1}">
									<li>${listPosandcomnumber.companytag1}</li>
								</c:if>
								<c:if test="${not empty listPosandcomnumber.companytag2}">
									<li>${listPosandcomnumber.companytag2}</li>
								</c:if>
								<c:if test="${not empty listPosandcomnumber.companytag3}">
									<li>${listPosandcomnumber.companytag3}</li>
								</c:if>
								<c:if test="${not empty listPosandcomnumber.companytag4}">
									<li>${listPosandcomnumber.companytag4}</li>
								</c:if>
								<c:if test="${not empty listPosandcomnumber.companytag5}">
									<li>${listPosandcomnumber.companytag5}</li>
								</c:if>
								</ul>
							</div>
							<div class="recommend">
								<a href="companydetail.action?companyid=${listPosandcomnumber.companyid}" target="_blank">
									<c:if test="${not empty listPosandcomnumber.companylogo}">
										<img src="/pic/${listPosandcomnumber.companylogo}"
											width="60" height="60" alt="${listPosandcomnumber.companyname}"
											style="border: 2px solid Gainsboro;margin-top:10px" />
									</c:if>
									<c:if test="${empty listPosandcomnumber.companylogo}">
										<img src="style/images/logo_default.png"
											width="60" height="60" alt="${listPosandcomnumber.companyname}"
											style="border: 2px solid Gainsboro;margin-top:10px" />
									</c:if>
								</a>
							</div>
						</li>
						</c:forEach>
						<!-- END完整的职位加公司热门  -->
						<a href="selectjob.action?positionname=&workaddress=全国&salary=&experience=&education=&positionnature=&page=1" class="btn fr" target="_blank">查看更多</a>
					</ul>
					<ul class="hot_pos hot_posHotPosition reset" style="display: none;">
						<!-- 完整的职位加公司最新 -->
					<c:forEach items="${listPosandcomtime}" var="listPosandcomtime">
						<li class="clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a href="jobdetail.action?positionid=${listPosandcomtime.positionid}&companyid=${listPosandcomtime.companyid}" target="_blank">${listPosandcomtime.positionname}</a> &nbsp; <span
										class="c9">[${listPosandcomtime.workaddress}]</span>
								</div>
								<span><em class="c7">月薪： </em>${listPosandcomtime.salarymin}k-${listPosandcomtime.salarymax}k</span> 
								<span><em class="c7">经验：</em>
								<c:if test="${listPosandcomtime.experience =='-1'}">
									不限
								</c:if><c:if test="${listPosandcomtime.experience =='0'}">
									应届毕业生
								</c:if> <c:if test="${listPosandcomtime.experience =='1'}">
									至少1年
								</c:if> <c:if test="${listPosandcomtime.experience =='2'}">
									至少2年
								</c:if> <c:if test="${listPosandcomtime.experience =='3'}">
									至少3年
								</c:if> <c:if test="${listPosandcomtime.experience =='4'}">
									至少4年
								</c:if> <c:if test="${listPosandcomtime.experience =='5'}">
									至少5年
								</c:if> <c:if test="${listPosandcomtime.experience =='6'}">
									至少6年
								</c:if> <c:if test="${listPosandcomtime.experience =='7'}">
									至少7年
								</c:if> <c:if test="${listPosandcomtime.experience =='8'}">
									至少8年
								</c:if> <c:if test="${listPosandcomtime.experience =='9'}">
									至少9年
								</c:if> <c:if test="${listPosandcomtime.experience =='10'}">
									至少10年
								</c:if> <c:if test="${listPosandcomtime.experience =='11'}">
									10年及以上
								</c:if> 
								</span> 
								<span><em class="c7">最低学历：</em>
								<c:if test="${listPosandcomtime.education =='0'}">
									不限
								</c:if><c:if test="${listPosandcomtime.education =='1'}">
									大专 
								</c:if> <c:if test="${listPosandcomtime.education =='2'}">
									本科 
								</c:if> <c:if test="${listPosandcomtime.education =='3'}">
									硕士 
								</c:if> <c:if test="${listPosandcomtime.education =='4'}">
									博士
								</c:if>
								</span> <br /> 
								<span><em class="c7">职位诱惑：</em>${listPosandcomtime.positionadvantage}</span> <br />
								<span><fmt:formatDate value="${listPosandcomtime.releasetime}" pattern="yyyy-MM-dd HH:mm" />&nbsp;&nbsp;发布</span>
							</div>
							<div class="hot_pos_r">
								<div class="mb10 recompany">
									<a href="companydetail.action?companyid=${listPosandcomtime.companyid}" target="_blank">${listPosandcomtime.companyname}</a>
								</div>
								<span><em class="c7">类型：</em> ${listPosandcomtime.companytype}</span> <span><em
									class="c7">创始人：</em>${listPosandcomtime.companyceoname}</span> <br /> 
									<span><em class="c7">规模：</em>${listPosandcomtime.companysize}</span>
								<ul class="companyTags reset">
								<c:if test="${not empty listPosandcomtime.companytag1}">
									<li>${listPosandcomtime.companytag1}</li>
								</c:if>
								<c:if test="${not empty listPosandcomtime.companytag2}">
									<li>${listPosandcomtime.companytag2}</li>
								</c:if>
								<c:if test="${not empty listPosandcomtime.companytag3}">
									<li>${listPosandcomtime.companytag3}</li>
								</c:if>
								<c:if test="${not empty listPosandcomtime.companytag4}">
									<li>${listPosandcomtime.companytag4}</li>
								</c:if>
								<c:if test="${not empty listPosandcomtime.companytag5}">
									<li>${listPosandcomtime.companytag5}</li>
								</c:if>
								</ul>
							</div>
							<div class="recommend">
								<a href="companydetail.action?companyid=${listPosandcomtime.companyid}" target="_blank"><img
									src="/pic/${listPosandcomtime.companylogo}"
									width="60" height="60" alt="${listPosandcomtime.companyname}"
									style="border: 2px solid Gainsboro;margin-top:10px" /></a>
							</div>
						</li>
						</c:forEach>
						<!-- END完整的职位加公司最新  -->
						<a href="selectjob.action?positionname=&workaddress=全国&salary=&experience=&education=&positionnature=&page=1" class="btn fr" target="_blank">查看更多</a>
					</ul>
				</div>

				<div class="clear"></div>
				<div id="linkbox">
					<dl>
						<dt>友情链接</dt>
						<dd>
							<a href="" target="_blank">住趣家居网</a> <span>|</span> <a href=""
								target="_blank">人人都是产品经理</a> <span>|</span> <a href=""
								target="_blank">互联网er的早读课</a> <span>|</span> <a href=""
								target="_blank">猎云网</a> <span>|</span> <a href=""
								target="_blank">UCloud</a> <span>|</span> <a href=""
								target="_blank">iconfans</a> <span>|</span> <a href=""
								target="_blank">html5梦工厂</a> <span>|</span> <a href=""
								target="_blank">手游那点事</a> <a href="" target="_blank">php中文网</a>
							<span>|</span> <a href="" target="_blank">uehtml</a> <span>|</span>
							<a href="" target="_blank">W3CPlus</a> <span>|</span> <a href=""
								target="_blank">盒子UI</a> <span>|</span> <a href=""
								target="_blank">uimaker</a> <span>|</span> <a href=""
								target="_blank">互联网的一些事</a> <span>|</span> <a href=""
								target="_blank">传课网</a> <span>|</span> <a href=""
								target="_blank">安卓开发</a> <span>|</span> <a href=""
								target="_blank">安卓开发论坛</a> <a href="" target="_blank">360安全网址导航</a>
							<span>|</span> <a href="" target="_blank">360安全浏览器</a> <span>|</span>
							<a href="" target="_blank">hao123上网导航</a> <span>|</span> <a
								href="" target="_blank">互联网创业</a><span>|</span> <a href=""
								target="_blank">众筹网</a><span>|</span> <a href="" target="_blank">马克互联网</a><span>|</span>
							<a href="" target="_blank">巢湖英才网</a> <a href="" target="_blank">创意服务外包</a><span>|</span>
							<a href="" target="_blank">thinkphp</a><span>|</span> <a href=""
								target="_blank">创新派</a><span>|</span> <a href="" target="_blank">W3Cshare</a><span>|</span>
							<a href="" target="_blank">论文发表网</a><span>|</span> <a href=""
								target="_blank">199it</a><span>|</span> <a href=""
								target="_blank">市场部网</a><span>|</span> <a href=""
								target="_blank">美图公司</a><span>|</span> <a href=""
								target="_blank">Teambition</a> <a href="" target="_blank">欧朋浏览器</a><span>|</span>
							<a href="" target="_blank">网络广告人社区</a> <a href="" target="_blank"
								class="more">更多</a>
						</dd>
					</dl>
				</div>
			</div>
			<input type="hidden" value="" name="userid" id="userid" />
			<!-- <div id="qrSide"><a></a></div> -->
			<!--  -->

			<!-- <div id="loginToolBar">
            <div>
                <em></em>
                <img src="style/images/footbar_logo.png" width="138" height="45" />
                <span class="companycount"></span>
                <span class="positioncount"></span>
                <a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
                <div class="right">
                    <a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
                </div>
                <input type="hidden" id="cc" value="16002" />
                <input type="hidden" id="cp" value="96531" />
            </div>
        </div>
         -->
			<!-------------------------------------弹窗lightbox  ----------------------------------------->
			<div style="display: none;">
				<!-- 登录框 -->
				<div id="loginPop" class="popup" style="height: 240px;">
					<form id="loginForm">
						<input type="text" id="email" name="email" tabindex="1"
							placeholder="请输入登录邮箱地址" /> <input type="password" id="password"
							name="password" tabindex="2" placeholder="请输入密码" /> <span
							class="error" style="display: none;" id="beError"></span> <label
							class="fl" for="remember"><input type="checkbox"
							id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
						<a href="h/reset.html" class="fr">忘记密码？</a> <input type="submit"
							id="submitLogin" value="登 &nbsp; &nbsp; 录" />
					</form>
					<div class="login_right">
						<div>还没有师聘帐号？</div>
						<a href="register.html" class="registor_now">立即注册</a>
						<div class="login_others">使用以下帐号直接登录:</div>
						<a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb"
							class="icon_wb" title="使用新浪微博帐号登录"></a> <a
							href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq"
							target="_blank" title="使用腾讯QQ帐号登录"></a>
					</div>
				</div>
				<!--/#loginPop-->
			</div>
			<!------------------------------------- end ----------------------------------------->
			<script type="text/javascript" src="style/js/Chart.min.js"></script>
			<script type="text/javascript" src="style/js/home.min.js"></script>
			<script type="text/javascript" src="style/js/count.js"></script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" /> <a id="backtop"
				title="回到顶部" rel="nofollow"></a>
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

	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>

	<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->
<script type="text/javascript">
	function selectjob(positionname) {
		//alert(positionname)
		//window.location.href = "selectjob.action?positionname=&address=&salary=&experience=&education=&positionnature=&page=1"; 
		window.location.href = "selectjob.action?positionname="+positionname+"&workaddress=全国&salary=&experience=&education=&positionnature=&page=1"; 
		window.event.returnValue=false;  
	}
	
</script>
<script>
function sousuo(){
    var type = $(".type_selected").attr("value");
    var search_input = $("#search_input").val().replace(/^(\s|\xA0)+|(\s|\xA0)+$/g, '');  
    if(type=='职位'){
    	if(search_input==''||search_input==null){
    		document.getElementById("search_input").value = null;
    		alert("请输入搜索信息!")
    	}else{
    		window.location.href = "selectjob.action?positionname="+search_input+"&workaddress=全国&salary=&experience=&education=&positionnature=&page=1"; 
    	}
    }else{
    	if(search_input==''||search_input==null){
    		document.getElementById("search_input").value = null;
    		alert("请输入搜索信息!")
    	}else{
        	window.location.href = "selectcompanylist.action?companyname="+search_input+"&companyaddress=全国&companysize=不限&page=1"; 
    	}
    }
}
function remensousuo(remen){
    var positionname = remen;
    window.location.href = "selectjob.action?positionname="+positionname+"&workaddress=全国&salary=&experience=&education=&positionnature=&page=1"; 
}

</script> 
</body>
</html>