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
    var child = document.getElementById("qwe");
    var litter = document.documentElement.clientWidth
    var bgleft = bg.offsetLeft;
    for(var i=0;i<li.length-1;i++){
        if(i==3){
            continue;
        }
        li[i].onmousemove = function(){
            child.style.color = 'rgba(3, 8, 2, 0.52)';
                startmove1(bg,this.offsetLeft+20);
        }
        li[i].onmouseout = function(){
            child.style.color = 'white';
                startmove1(bg,bgleft);
        }
    }

    var speed = 0;
    var left = 0;
    function startmove1(obj,iTarget){
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
    var ul2 = document.getElementById('ul2');
    var li1 = ul2.getElementsByTagName('li');
    var bg2 = li1[li.length-1];
    var bgleft1 = bg2.offsetLeft;
    var child1 = document.getElementById("sdf");
    for(var i=0;i<li.length-1;i++){
        if(i==2){
            continue;
        }
        li1[i].onmousemove = function(){
     
             	child1.style.color='rgba(3,8,2,0.52)';
                startmove2(bg2,this.offsetLeft+30);
           
        }
        li1[i].onmouseout = function(){
        	child1.style.color='#fff';
                startmove2(bg2,(bgleft1));
        }
    }
    var speed1 = 0;
    var left1 = 0;
    function startmove2(obj,iTarget){
        clearInterval(obj.timer);
        obj.timer = setInterval(function(){
            speed1 += (iTarget-obj.offsetLeft)/5;//速度,（目标点-当前的left）/5
            speed1*=0.7;
            left1+=speed1;
            if(Math.abs(speed1)<1&&Math.abs(left1-iTarget)<1){//判断是否到终点，判断速度和距离
                obj.style.left = iTarget + 'px';

                clearInterval(obj.timer)

            }else{
                obj.style.left = left1 + 'px'

            }

        },10)
    }
    
    
}