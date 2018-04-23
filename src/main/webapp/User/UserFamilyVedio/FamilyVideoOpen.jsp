<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>视频播放</title>        
    
    <script type="text/javascript" src="<%=basePath %>Js/run.js"></script>
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Js/canvas-particle.js"></script>
	<script src="http://html5media.googlecode.com/svn/trunk/src/html5media.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Js/UserFamilyVedio/FamilyVideoOpen.js"></script>
	
	<link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css"	rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css"	rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Css/UserFamilyVedio/FamilyVideoOpen.css" rel="stylesheet" type="text/css" />
    
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
<nav class="navbar navbar-default" id="daohang1">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="<%=basePath %>img/logo.png" alt="" id="im" class="col-md-4 col-xs-8"/>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                <li class="d"><a href="#">视频区</a></li>
                <li class="d"><a href="#">讨论区</a></li>
                <li class="d"><a href="#">进入家族</a></li>
                <li class="d"><a href="#">退出</a></li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<nav class="navbar navbar-default" id="daohang3">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">我的族谱<span class="sr-only">(current)</span></a></li>
                <li class="d"><a href="#">族谱制作</a></li>
                <li class="d"><a href="#">家族视屏</a></li>
                <li class="d"><a href="#">家族论坛</a></li>
                <li class="d"><a href="#">家族管理</a></li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="wall">
    <div id="top" class="row">
        <div id="img3" class="col-md-3 col-xs-5" >
            <img src="<%=basePath %>img/logo.png" alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

        <div id="daohang" class="col-md-9 col-xs-12">
            <ul id="ul1" class="col-md-11 col-xs-11">
                <li class="col-md-2"><a href="" class="aa" style="color: #ffffff">首页</a></li>
                <li class="col-md-2"><a href="" class="aa">视频区</a></li>
                <li class="col-md-2"><a href="" class="aa">论坛区</a></li>
                <li class="col-md-2"><a href="" class="aa">进入家族</a></li>
                <li class="col-md-2"><a href="" class="aa">退出</a></li>

                <li class="bg bg2"></li>

            </ul>
            <div class="col-md-1 col-xs-2" id="img1">
                <a href="<%=basePath %>User/UserCenter/UserInfo.jsp">
                	<img src="/pic/${sessionScope.user.user.userimgpath}"
                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="head"/>
                </a>
            </div>

        </div>

    </div>
    <div class="daohang2" class="col-md-12 col-xs-12">
        <ul id="ul2" class="col-md-12 col-xs-12">
            <li class="col-md-2"><a href="" class="aa" style="color: #ffffff">我的族谱</a></li>
            <li class="col-md-2">
            		<a href="<%=basePath %>User/UserFamily/EditGroup.jsp" class="aa">族谱制作</a>
            </li>
            <li class="col-md-2">
            		<a href="<%=basePath %>User/UserFamilyVedio/UserFamilyVedio.jsp" class="aa">家族视频</a>
            </li>
            <li class="col-md-2">
					<a href="<%=basePath %>User/UserFamily/UserFamilyBbs.jsp" class="aa">家族论坛</a>
			</li>
            <li class="col-md-2">
            		<a href="<%=basePath %>User/UserFamily/UserFamilyManagement.jsp" class="aa">家族管理</a>
            </li>

            <li class="bg"></li>

        </ul>


    </div>
    <div class="line"></div>
</div>
<div class="middle">
    <div class="middle1">
        <video id="my-video" class="video-js" buffered poster controls preload="auto" width="1200" height="600">
            <source src="/pic/${param.adress }" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'></source>
        </video>
    </div>
</div>
<div class="bottom">
    <div class="bottom1">
        <p>京ICP备12008860号-1   广电节目制作许可证：1313号    京公网安备 11010502001653号</p>
        <p>Copyright © 2005 - 2017 Lotour.com   乐途旅游网 版权所有  严重违规失信举报电话：010-65896261</p>
    </div>
</div>
</body>
</html>