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
	<title>视频区</title>
	<script src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/run.js"></script>
    <script type="text/javascript" src="<%=basePath %>Js/canvas-particle.js"></script>

    <link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>Css/TouristMainVideo.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wall">
    <div id="top" class="row">
        <div id="img3" class="col-md-3 col-xs-5" >
            <img src="<%=basePath %>img/logo.png" alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

        <div id="daohang" class="col-md-9 col-xs-12">
            <ul id="ul1" class="col-md-11 col-xs-12">
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>index.jsp" class="aa" style="color: #ffffff">首页</a></li>
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>TouristVideo.jsp" class="aa">视频区</a></li>
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>TouristBbs.jsp" class="aa">论坛区</a></li>
                <li class="col-md-2 col-xs-3"><a href="<%=basePath %>HunderdSurnames.jsp" class="aa">百家姓</a></li>
                <li class="bg bg2"></li>

            </ul>
            <div id="login" class="col-md-1">
                <a href="<%=basePath %>Login.jsp" 
                class="lz" id="lz1">登陆</a>
                <div id="line2"></div>
                <a href="<%=basePath %>Register.jsp" 
                class="lz" id="lz2">注册</a>
            </div>
        </div>
    </div>
</div>
<div id="middle">
    <div class="wall1">
        <div class="row1" id="sousuo">
            <div class="col-md-3 col-xs-2"></div>
            <div class="col-md-5 col-xs-7"><input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2"></div>
            <div class="col-md-4 col-xs-3"><button type="submit" class="btn btn-danger">搜索</button></button></div>
            </button>
        </div>

        <div class="m1">
            <div class="nei">

                <a href="#" class="aa">
                    <div class="video1">
                        <div class="fade1"></div>
                        <div class="span1">罗氏家族</div>
                        <div class="m1bottom">罗孟琴家族视频</div>
                        <span class="glyphicon glyphicon-play-circle bo1" aria-hidden="true"></span>
                    </div>
                </a>



                <div class="video2">

                    <a href="#" class="aaa">
                        <div class="video-1">
                            <div class="fade1"></div>
                            <div class="span1">罗氏家族</div>
                            <div class="m2bottom2">罗孟琴家族视频</div>
                            <span class="glyphicon glyphicon-play-circle bo2" aria-hidden="true"></span>
                        </div>
                    </a>

                    <a href="#" class="aaa">
                        <div class="video-1">
                            <div class="fade1"></div>
                            <div class="span1">罗氏家族</div>
                            <div class="m2bottom2">罗孟琴家族视频</div>
                            <span class="glyphicon glyphicon-play-circle bo2" aria-hidden="true"></span>
                        </div>
                    </a>

                    <a href="#" class="aaa">
                        <div class="video-1">

                            <div class="fade1"></div>
                            <div class="span1">罗氏家族</div>
                            <div class="m2bottom2">罗孟琴家族视频</div>
                            <span class="glyphicon glyphicon-play-circle bo2" aria-hidden="true"></span>
                        </div>
                    </a>
                    <a href="#" class="aaa">
                        <div class="video-1">
                            <div class="fade1"></div>
                            <div class="span1">罗氏家族</div>
                            <div class="m2bottom2">罗孟琴家族视频</div>
                            <span class="glyphicon glyphicon-play-circle bo2" aria-hidden="true"></span>
                        </div>
                    </a>
                </div>

            </div>


        </div>
        <div class="m2">

           <div class="nei2">
               <div class="left1">
                   <div class="left1-0">
                      <div class="title1">FEATURED VIDEOS</div>
                          <div class="left1-0-1">
                              <div class="left1-0-2">
                                  <div class="left1-1">
                                      <a href="#" class="a-1">
                                          <div class="video-3">
                                              <div class="fade-1"></div>
                                              <div class="span-1">罗氏家族</div>
                                              <div class="m1-bottom">罗孟琴家族视频</div>
                                              <span class="glyphicon glyphicon-play-circle bo-1" aria-hidden="true"></span>
                                          </div>
                                      </a>
                                      <div class="name1">林伟城发布</div>
                                      <div class="time-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                      <div class="time1">2017-10-26</div>
                                      <div class="laud-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                      <div class="laud1">1,200</div>
                                      <div class="content1">
                                          Aenean feugiat in ante et blandit.Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan.
                                      </div>
                                  </div>
                                  <div class="left1-1">
                                      <a href="#" class="a-1">
                                          <div class="video-3">
                                              <div class="fade-1"></div>
                                              <div class="span-1">罗氏家族</div>
                                              <div class="m1-bottom">罗孟琴家族视频</div>
                                              <span class="glyphicon glyphicon-play-circle bo-1" aria-hidden="true"></span>
                                          </div>
                                      </a>
                                      <div class="name1">林伟城发布</div>
                                      <div class="time-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                      <div class="time1">2017-10-26</div>
                                      <div class="laud-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                      <div class="laud1">1,200</div>
                                      <div class="content1">
                                          Aenean feugiat in ante et blandit.Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan.
                                      </div>
                                  </div>
                              </div>
                          </div>

                   </div>
                   <div class="left2-0">
                       <div class="left1-3">
                           <div class="left1-3-1">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                           <div class="left1-3-1">
                                   <a href="#" class="a-3">
                                       <div class="video-3-3">
                                           <div class="fade-3"></div>
                                           <div class="span-3">罗氏家族</div>
                                           <div class="m3-bottom">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2">林伟城发布</div>
                                   <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2">2017-10-26</div>
                                   <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2">1,200</div>
                               </div>
                           <div class="left1-3-1">
                                   <a href="#" class="a-3">
                                       <div class="video-3-3">
                                           <div class="fade-3"></div>
                                           <div class="span-3">罗氏家族</div>
                                           <div class="m3-bottom">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2">林伟城发布</div>
                                   <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2">2017-10-26</div>
                                   <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2">1,200</div>
                               </div>
                           <div class="left1-3-1">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                           <div class="left1-3-1">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                           <div class="left1-3-1">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                       </div>
                   </div>

                   <div class="left2-1">
                       <div class="title1">RANDOM VIDEOS</div>

                           <div class="left2-1-0">
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                           </div>

                   </div>

                   <div class="left2-2">
                       <div class="title1">Hot VIDEOS</div>
                          <div class="left2-2-2">
                           <a href="#" class="a-1">
                               <div class="video-3">
                                   <div class="fade-1"></div>
                                   <div class="span-1">罗氏家族</div>
                                   <div class="m1-bottom">罗孟琴家族视频</div>
                                   <span class="glyphicon glyphicon-play-circle bo-1" aria-hidden="true"></span>
                               </div>
                           </a>
                           <div class="name1">林伟城发布</div>
                           <div class="time-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                           <div class="time1">2017-10-26</div>
                           <div class="laud-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                           <div class="laud1">1,200</div>
                           <div class="content1">
                               Aenean feugiat in ante et blandit.Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan.
                           </div>
                       </div>
                       <div class="left2-2-3">
                           <div class="left1-3-2">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                           <div class="left1-3-2">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                           <div class="left1-3-2">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                           <div class="left1-3-2">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                       </div>
                   </div>
                   <div class="left2-3">
                       <div class="title1">RANDOM VIDEOS</div>
                       <div class="left2-2-1">
                           <div class="left2-2-0">
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                               <div class="left2-1-0-1">
                                   <a href="#" class="a-2-1">
                                       <div class="video-3-1">
                                           <div class="fade-2-1"></div>
                                           <div class="span-2-1">罗氏家族</div>
                                           <div class="m2-bottom-1">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo2-2" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2-1">林伟城发布</div>
                                   <div class="time-icon-1"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2-1">2017-10-26</div>
                                   <div class="laud-icon-1"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2-1">1,200</div>
                               </div>
                           </div>
                       </div>
                   </div>

               </div>
               <div class="right1">
                   <div class="right1-2-1">家谱图</div>
                   <div class="right1-1"></div>
                   <div class="right1-2">
                      <div class="right1-2-1">姓氏</div>
                      <div class="right1-2-2">
                          <ul class="right1-2-2-0">
                              <li class="right1-2-2-1">罗氏，</li>
                              <li class="right1-2-2-1">刘氏，</li>
                              <li class="right1-2-2-1">张氏，</li>
                              <li class="right1-2-2-1">王氏，</li>
                              <li class="right1-2-2-1">林氏，</li>
                              <li class="right1-2-2-1">罗氏，</li>
                              <li class="right1-2-2-1">刘氏，</li>
                              <li class="right1-2-2-1">张氏，</li>
                              <li class="right1-2-2-1">王氏，</li>
                              <li class="right1-2-2-1">林氏，</li>
                              <li class="right1-2-2-1">林氏，</li>
                              <li class="right1-2-2-1">罗氏，</li>
                              <li class="right1-2-2-1">刘氏，</li>
                              <li class="right1-2-2-1">张氏，</li>
                              <li class="right1-2-2-1">王氏，</li>
                              <li class="right1-2-2-1">黄氏.</li>
                          </ul>
                      </div>
                   </div>
                   <div class="right1-3">
                       <div class="right1-2-1">Category</div>
                       <div class="left3-3">
                           <div class="left1-3-1">
                               <a href="#" class="a-3">
                                   <div class="video-3-3">
                                       <div class="fade-3"></div>
                                       <div class="span-3">罗氏家族</div>
                                       <div class="m3-bottom">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2">林伟城发布</div>
                               <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2">2017-10-26</div>
                               <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2">1,200</div>
                           </div>
                           <div>
                               <div class="left1-3-1">
                                   <a href="#" class="a-3">
                                       <div class="video-3-3">
                                           <div class="fade-3"></div>
                                           <div class="span-3">罗氏家族</div>
                                           <div class="m3-bottom">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2">林伟城发布</div>
                                   <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2">2017-10-26</div>
                                   <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2">1,200</div>
                               </div>
                           </div>
                           <div>
                               <div class="left1-3-1">
                                   <a href="#" class="a-3">
                                       <div class="video-3-3">
                                           <div class="fade-3"></div>
                                           <div class="span-3">罗氏家族</div>
                                           <div class="m3-bottom">罗孟琴家族视频</div>
                                           <span class="glyphicon glyphicon-play-circle bo-3" aria-hidden="true"></span>
                                       </div>
                                   </a>
                                   <div class="name2">林伟城发布</div>
                                   <div class="time2-icon"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                                   <div class="time2">2017-10-26</div>
                                   <div class="laud2-icon"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                                   <div class="laud2">1,200</div>
                               </div>
                           </div>

                       </div>
                   </div>
                   <div class="right1-4">
                       <div class="right1-2-1">Top News</div>
                       <div class="right1-4-1">
                           <div class="right1-4-1-1">
                               <a href="#" class="a-2-right">
                                   <div class="video-3-right">
                                       <div class="fade-2-right"></div>
                                       <div class="span-2-right">罗氏家族</div>
                                       <div class="m2-bottom-right">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo2-right" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2-right">林伟城发布</div>
                               <div class="time-icon-right"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2-right">2017-10-26</div>
                               <div class="laud-icon-right"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2-right">1,200</div>
                           </div>
                           <div class="right1-4-1-1">
                               <a href="#" class="a-2-right">
                                   <div class="video-3-right">
                                       <div class="fade-2-right"></div>
                                       <div class="span-2-right">罗氏家族</div>
                                       <div class="m2-bottom-right">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo2-right" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2-right">林伟城发布</div>
                               <div class="time-icon-right"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2-right">2017-10-26</div>
                               <div class="laud-icon-right"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2-right">1,200</div>
                           </div>



                           <div class="right1-4-1-1">
                               <a href="#" class="a-2-right">
                                   <div class="video-3-right">
                                       <div class="fade-2-right"></div>
                                       <div class="span-2-right">罗氏家族</div>
                                       <div class="m2-bottom-right">罗孟琴家族视频</div>
                                       <span class="glyphicon glyphicon-play-circle bo2-right" aria-hidden="true"></span>
                                   </div>
                               </a>
                               <div class="name2-right">林伟城发布</div>
                               <div class="time-icon-right"><span class="glyphicon glyphicon-time icon-1" aria-hidden="true"></span></div>
                               <div class="time2-right">2017-10-26</div>
                               <div class="laud-icon-right"><span class="glyphicon glyphicon-heart icon-2" aria-hidden="true"></span></div>
                               <div class="laud2-right">1,200</div>
                           </div>
                       </div>
                   </div>
                   <div class="right1-5">
                       <div class="right1-2-1">Comment</div>
                       <div class="right5-1"></div>
                   </div>
               </div>

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