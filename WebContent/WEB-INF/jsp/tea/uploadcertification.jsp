<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>基本信息-招聘服务-拉勾网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
<meta name="keywords"
	content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
	var ctx = "http://www.lagou.com";
	console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
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
<title>Insert title here</title>
</head>
<body>
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a class="logo" href=""> <img width="229" height="43"
					alt="拉勾招聘-专注互联网招聘" src="style/images/logo.png">
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
			</div>
		</div>
		<!-- end #header -->
		<div id="container">

			<div class="content_mid">
				<dl class="c_section c_section_mid">
					<dt>
						<h2>
							<em></em>填写资格认证信息
						</h2>
					</dt>
					<dd>
						<form action="uploadcertification.action" method="post" enctype="multipart/form-data" onsubmit="return check()">
							
							<div class="c_text_1">
							<c:if test="${certification.status=='1'}">
								<a target="_blank" href="preview.action"><h4>审核通过,去看看吧>>></h4></a>					
							</c:if>
							<c:if test="${certification.status=='2'}">
								<h3>审核结果</h3><br>未通过原因:${certification.reason}<br>您可以重新提交审核&nbsp;( :
							</c:if>
							</div>
							<h3>真实姓名</h3>
							<!--非必填-->
							<input type="text" placeholder="请输入真实姓名 " value="" onfocus="quxiao1()"
								name="realname" id="realname" >
							<span style="display:none" for="realname" id="spanrealname" generated="true" class="error">请输入真实姓名 </span>
							
							<h3>身份证编号</h3>
							<input type="text" placeholder="请输入身份证编号" value="" name="idcard" onfocus="quxiao2()"
								id="idcard">
							<span style="display:none" for="idcard" id="spanidcard" generated="true" class="error">请输入正确的身份证编号 </span>
							
							<h3>申请资格名称</h3>
							<input type="text" placeholder="请输入申请资格名称" name="certificatename" onfocus="quxiao3()"
								id="certificatename">
							<span style="display:none" for="certificatename" id="spancertificatename" generated="true" class="error">请输入申请资格名称</span>
							
							<h3>教师证书编号</h3>
							<input type="text" value="" placeholder="请输入教师证书编号" name="certificateno" onfocus="quxiao4()"
									id="certificateno">
							<span style="display:none" for="certificateno" id="spancertificateno" generated="true" class="error">请输入教师证书编号 </span>
							
							<h3>证书照片</h3>
							<br>
							<div class="business_license">
                        	<div class="license_upload">
	                             <img src="style/images/beijingtu.png" id="showcertificateimg" name="showcertificateimg" width="450" height="220" alt="证书照片" /> 
                       		</div>
                        	<input type="file" name="certificateimg" id="certificateimg" onchange=""> 
                    		</div>
                   			<span style="display:none" for="certificateimg" id="spancertificateimg" generated="true" class="error">请上传证书照片 </span>
							<br>
							<div>
								<input type="submit" value="提交" class="btn_big fr">
							</div>
						</form>
					</dd>
				</dl>
			</div>

			<div class="clear"></div>
			<input type="hidden" value="13ae35fedd9e45cdb66fb712318d7369"
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

	<!--  -->


	
</body>
<script>
    //在input file内容改变的时候触发事件
    $('#certificateimg').change(function(){
    //获取input file的files文件数组;
    //$('#filed')获取的是jQuery对象，.get(0)转为原生对象;
    //这边默认只能选一个，但是存放形式仍然是数组，所以取第一个元素使用[0];
      var file1 = $('#certificateimg').get(0).files[0];
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
        $('#showcertificateimg').get(0).src = e.target.result;
        document.getElementById('spancertificateimg').style.display = "none";   
      }
    })
	function quxiao1() {  
		document.getElementById('spanrealname').style.display = "none";   
	}
    function quxiao2() {  
    	document.getElementById('spanidcard').style.display = "none";   
    }
    function quxiao3() {  
    	document.getElementById('spancertificatename').style.display = "none";   
    }
    function quxiao4() {  
    	document.getElementById('spancertificateno').style.display = "none";   
    }
    function check() {  
    	 var flag = true;
    	 var realname = document.getElementById("realname").value.replace(/(^\s*)|(\s*$)/g, "");
		 var idcard = document.getElementById("idcard").value.replace(/(^\s*)|(\s*$)/g, "");
		 var certificatename = document.getElementById("certificatename").value.replace(/(^\s*)|(\s*$)/g, "");
		 var certificateno = document.getElementById("certificateno").value.replace(/(^\s*)|(\s*$)/g, "");
		 var certificateimg = document.getElementById("certificateimg").value.replace(/(^\s*)|(\s*$)/g, "");
		 //alert(realname+" "+idcard+" "+certificatename+" "+certificateno+" "+certificateimg)
		 if(realname == null||realname == ''){
			 document.getElementById('spanrealname').style.display = "block"; 
			 flag = false;
		 }
		 if(idcard == null||idcard == ''){
			 document.getElementById('spanidcard').style.display = "block";  
			 flag = false;
		 }
		 if(certificatename == null||certificatename == ''){
			 document.getElementById('spancertificatename').style.display = "block";  
			 flag = false;
		 }
		 if(certificateno == null||certificateno == ''){
			 document.getElementById('spancertificateno').style.display = "block";  
			 flag = false;
		 }
		 if(certificateimg == null||certificateimg == ''){
			 document.getElementById('spancertificateimg').style.display = "block";  
			 flag = false;
		 }
		 if(flag==false){
			 return false;
		 }else{
			 return true;
		 }
    }
    
</script>
</html>