<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>编辑家族</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">


<script src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
<script src="<%=basePath%>Js/run.js"></script>
<script type="text/javascript" src="<%=basePath%>Js/canvas-particle.js"></script>

<script type="application/javascript" src="<%=basePath%>Js/UserFamily/EditGroup/groupVar.js"></script>
<script type="application/javascript" src="<%=basePath%>Js/UserFamily/EditGroup/until.js"></script>
<script type="application/javascript" src="<%=basePath%>Js/UserFamily/EditGroup/groupFollow.js"></script>
<script type="application/javascript" src="<%=basePath%>Js/UserFamily/EditGroup/groupOld.js"></script>
<script type="application/javascript" src="<%=basePath%>Js/UserFamily/EditGroup/group.js"></script>
<script type="application/javascript" src="<%=basePath%>Js/UserFamily/EditGroup/test.js"></script>

<link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>Css/UserFamily/group.css" />

<script>
	function judgment(){
    	$.ajax({ 
		    type: "post", 	
			url: "${pageContext.request.contextPath}/User/judgment.action?userId=${user.userid}" ,
			data: {
				
			} ,
			dataType: "text",
			success: function(data){
				if(data=="success"){
					window.location.href="${pageContext.request.contextPath}/UserFamily/userFamily.action"; 
				}				
				if(data=="no"){
					alert("你还没有加入家族");
				}
			},
			error: function(data){
				alert("你还没有加入家族");
			} 
		});
  	}
    
	</script>
</head>

<body>
	<div class="wall">
		<div id="top" class="row1">
			<div id="img3" class="col-md-3 col-xs-5">
				<img src="<%=basePath %>img/logo.png" alt="" id="img"	class="col-md-12 col-xs-12" />
			</div>

			<div id="daohang" class="col-md-9 col-xs-12">
				<ul id="ul1" class="col-md-11 col-xs-11">
					<li class="col-md-2">
						<a href="<%=basePath %>User/UserIndex.jsp" class="aa">首页</a>
					</li>
					<li class="col-md-2"><a href="javascript:viod(0)" class="aa">视频区</a></li>
					<li class="col-md-2">
						<a href="${pageContext.request.contextPath}/User/forun.action" class="aa">论坛区</a>
					</li>
					<li class="col-md-2">
						<a href="javascript:viod(0)" onclick="judgment()" class="aa"  id="qwe" style="color: #ffffff" >进入家族</a>
					</li>
					<li class="col-md-2">
						<a href="${pageContext.request.contextPath}/User/LoginOut.action" class="aa">退出</a>
					</li>
					
                 <li class="bg bg2"></li>

				</ul>
				<div class="col-md-1 col-xs-2" id="img1">
					<a href="<%=basePath %>User/UserCenter/UserInfo.jsp">
	                	<img src="/pic/${user.user.userimgpath}"
	                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="head"/>
                	</a>
				</div>

			</div>

		</div>
		<div class="daohang2" class="col-md-12 col-xs-12">
			<ul id="ul2" class="col-md-12 col-xs-12">
				<li class="col-md-2"><a href="" class="aa">我的族谱</a></li>
				<li class="col-md-2">
						<a href="<%=basePath %>User/UserFamily/EditGroup.jsp" class="aa asd"  id="sdff">族谱制作</a>
				</li>
				<li class="col-md-2">
					<a href="<%=basePath %>User/UserFamilyVedio/UserFamilyVedio.jsp"  class="aa">家族视频</a>
			    </li>
				<li class="col-md-2">
					<a href="${pageContext.request.contextPath}/UserFamily/userFamilyBbs.action" class="aa">家族论坛</a>
				</li>
				<li class="col-md-2">
						<a href="<%=basePath %>User/UserFamily/UserFamilyManagement.jsp" class="aa">家族管理</a>
				</li>

				<li class="bg"></li>

			</ul>


		</div>
		<div class="line"></div>
	</div>

	<!-- 画布层绘制树状图 -->
	<div id="middle">
		<div id="middleSvg">
			<svg id="grouptree" width="250px" height="80px" version="1.1" xmlns="http://www.w3.org/2000/svg"> 
				<g id="01" level="1">
					<rect width="200" height="60" x="0" y="0" fill="#3499da" /> 
					<image x="1" y="2" width="58" height="56" href="<%=basePath%>img/man_face.png" /> 
					<text x="120" y="20" text-anchor="middle" fill="#2b2b2b">彭宇龙</text> 
					<a href="javascript:void(0);" onclick="removeNumber(this)">
					<image x="180" y="10" width="16" height="15" href="<%=basePath%>img/del.png" /></a> 
					<a href="javascript:void(0);" onclick="showMsg(this)">
					<image x="70" y="40" width="16" height="15" href="<%=basePath%>img/edit.png" /></a> 
					<a href="javascript:void(0);" onclick="addNumberMenu(this)">
					<image x="160" y="40" width="16" height="15" href="<%=basePath%>img/add.png" /></a> 
				</g> 
			</svg>
		</div>

		<!-- 个人信息表单 -->
		<div id="personMsg">
			<h1>个人信息</h1>
			<!-- 个人信息编辑表单 -->
			<form id="userInfo" action=""
				onsubmit="javascript:updateNumberInfo()" method="post">
				<!-- 此部分使用ajax从数据库中取值 -->
				<p hidden="true">123</p>
				<p>
					个人姓名：<input name="personName" value="" maxlength="10" type="text" />
				</p>
				<p>
					同辈排行：<input name="relation" value="" type="text" placeholder="例如：1" />
				</p>
				<p>
					生 日：<input name="brithday" value="" type="text" placeholder="生日日期" />
				</p>
				<p>
					祖籍地址：<input name="hometown" value="" type="text" placeholder="家族地址" />
				</p>
				<p>个人简介：</p>
				<p>
					<textarea id="introduce" name="introduce"
						placeholder="可以考虑写下家人的个人简历"></textarea>
				</p>
				<p>
					<input class="input" type="submit" value="确 定" /><input
						class="input" id="cancel" type="button" value="取 消"
						onclick="javascript:displayInfo('personMsg')" />
				</p>
			</form>
		</div>

		<div id="addNumber">
			<p hidden="true"></p>
			<div id="old">
				<div id="father">
					<a href="javascript:addOldNumber('father')"><p>父亲</p></a>
				</div>
				<div id="mother">
					<a href="javascript:addOldNumber('mother')"><p>母亲</p></a>
				</div>
			</div>
			<div id="cancel">
				<a href="javascript:displayInfo('addNumber')"><p>取消</p></a>
			</div>
			<div id="follow">
				<div id="brother">
					<a href="javascript:addNumber('menhref')"><p>兄弟</p></a>
				</div>
				<div id="sister">
					<a href="javascript:addNumber('womanhref')"><p>姐妹</p></a>
				</div>
			</div>
			<div id="young">
				<div id="son">
					<a href="javascript:addYoungNumber('menhref')"><p>儿子</p></a>
				</div>
				<div id="daughter">
					<a href="javascript:addYoungNumber('womanhref')"><p>女儿</p></a>
				</div>
			</div>
		</div>
	</div>

	<div class="bottom">
		<div class="bottom1">
			<p>京ICP备12008860号-1 广电节目制作许可证：1313号 京公网安备 11010502001653号</p>
			<p>Copyright © 2005 - 2017 Lotour.com 乐途旅游网 版权所有
				严重违规失信举报电话：010-65896261</p>
		</div>
	</div>
</body>
</html>