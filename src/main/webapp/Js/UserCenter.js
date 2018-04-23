// JavaScript 
 document.title = document.documentElement.clientWidth;
    window.onload = function(){
     

        var ul = document.getElementById('ul1');
        var li = ul.getElementsByTagName('li');
        var bg = li[li.length-1];
        var head = document.getElementById('head');
        var litter = document.documentElement.clientWidth;
        var bgleft = bg.offsetLeft;
        
		for(var i=0;i<li.length-1;i++){
            li[i].onmousemove = function(){
                //  alert(this.offsetLeft)
                if(litter<=1366){
                    startmove(bg,this.offsetLeft+(bgleft)/1.7);
                }
                if(litter>1366&&litter<=1920){
                    startmove(bg,this.offsetLeft+(bgleft)/1.55);
                }

            }
            li[i].onmouseout = function(){
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

    }