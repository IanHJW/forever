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
<title>Insert title here</title>
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>

	<link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Css/UserFamily/BbsRight.css" rel="stylesheet" type="text/css" />
    
   <script>

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
   function tiao(postId){
	   $.ajax({ 
		    type: "post", 	
			url:"${pageContext.request.contextPath}/UserFamily/findOnepost.action" ,
			data: {
				'postId':postId
			} ,
			dataType: "text",
			success: function(data){
				if(data=="success"){
					window.parent.location.href="<%=basePath%>User/UserFamily/UserFamilyPeople.jsp"
				}				
			},
			error: function(data){
				alert("出现未知错误");
			} 
		});	   
   } 
   </script>
    
</head>
<body>
	<c:forEach items="${sessionScope.bbs}" var="bbs">
		<div class="forum">
		    <div class="header">
		        <img src="/pic/${bbs.userimgpath}" alt=""/>
		        <a href="PersonalCenterFamily1.html"><p>${bbs.username}</p></a>
		        <span class="jiazu">标题：${bbs.postname }</span>
		        <span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span>
		        <span class="time-left"><fmt:formatDate value="${bbs.posttime}" pattern="yyyy-MM-dd" /></span>
		    </div>		    
		    <div class="forumText">
		        ${bbs.postdetail }
		    </div>
		   
		    <!-- <div class="forumImg">
		        <div class="forumImg-img"></div>
		        <div class="forumImg-img"></div>
		        <div class="forumImg-img"></div>
		    </div> -->
		    
		    <div class="bottom-right"  >
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
		        <div class="laud-left">
		   		
		        </div>
		        <a href="javascript:void(0)" onclick="tiao(${bbs.postid})" >
		        <span class="glyphicon glyphicon-comment icon-3" aria-hidden="true"></span>
		        </a>
		        <div class="laud-left2"><a href="">120</a></div>
		    </div>    
		</div>
     </c:forEach>


</body>
</html>