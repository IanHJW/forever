window.onload = function(){
        var ul = document.getElementById('ul1');
        var li = ul.getElementsByTagName('li');
        var bg = li[li.length-1];
        var head = document.getElementById('head');
        var litter = document.documentElement.clientWidth
        var child = li[0].firstChild;
        var forum = li[2];
        var bgleft = bg.offsetLeft;
        for(var i=1;i<li.length-1;i++){
            if(i==0){
                continue;
            }
            li[i].onmousemove = function(){
                child.style.color = 'rgba(3, 8, 2, 0.52)';
                if(this==forum){
                    this.firstChild.style.color = 'white';
                }
                if(litter<=1366){
                    startmove(bg,this.offsetLeft+(bgleft)/1.7);
                }
                if(litter>1366&&litter<=1920){
                    startmove(bg,this.offsetLeft+(bgleft)/1.77);
                }

            }
            li[i].onmouseout = function(){
                child.style.color = 'white';
                forum.firstChild.style.color = '#ea5748';
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