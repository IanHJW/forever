<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/UserFamily/UserFamilyBbsLeft.js"></script> 

    <link href="<%=basePath %>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Css/UserFamily/BbsLeft.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="left">
    <div id="im">
    	<img src="/pic/${user.user.userimgpath}"
	                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="img2"/>
    </div>

    <div id="p">
        <p id="zhanghao">${user.user.groupname}</p>
    </div>
    <div id="line3"></div>
    <div id="left2">
        <ul id="ul1">
            <li>
	            <div class="dd">
		            <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>&nbsp
		            <a href="<%=basePath %>User/UserFamily/UserFamilyBbsRight.jsp" target="lframe" class="aa" id="first">论坛</a>
	            </div>
            </li>
            <li>
	            <div class="dd">
		            <span class="glyphicon glyphicon-file" aria-hidden="true"></span>&nbsp
		            <a href="#" target="lframe" class="aa">家族投票</a>
	            </div>
            </li>
            <li>
	            <div class="dd">
		            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>&nbsp
		            <a href="#" target="lframe" class="aa">喜欢的话题</a>
	            </div>
            </li>
            <li>
	            <div class="dd">
		            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp
		            <a href="<%=basePath %>User/UserFamily/UserfamilyPublication.jsp" target="lframe" class="aa">编辑话题</a>
	            </div>
            </li>
        </ul>
    </div>
</div>
</body>
</html>