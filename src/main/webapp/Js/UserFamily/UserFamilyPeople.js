window.onload = function(){

        var ul = document.getElementById('ul1');
        var li = ul.getElementsByTagName('li');
        var bg = li[li.length-1];
        var head = document.getElementById('head');
        var litter = document.documentElement.clientWidth
        var child = li[2].firstChild;
        var bgleft = bg.offsetLeft;
        for(var i=0;i<li.length-1;i++){
            if(i==2){
                continue;
            }
            li[i].onmousemove = function(){
                child.style.color = 'rgba(3, 8, 2, 0.52)';
                    startmove(bg,this.offsetLeft+20);
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

        var bottomright21=document.getElementsByClassName("bottom-right2-1");
        var pinlun2=document.getElementsByClassName("pinlun");



        for(var i=0;i<bottomright21.length;i++){
            bottomright21[i].style.height=(bottomright21[i].offsetHeight-96)+'px';
            bottomright21[i].setAttribute("myheight",bottomright21[i].offsetHeight);
            pinlun2[i].setAttribute('kaiguan',2);

        }



    }
    function pinlun(pinlun2) {
        var fuji=pinlun2.parentNode;
        if(pinlun2.attributes["kaiguan"].nodeValue==2){
            pinlun2.setAttribute('kaiguan',1);
            fuji.style.height = (parseInt(fuji.attributes["myheight"].nodeValue) + 106) +'px';
        }else{
            pinlun2.setAttribute('kaiguan',2);
            fuji.style.height = parseInt(fuji.attributes["myheight"].nodeValue) +'px'
        }

    }
    function ismaxlength(obj){//限制输入框的字数
        var mlength=obj.getAttribute? parseInt(obj.getAttribute("maxlength")) : ""
        if (obj.getAttribute && obj.value.length>mlength)
            obj.value=obj.value.substring(0,mlength)
    }
    function huifu(bottomright){//回复1
        var brother=bottomright.nextElementSibling;
        if(bottomright.innerHTML=="收起回复"){
            bottomright.innerHTML="回复";
            brother.style.height = 0 + 'px';
        }else{
            bottomright.innerHTML="收起回复";
            brother.style.height=brother.attributes["myheight"].nodeValue+'px';
        }
    }