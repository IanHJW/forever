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
    <title>title</title>        
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Bootstrap/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="<%=basePath%>Js/UserFamily/UserFamilyManagementLeft.js"></script>
    
    <link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Css/UserFamily/UserFamilyManagementLeft.css" rel="stylesheet" type="text/css" />
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
 <div id="left">
    <div id="im"><img src="/pic/${sessionScope.user.user.userimgpath }" alt="" id="img2"/></div>

    <div id="p">
        <p>${sessionScope.user.user.username }</p>
        <p id="zhanghao">${sessionScope.user.user.email }</p>
    </div>
    <div id="line3"></div>
    <div id="left2">
        <ul id="ul1">
            <li><a href="PersonalCenterInformation.html" target="lframe" class="aa" id="first">权限管理</a></li>
            <li><a href="PersonalCenterRevise.html" target="lframe" class="aa">族谱管理</a></li>
        </ul>
    </div>
</div>
 </body>
</html>