<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>论坛区</title>
	<script src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/run.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/canvas-particle.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/TouristBbs.js"></script>
    
    <link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>Css/TouristBbs.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<nav class="navbar navbar-default" id="daohang1">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="<%=basePath %>img/logo.png" alt="" id="im" class="col-md-4 col-xs-8"/>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                <li class="d"><a href="#">视频区</a></li>
                <li class="d"><a href="#">讨论区</a></li>
                <li class="d"><a href="#">百家姓</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登陆/注册 <span class="caret"></span></a>
                    <ul class="dropdown-menu d">
                        <li class="d"><a href="#">登陆</a></li>
                        <li class="d"><a href="#">注册</a></li>
                    </ul>
                </li>

            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="wall" id="wall">


    <div id="top" class="row">
        <div id="img3" class="col-md-3 col-xs-5" >
            <img src="<%=basePath %>img/logo.png" alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

        <div id="daohang" class="col-md-9 col-xs-12">
            <ul id="ul1" class="col-md-11 col-xs-12">
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>index.jsp" class="aa" style="color: #ffffff">首页</a></li>
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>TouristVideo.jsp" class="aa">视频区</a></li>
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>TouristBbs.jsp" class="aa">论坛区</a></li>
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>HunderdSurnames.jsp" class="aa">百家姓</a></li>
                <li class="bg bg2"></li>

            </ul>
            <div id="login" class="col-md-1">
                <a href="<%=basePath %>Login.jsp" 
                class="lz" id="lz1">登陆</a>
                <div id="line2"></div>
                <a href="<%=basePath %>Register.jsp" 
                class="lz" id="lz2">注册</a>
            </div>
        </div>
    </div>
</div>
<div class="middle" id="middle">
    <div class="middle1">
        <div class="left">
            <div class="title">永痕论坛</div>
	            <c:forEach items="${sessionScope.bbs}" var="bbs">
		            <div class="forum">
		                <div class="header">
		                    <img src="<%=basePath %>img/halou.png" alt=""/>
		                    <a href="PersonalCenterFamily1.html"><p>${bbs.username}</p></a>
		                    <span class="jiazu">${bbs.groupname }</span>
		                    <span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span>
		                    <span class="time-left"><fmt:formatDate value="${bbs.posttime}" pattern="yyyy-MM-dd" /></span>
		
		                </div>
		                <div class="forumText">
		                   ${bbs.postdetail }
		                </div>
		                <div class="forumImg">
		                    <div class="forumImg-img"></div>
		                    <div class="forumImg-img"></div>
		                    <div class="forumImg-img"></div>
		                </div>
		                <div class="bottom-right">
		                    <span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span>
		                    <div class="laud-left"><a href="">1,200</a></div>
		                    <span class="glyphicon glyphicon-comment icon-3" aria-hidden="true"></span>
		                    <div class="laud-left2"><a href="">120</a></div>
		                </div>
		            </div>
				</c:forEach>           
            </div>
        </div>
        <div class="right">
            <div class="right1">
                <div class="right1-1"><p>论坛热议榜</p></div>
                <div class="right1-2"><span class="span1">1</span><p>刘氏家族最新发表</p> <span class="span2">1250</span></div>
                <div class="right1-2"><span class="span1">1</span><p>刘氏家族最新发表</p> <span class="span2">1250</span></div>
                <div class="right1-2"><span class="span1">1</span><p>刘氏家族最新发表</p> <span class="span2">1250</span></div>
            </div>
            <div class="right2">
                <div class="right2-1"><p>姓氏论坛区</p></div>

                <div class="right2-2"><span class="span1">1</span><p>刘氏家族最新发表</p> <span class="span2">1250</span></div>
                <div class="right2-2"><span class="span1">1</span><p>刘氏家族最新发表</p> <span class="span2">1250</span></div>
                <div class="right2-2"><span class="span1">1</span><p>刘氏家族最新发表</p> <span class="span2">1250</span></div>
            </div>
            <a href="#middle"><div class="right3-1"><span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span></div></a>
        </div>

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