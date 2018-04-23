<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>论坛</title>
	<script src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/run.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/canvas-particle.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/UserFamily/UserFamilyPeople.js"></script>

    <link href="<%=basePath %>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Css/UserFamily/UserFamilyPeople.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
	function submit(){	      
        $.ajax({
            type:'POST',
            url:'${pageContext.request.contextPath}/UserFamily/insertPostOne.action',
            data:{
                'msg':$("#content").val(),
                'postId':$("#postid").val()
            },
            dataType: "text",
            success:function(data){
                if(data=="success"){
                	window.location.href="<%=basePath%>User/UserFamily/UserFamilyPeople.jsp"
                }
                if(data=="error"){
                	alert("你的标题或内容为空请重新输入!");
                }
            }
        });
    }
	</script>
	
</head>
<body>
<div class="wall" id="wall">


    <div id="top" class="row">
        <div id="img3" class="col-md-3 col-xs-5" >
            <img src="<%=basePath %>img/logo.png" alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

        <div id="daohang" class="col-md-9 col-xs-12">
            <ul id="ul1" class="col-md-11 col-xs-11">
               <li class="col-md-2"><a href="<%=basePath %>User/UserIndex.jsp" class="aa">首页</a></li>
					<li class="col-md-2"><a href="" class="aa">视频区</a></li>
					<li class="col-md-2"><a href="" class="aa" style="color: #ffffff">论坛区</a></li>
					<li class="col-md-2">
						<a href="${pageContext.request.contextPath}/UserFamily/userFamily.action"
						 class="aa" id="qwe" >进入家族</a>
					</li>
					<li class="col-md-2">
						<a href="${pageContext.request.contextPath}/User/LoginOut.action" class="aa">退出</a>
					</li>

                <li class="bg bg2"></li>

            </ul>
            <div class="col-md-1 col-xs-2" id="img1">
                 <a href="<%=basePath %>User/UserCenter/UserInfo.jsp">
	                	<img src="/pic/${user.user.userimgpath}"
	                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="head"/>
                	</a>
            </div>

        </div>
    </div>
</div>
<div class="middle">
    <div class="middle1">
        <div class="left">
            <div class="title">论坛详情页</div>
           	 
			 <!-- -显示回复语句 -->
            <c:forEach items="${sessionScope.bbsmsg}" var="bbsmsg">           
            <div class="forum">
                <div class="header">
                    <img src="/pic/${bbsmsg.userimgpath }" alt=""/>
                    <a href="PersonalCenterFamily1.html"><p>${bbsmsg.username}</p></a>
                    <span class="jiazu">${bbsmsg.groupname}</span>
                    <span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span>
                    <span class="time-left"><fmt:formatDate value="${bbsmsg.msgtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
                </div>
                
                <div class="forumText"> ${bbsmsg.msg }</div>

                <!-- 
                <div class="forumImg">
                    <div class="forumImg-img"></div>
                    <div class="forumImg-img"></div>
                </div>                 -->
      
                
              <!--   <div class="bottom-right"  onclick="huifu(this)">收起回复</div> -->
                
                <div class="bottom-right2-1">
                    <%-- <div class="bottom-right2-2">
                    	<c:forEach items="${sessionScope.bbsmsgT}" var="bbsmsgT">
	                        <img src="/pic/${ bbsmsgT.userimgpath}" alt=""/>
	                        <a class="Name">${bbsmsgT.username }</a>
	                        <p>${bbsmsgT.msg }</p>
	                        <span><fmt:formatDate value="${bbsmsgT.msgtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
	                        <hr>
                        </c:forEach>
                    </div>
                    <a class="pinlun" onclick="pinlun(this)"> <div class="pinlun1">我也说一句</div></a>
                    
                    <div class="textare">
                        <form action="">
                            <textarea class="input1" maxlength="144" onkeyup="return ismaxlength(this)" placeholder="最多发表144个字符"></textarea>
                            <input type="submit" class="input2" value="发表"/>
                        </form>
                    </div> --%>
                </div>
          
                          
          </div>
          </c:forEach>
           <!-- 回复 -->
            <div class="content">
               	 <input id="postid" style="display:none" value="${sessionScope.postId}" />            			
			           <textarea type="text" id="content" placeholder="文明发言，禁止非法言论"/></textarea>
			           <button type="submit"  onclick="submit()">发布</button>
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
<div class="bottom1">
    <div class="bottom2">
        <p>京ICP备12008860号-1   广电节目制作许可证：1313号    京公网安备 11010502001653号</p>
        <p>Copyright © 2005 - 2017 Lotour.com   乐途旅游网 版权所有  严重违规失信举报电话：010-65896261</p>
    </div>
</div>
</body>
</html>