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
    <title>没有bug啦！！！！</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
去你大爷的自动注入失败，没有找到依赖！<br>
去你大爷的自动注入失败，没有找到依赖！！<br>
去你大爷的自动注入失败，没有找到依赖！！！<br>
去你大爷的自动注入失败，没有找到依赖！！！！<br>
去你大爷的自动注入失败，没有找到依赖！！！！！<br>
去你大爷的自动注入失败，没有找到依赖！！！！！！<br>
  ${user.username} 
 </body>
</html>