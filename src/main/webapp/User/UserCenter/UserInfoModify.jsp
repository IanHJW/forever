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
    <script type="text/javascript" src="<%=basePath%>Js/UserCenter/UserInfo.js"></script>
    <script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
    <link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Css/UserCenter/UserInfoModify.css" rel="stylesheet" type="text/css" />
    <title>信息修改</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <script type="text/javascript">
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
			},
			error: function(data){
				alert("你还没有加入家族");
			} 
		});
	}
	
	
  </script>
 </head>
 <body>
<nav class="navbar navbar-default" id="daohang1">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="<%=basePath %>/img/logo.png"
            onerror="javascript:this.src='<%=basePath %>img/head.png'" alt="" id="im" class="col-md-4 col-xs-8"/>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                <li class="d"><a href="#">视频区</a></li>
                <li class="d"><a href="#">讨论区</a></li>
                <li class="d"><a href="#">进入家族</a></li>
                <li class="d"><a href="${pageContext.request.contextPath}/User/LoginOut.action">退出</a></li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="wall">
    <div id="top" class="row">
        <div id="img3" class="col-md-3 col-xs-5" >
            <img src="<%=basePath %>/img/logo.png"
			alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

        <div id="daohang" class="col-md-9 col-xs-12">
            <ul id="ul1" class="col-md-11 col-xs-11">
                <li class="col-md-2">
	                <a href="<%=basePath %>User/UserIndex.jsp" 
	                class="aa" style="color: #ffffff">首页</a>
                </li>
                <li class="col-md-2"><a href="" class="aa">视频区</a></li>
                <li class="col-md-2"><a href="" class="aa">论坛区</a></li>
                <li class="col-md-2"><a onclick="judgment()" class="aa">进入家族</a></li>
                <li class="col-md-2"><a href="${pageContext.request.contextPath}/User/LoginOut.action" class="aa">退出</a></li>

                <li class="bg bg2"></li>

            </ul>
            <div class="col-md-1 col-xs-2" id="img1">
                <a href="<%=basePath %>User/UserInfo.jsp">
                	<img src="/pic/${user.user.userimgpath}"
                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="head"/>
                </a>
            </div>

        </div>

    </div>
</div>
<div  class="middle">
    <div class="middle1">
        <div id="left1" class="col-md-6 col-xs-4">
                <div id="left">
                    <div id="im1">
                    <img src="/pic/${user.user.userimgpath}" 
                    onerror="javascript:this.src='<%=basePath %>img/head.png'"alt="" id="img2"/></div>

                    <div id="p">
                        <p>${user.user.username}</p>
                        <p id="zhanghao">${user.user.email}</p>
                    </div>
                    <div id="line3"></div>
                    <div id="left2">
                        <ul id="ul2">
                            <li><a href="<%=basePath %>User/UserCenter/UserInfo.jsp"
                              class="aa" >个人资料</a></li>
                            <li><a href="<%=basePath %>User/UserCenter/UserInfoModify.jsp" 
                              class="aa" style="color: red">信息修改</a></li>
                            <li><a href="<%=basePath %>User/UserCenter/UserInfoSafe.jsp"  
                            class="aa">安全设置</a></li>
                            <li><a href="PersonalCenterFamily1.html" target="lframe" class="aa">家族成员</a></li>
                        </ul>
                    </div>
                </div>
        </div>

        <div id="right1" class="col-md-6 col-xs-8">
            
            <div id="right">
                <form action="${pageContext.request.contextPath}/User/userInfoCostom.action" 
                    method="post" enctype="multipart/form-data">
                <table width="350" border="0" height="449">
                    <tr style="height: 50px">              
                        <td width="140">你的头像: </td>
                        <td width="210">
                            <input name="userId" type="text"  value="${user.userid }" 	hidden="true"/>
                            <img src="/pic/${user.user.userimgpath}"
                                onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" id="head2"/>
                            <label for="label"><div class="sc">上传头像</div></label>
                            <input type="file" name="file" multiple="multiple" id="label" style="display: none;"/>
                        </td>
                    </tr>
                    <tr>
                        <td>你的姓名：</td>
                        <td>
                            <input type="text" class="form-control"  id="username" name="user.username" placeholder="${user.user.username}"/>
                        	<p>${error }</p>
                        </td>
                    </tr>
                    <tr>
                        <td>你的爱好：</td>
                        <td>
                            <input type="text" class="form-control" id="userhobby" name="userhobby" placeholder="${user.userhobby}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>你的学历：</td>
                        <td>
                        	<select name="education" id="select" edu="${user.education }">
                        		<option  value="小学">小学</option>
                        		<option value="初中">初中</option>
                        		<option value="高中">高中</option>
                        		<option value="专科">专科</option>
                        		<option value="本科">本科</option>
                        		<option value="硕士">硕士</option>
                        		<option value="博士">博士</option>
                        		<option value="博士后">博士后</option>
                        	</select>                           
                        </td>
                    </tr>
                    <tr>
                        <td class="td" >你的个人所在地：</td>
                        <td>
                            <textarea class="form-control" rows="3" id="adress" name="adress" placeholder="${user.adress}"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td>
                            <select name="sex">
                            	<option value="1">男</option>
                            	<option value="0">女</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" id="button"   value="确认修改"/></td>                        
                    </tr>
                </table>
              </form>
            </div>
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