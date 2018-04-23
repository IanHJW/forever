// JavaScript Document
$(document).ready(function(){
        // 这初始化容器中指定的元素，在这种情况下，旋转木马.
        $("#carousel1").CloudCarousel({
            xPos:450,
            yPos:110,
            buttonLeft: $('#but1'),
            buttonRight: $('#but2'),
            altBox: $("#alt-text"),
            titleBox: $("#title-text"),
            FPS:30,
            reflHeight:86,
            reflGap:2,
            yRadius:40,
            autoRotateDelay: 1200,
            speed:0.2,
            mouseWheel:true,
            bringToFront:true
        });
    });
  document.title = document.documentElement.clientWidth;
    window.onload = function(){
        /*        var winWidth = null;
         if (window.innerWidth)
         winWidth = window.innerWidth;
         else if ((document.body) && (document.body.clientWidth))
         winWidth = document.body.clientWidth;
         if(winWidth<=860){
         var ul = document.getElementById('ul2');
         var li = ul.getElementsByTagName('li');
         for(var i=0;i<li.length;i++){
         li[i].style.top = 40*(i+1)+'px';
         }
         for(var i=0;i<li.length;i++){
         li[i].style.position = 'absolute';
         // li[i].style.height = 40 + 'px'
         }
         for(var i=0;i<li.length;i++){

         ul.onclick= function(){
         //alert(li.length)
         startmove(li[i],{height:40})

         }
         }


         }*/
      var config = {
            vx: 4,
            vy:  4,
            height: 2,
            width: 2,
            count: 100,
            color: "121, 162, 185",
            stroke: "100,200,180",
            dist: 6000,
            e_dist: 20000,
            max_conn: 10
        }
        CanvasParticle(config);
        //alert(document.documentElement.clientWidth)


        if (window.innerWidth)
            winWidth = window.innerWidth;

        else if ((document.body) && (document.body.clientWidth))
            winWidth = document.body.clientWidth;
        if(winWidth>=860){

            function  asd(){
                var a1 = document.getElementsByClassName('a');
                a1[0].style.right =70 + 'px';
                a1[1].style.left = 70 + 'px';
                var aw0 = Math.round((a1[0].clientWidth)*945/916);
                var aw1 = a1[0].clientWidth+20;
                var aw2 = Math.round((a1[1].clientWidth)*945/916);
                var aw3 = a1[1].scrollWidth+20;
                for(var i=0;i<a1.length;i++){
                    a1[i].style.position = 'absolute';
                }
                var zIndex = 1;
                a1[0].onmousemove = function(){
                    this.style.zIndex = zIndex++;
                    startMove(this,{width:aw1,height:56,right:60,marginTop:-3,lineHeight:53,fontSize:17})
                }
                a1[0].onmouseout = function(){
                    startMove(this,{width:aw0,height:50,right:70,marginTop:0,lineHeight:50,fontSize:15})

                }
                a1[1].onmousemove = function(){
                    this.style.zIndex = zIndex++;
                    startMove(this,{width:aw3,height:56,left:60,marginTop:-3,lineHeight:53,fontSize:17})

                }
                a1[1].onmouseout = function(){
                    startMove(this,{width:aw2,height:50,left:70,marginTop:0,lineHeight:50,fontSize:15})

                }

            }//按钮
            asd();
        }


        var ul = document.getElementById('ul1');
        var li = ul.getElementsByTagName('li');
        var bg = li[li.length-1];
        var head = document.getElementById('head');
        var child = li[0].firstChild;
        var litter = document.documentElement.clientWidth
        // var line = document.getElementById('line');


        //  alert(document.documentElement.clientWidth)1366 1920



        //bg.style.left = (li[0].offsetWidth-bg.offsetWidth)/2 + li[0].offsetLeft + 'px';
        //alert(bg.offsetLeft)
        var bgleft = bg.offsetLeft;
        //alert(bg.offsetLeft)39
        for(var i=0;i<li.length-1;i++){
            if(i==0){
                continue;
            }
            li[i].onmousemove = function(){
                //  alert(this.offsetLeft)
                child.style.color = 'rgba(3, 8, 2, 0.52)';
                if(litter<=1366){
                    startmove(bg,this.offsetLeft+(bgleft)/1.7);
                }
                if(litter>1366&&litter<=1920){
                    startmove(bg,this.offsetLeft+(bgleft)/1.77);
                }

            }
            li[i].onmouseout = function(){
                child.style.color = 'white';
                if(litter<=1366){
                    startmove(bg,bgleft);
                }
                if(litter>1366&&litter<=1920){
                    startmove(bg,bgleft);
                }
            }
        }

        var speed = 0;
        var left = 0;
        function startmove(obj,iTarget){
            clearInterval(obj.timer);
            obj.timer = setInterval(function(){
                speed += (iTarget-obj.offsetLeft)/5;//速度,（目标点-当前的left）/5
                speed*=0.7;
                // obj.style.left = obj.offsetLeft+speed+'px';
                left+=speed;
                if(Math.abs(speed)<1&&Math.abs(left-iTarget)<1){//判断是否到终点，判断速度和距离
                    obj.style.left = iTarget + 'px';

                    clearInterval(obj.timer)

                }else{
                    obj.style.left = left + 'px'

                }

            },10)
        }

    }
	var myPlayer = videojs('my-video');
            videojs("my-video").ready(function(){
                var myPlayer = this;
                myPlayer.play();
            });