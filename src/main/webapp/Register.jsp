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
<script src="<%=basePath%>Jquery/JPlaceHolder.js"></script>
<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
<script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>

<link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet"	type="text/css" />
<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet"	type="text/css" />
<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"	type="text/css" />
<link href="<%=basePath%>Css/register.css" rel="stylesheet" type="text/css" />

<title>成员注册</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="成员注册">
<meta http-equiv="description" content="成员注册">
</head>
<body>
	<div class="title">
		<div class="title1">
			<div id="img3" class="col-md-5 col-xs-5">
				<img src="<%=basePath%>img/logo.png" alt="" id="img"
					class="col-md-12 col-xs-12" />
			</div>
			<div id="zi" class="col-md-5 col-xs-5">
				<img src="<%=basePath%>img/ziti.png" alt="" id="img1"
					class="col-md-12 col-xs-12" />
			</div>
			<div class="return">
				<a href="<%=basePath%>">返回首页</a>
			</div>
		</div>

	</div>
	<div class="middle">
		<div class="middle1">
			<div id="container">
				<div id="list" style="left: -600px;">
					<img src="<%=basePath%>img/zupu.jpg" alt=""> <img
						src="<%=basePath%>	img/name.jpg" alt=""> <img
						src="<%=basePath%>img/fazhan.jpg" alt=""> <img
						src="<%=basePath%>img/shu.jpg" alt=""> <img
						src="<%=basePath%>img/cidian.jpg" alt=""> <img
						src="<%=basePath%>img/laili.jpg" alt=""> <img
						src="<%=basePath%>img/chansheng.jpg" alt="">
				</div>

				<div id="buttons">
					<span index="1" class="on"></span> <span index="2"></span> <span
						index="3"></span> <span index="4"></span> <span index="5"></span>
				</div>

				<a href="javascript:;" class="arrow" id="prev">&lt</a> <a
					href="javascript:;" class="arrow" id="next">&gt</a>

			</div>
			<div id="div-1">
				<form action="<%=basePath %>User/Register.action" method="post" 
					id="form1-1" onsubmit="return check();">
                <h3 id="h3-1">注册</h3>
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                <input id="user-1" type="text" name="username" class="form-control alert alert-success" 
                placeholder="请设置账号" aria-describedby="sizing-addon3" autofocus="true" maxlength="8"  required="true">
                <!--获取光标,判断文本框内容是否为空-->
                <span id="text-1">账号不能为空</span>


                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                <input id="psw1-1" type="password" name="password" class="form-control alert alert-info" 
                placeholder="密码" aria-describedby="sizing-addon3"  required="true">

                <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
                <input id="psw2-1" type="password" name="pasw2" class="form-control alert alert-warning" 
                placeholder="确认密码" aria-describedby="sizing-addon3" required="true">

                <input type="submit" value="确定" id="submit-1" />
            </form>
			</div>

		</div>

	</div>
	<div class="wenhua">
		<div class="wenhua1">
			<div class="t">
				<img src="<%=basePath%>img/baixingtong.png" alt="#" class="i" />
				<p class="p">关注永恒家谱网</p>
			</div>

			<div class="t1">
				<img src="<%=basePath%>img/baixingtong1.png" alt="#" class="i1" />
				<p class="p1">加入家文化传承</p>
			</div>

			<div class="t2">
				<img src="<%=basePath%>img/baixingtong2.png" alt="#" class="i2" />
				<p class="p2">了解更多家文化</p>
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
<script src="<%=basePath%>Js/register.js"></script>
</html>