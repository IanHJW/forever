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
	<title>Insert title here</title>
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
	<link href="<%=basePath %>Css/UserFamily/UserfamilyPublication.css" rel="stylesheet" type="text/css"  />
	
</head>

<body>
	<div class="title"><span>标题：</span><input type="text" id="nm"/></div>
<!-- 加载编辑器的容器 -->
 <div class="content"><span>内容：</span>
           <textarea class="textarea" id="container"></textarea>
 </div>
   <div class="tj" onclick="register1()">提交</div>

<script type="text/javascript">
    function register1(){
      
        $.ajax({
            type:'POST',
            url:'${pageContext.request.contextPath}/UserFamily/InsertTopic.action',
            data:{
                'postname':$("#nm").val(),
                'postdetail':$("#container").val()
            },
            dataType: "text",
            success:function(data){
                if(data=="success"){
                	window.location.href="<%=basePath%>User/UserFamily/UserFamilyBbsRight.jsp"
                }
                if(data=="error"){
                	alert("你的标题或内容为空请重新输入！");
                }
            }
        });
    }
</script>
</body>
</html>