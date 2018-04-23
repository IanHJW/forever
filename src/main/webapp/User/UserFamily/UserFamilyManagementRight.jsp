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
	
    <link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Css/UserFamily/UserFamilyManagementRight.css" rel="stylesheet" type="text/css" />
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
 	 <div class="right">
         <div class="title"><span>管理成员</span></div>
         <div class="input-group">
             <input type="text" class="form-control" aria-label="..." placeholder="搜索成员">
             <div class="input-group-btn">
                 <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="caret"></span></button>
                 <ul class="dropdown-menu dropdown-menu-right">
                     <li class="li"><a href="#">管理员</a></li>
                     <li><a href="#">群众</a></li>
                 </ul>
                 <button class="btn btn-default bt" type="button">邀请</button>
             </div>
         </div>
         <div class="chenyuan">
             <div class="people">
                 <img src="<%=basePath %>/img/head.png" alt=""/>
                 <span class="name">黄军武</span>
                 <div class="btn-group">
                     <button type="button"  class="people1 btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        管理者 <span class="caret"></span>
                     </button>
                     <ul class="dropdown-menu dropdown-menu1">
                         <li><a href="#" class="li">管理者</a></li>
                         <li><a href="#">群众</a></li>
                     </ul>
                 </div></div>
             <div class="people">
                
                     <img src="<%=basePath %>/img/head.png" alt=""/>
                     <span class="name">黄军武</span>
                     <div class="btn-group">
                         <button type="button"  class="people1 btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             管理者 <span class="caret"></span>
                         </button>
                         <ul class="dropdown-menu dropdown-menu1">
                             <li><a href="#" class="li">管理者</a></li>
                             <li><a href="#">群众</a></li>
                         </ul>
                     </div></div>
             <div class="people">
        
                     <img src="<%=basePath %>/img/head.png" alt=""/>
                     <span class="name">黄军武</span>
                     <div class="btn-group">
                         <button type="button"  class="people1 btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             管理者 <span class="caret"></span>
                         </button>
                         <ul class="dropdown-menu dropdown-menu1">
                             <li><a href="#" class="li">管理者</a></li>
                             <li><a href="#">群众</a></li>
                         </ul>
                     </div></div>
             
         </div>
         <div class="fenye">
                       <div class="ul">
                           <div class="li">
                              <a href=""><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a></div>
                           <div class="li"><a href="">1</a></div>
                           <div class="li"><a href="">2</a></div>
                           <div class="li"><a href="">3</a></div>
                           <div class="li"><a href="">4</a></div>
                           <div class="li"><a href="">5</a></div>
                           <div class="li">
                              <a href="">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                              </a>
                            </div>
                        </div>
          </div>

     </div>
 </body>
</html>