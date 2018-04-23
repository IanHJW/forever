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
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Css/UserCenter/UserCenterMenu.css" rel="stylesheet" type="text/css"/>
    <title>??</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
 </head>
 <body>
<div id="left">
    <div id="im"><img src="<%=basePath%>img/head.png" alt="" id="img2"/></div>

    <div id="p">
        <p>张三丰</p>
        <p id="zhanghao">757619022@qq.com</p>
    </div>
    <div id="line3"></div>
    <div id="left2">
        <ul id="ul1">
            <li><a href="<%=basePath%>User/UserCenter/UserInfo.jsp" target="lframe" class="aa" id="first">个人资料</a></li>
            <li><a href="<%=basePath%>User/UserCenter/UserInfoModify.jsp" target="lframe" class="aa">信息修改</a></li>
            <li><a href="<%=basePath%>User/UserCenter/UserInfoSafe.jsp" target="lframe" class="aa">安全设置</a></li>
            <li><a href="PersonalCenterFamily1.html" target="lframe" class="aa">家族成员</a></li>
        </ul>
    </div>
</div>
</body>
</html>
<script src="<%=basePath%>Js/UserCenter/UserCenterMenu.js">
</script>