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
	<title>家族管理</title>        
	
	<script type="text/javascript" src="<%=basePath%>Js/run.js"></script>
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Js/canvas-particle.js"></script>
	<script type="text/javascript" src="<%=basePath%>Js/UserFamily/UserFamilyManagement.js"></script>
	
	<link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>Css/UserFamily/UserFamilyManagement.css" rel="stylesheet" type="text/css" />
	
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
    <div id="top" class="row">
        <div id="img3" class="col-md-3 col-xs-5" >
            <img src="<%=basePath %>/img/logo.png" alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

        <div id="daohang" class="col-md-9 col-xs-12">
            <ul id="ul1" class="col-md-11 col-xs-11">
					<li class="col-md-2"><a href="<%=basePath %>User/UserIndex.jsp" class="aa">首页</a></li>
					<li class="col-md-2"><a href="javascript:viod(0)" class="aa">视频区</a></li>
					<li class="col-md-2">
						<a href="${pageContext.request.contextPath}/User/forun.action" class="aa">论坛区</a>
					</li>
					<li class="col-md-2">
						<a href="javascript:viod(0)" onclick="judgment()" class="aa">进入家族</a>
					</li>
					<li class="col-md-2"><a href="${pageContext.request.contextPath}/User/LoginOut.action" class="aa">退出</a></li>
					<li class="bg2"></li>

				</ul>
            <div class="col-md-1 col-xs-2" id="img1">
                 <a href="${pageContext.request.contextPath}/User/userInfo.jsp">
	                	<img src="/pic/${sessionScope.user.user.userimgpath }"
	                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="head"/>
                  </a>
            </div>

        </div>

    </div>
    <div class="daohang2" class=" col-md-12 col-xs-12">
        <ul id="ul2" class="col-md-12 col-xs-12">
				<li class="col-md-2"><a href="javascript:viod(0)" class="aa">我的族谱</a></li>
				<li class="col-md-2">
						<a href="<%=basePath %>User/UserFamily/EditGroup.jsp" class="aa asd"  id="sdff">族谱制作</a>
				</li>
				<li class="col-md-2">
					<a href="<%=basePath %>User/UserFamilyVedio/UserFamilyVedio.jsp"  class="aa">家族视频</a>
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
           <div class="left">
               <iframe id="rframe" name="rframe" marginheight="15" scrolling="no"  
	               marginwidth="15" frameborder="no" border="0" 
	               src="<%=basePath %>User/UserFamily/UserFamilyManagementLeft.jsp">
               </iframe>
           </div>
           <div class="right">
               <iframe id="lframe" name="lframe" 
	               src="<%=basePath %>User/UserFamily/UserFamilyManagementRight.jsp"
	               allowtransparency="yes"  frameborder="no"
	               border="0"  height="600"  scrolling="no">
               </iframe>
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