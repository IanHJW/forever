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
	<title>论坛</title>
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>Js/run.js"></script>
    <script type="text/javascript" src="<%=basePath%>Js/canvas-particle.js"></script>

    <link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Css/UserBbs.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    function like(postId,that){
 	   $.ajax({ 
 		    type: "post", 	
 			url:"${pageContext.request.contextPath}/UserFamily/like.action" ,
 			data: {
 				'postId':postId
 			} ,
 			dataType: "text",
 			success: function(data){
 				if(data=="add"){
 					console.log(that);
 					that.children[0].style.color="#FF3030";
 					that.children[1].innerHTML=(parseInt(that.children[1].innerText)+1);
 				}				
 				if(data=="del"){
 					console.log(that);
 					that.children[0].style.color="#ccc";
 					that.children[1].innerHTML=(parseInt(that.children[1].innerText)-1);
 				}		
 			},
 			error: function(data){
 				alert("出现未知错误");
 			} 
 		});
 	   
  	}
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
            <img src="<%=basePath %>img/logo.png" alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

        <div id="daohang" class="col-md-9 col-xs-12">
            <ul id="ul1" class="col-md-11 col-xs-11">
                <li class="col-md-2">
                	<a href="<%=basePath %>User/UserIndex.jsp" class="aa" style="color: #ffffff">首页</a>
                </li>
                <li class="col-md-2">
                	<a href="javascript:viod(0)" class="aa">视频区</a>
                </li>
                <li class="col-md-2">
                	<a href="${pageContext.request.contextPath}/User/forun.action" class="aa">论坛区</a>
                </li>
                <li class="col-md-2">
                	<a href="javascript:viod(0)" onclick="judgment()" class="aa">进入家族</a>
                </li>
                <li class="col-md-2">
	                <a href="${pageContext.request.contextPath}/User/LoginOut.action" 
	                class="aa">退出</a>
                </li>
                <li class="bg bg2"></li>

            </ul>
            <div class="col-md-1 col-xs-2" id="img1">
                <a href="<%=basePath %>/User/UserCenter/UserInfo.jsp">
                	<img src="/pic/${user.user.userimgpath}"
                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="head"/>
                </a>
            </div>

        </div>

    </div>

    <div class="z">
        <div class="x"></div>
        <div id="line" class="y"></div>
        <div class="x"></div>
    </div>
</div>
<div class="middle" id="middle">
    <div class="middle1">
        <div class="left">
            <div class="title">永痕论坛</div>
            <c:forEach items="${sessionScope.bbs}" var="bbs">
            <div class="forum">
                <div class="header">
                    <img src="/pic/${bbs.userimgpath }" alt=""/>
                    <a href="PersonalCenterFamily1.html"><p>${bbs.username }</p></a>
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
                    <a href="javascript:void(0)"  id="number"   onclick="like(${bbs.postid},this)" >
			        <!-- 判断是否点赞 -->
				        <c:choose>
				        	<c:when test="${bbs.judgment ==1}">
					        	<span class="glyphicon glyphicon-heart icon-2" aria-hidden="true" id="zan"  style="color: #ff3030"></span>
					        </c:when>
					        <c:otherwise>
					        	<span class="glyphicon glyphicon-heart icon-2" aria-hidden="true" id="zan"  style="color: #ccc"></span>
					        </c:otherwise>
					    </c:choose>
					        <span class="icon21">${bbs.agreenumber }</span>
			        </a>
                    <div class="laud-left"></div>
                    <a href="javascript:void(0)" onclick="tiao(${bbs.postid})" >
                    <span class="glyphicon glyphicon-comment icon-3" aria-hidden="true"></span>
                    <div class="laud-left2"><a href=""></a></div>
                </div>
            </div>
            </c:forEach>
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