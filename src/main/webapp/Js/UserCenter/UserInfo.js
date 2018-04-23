    window.onload = function(){
        
//      var config = {
//            vx: 4,
//            vy:  4,
//            height: 2,
//            width: 2,
//            count: 100,
//            color: "121, 162, 185",
//            stroke: "100,200,180",
//            dist: 6000,
//            e_dist: 20000,
//            max_conn: 10
//        }
//        CanvasParticle(config);
        // alert(document.documentElement.clientWidth)
    	

    	

        var ul = document.getElementById('ul1');
        var li = ul.getElementsByTagName('li');
        var bg = li[li.length-1];
        var child = li[0].firstChild;
        var litter = document.documentElement.clientWidth
        var bgleft = bg.offsetLeft;
        for(var i=0;i<li.length-1;i++){
            if(i==0){
                continue;
            }
            li[i].onmousemove = function(){
                child.style.color = 'rgba(3, 8, 2, 0.52)';
                if(litter<=1366){
                    startmove(bg,this.offsetLeft+(bgleft)/1.7);
                }
                if(litter>1366&&litter<=1920){
                    startmove(bg,this.offsetLeft+(bgleft)/1.85);
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
                left+=speed;
                if(Math.abs(speed)<1&&Math.abs(left-iTarget)<1){//判断是否到终点，判断速度和距离
                    obj.style.left = iTarget + 'px';

                    clearInterval(obj.timer)

                }else{
                    obj.style.left = left + 'px'

                }

            },10)
        }


        var span = document.getElementsByTagName('span');//right1
        for(var i=0;i<span.length;i++){
            //alert(span[i].offsetTop);
            span[i].style.marginTop =  -10 + 'px';
            span[i].style.left =  (420-span[i].offsetWidth)/2 + 'px'

        }
        for(var i=0;i<span.length;i++){
            span[i].style.position = 'absolute';
        }
        //判断是否获取了图片没有用下面的
        function nofind(){
            var img = event.srcElement;
            img.src="../img/head.png";
            img.onerror = null;
        }
        document.getElementById('select').value =  document.getElementById('select').getAttribute('edu');
        
     
    }
  
