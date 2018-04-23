window.onload=function (){
        var container = document.getElementById('container');
        var list = document.getElementById('list');
        var buttons = document.getElementById('buttons').getElementsByTagName('span');
        var prev = document.getElementById('prev');
        var next = document.getElementById('next');
        var index = 1;
        var animated = false;
        var timer;//定时器

        function showbutton(){//显示晃点的方法
            for(var i=0;i<buttons.length;i++){//去除黄点
                if(buttons[i].className=='on'){
                    buttons[i].className='';
                    break;
                }
            }
            buttons[index-1].className = 'on';

        }
        function animate(offset){//轮播尺寸的方法
            animated = true;
            var newLeft = parseInt(list.style.left) + offset;
            var time = 300;//位移总时间
            var interval = 10;//唯一间隔时间；
            var speed = offset/(time/interval);//每次的位移量

            function go(){
                if((speed < 0 && parseInt(list.style.left) > newLeft) || (speed>0 &&  parseInt(list.style.left) < newLeft)){
                    list.style.left = parseInt(list.style.left) + speed + 'px';
                    setTimeout(go,interval);//判断是否位移到目标位置，如果不是再次调用自身的函数来判断,10毫秒运行go函数
                }else{
                    animated = false;
                    list.style.left = newLeft + 'px';
                    if(newLeft>-600){
                        list.style.left = -3000 + 'px';
                    }
                    if(newLeft<-3000){
                        list.style.left = -600 + 'px';
                    }
                }
            }
            go();

        }
        function play(){//自动轮播定时器
            timer = setInterval(function (){
                next.onclick();
            },3000);
        }
        function stop(){
            clearInterval(timer);
        }
        next.onclick = function(){//点击右箭头
            if(index==5){
                index=1;
            }else{
                index+=1;
            }
            showbutton();
            if(!animated){//判断是否做位移，如果不是则跳转到下一张图片
                animate(-600);//给定轮播的尺寸方法
            }
        }


        prev.onclick = function(){//点击左箭头
            if(index==0){
                index=5;
            }else{
                index-=1;
            }

            showbutton();
            if(!animated){//判断是否做位移，如果不是则跳转到下一张图片
                animate(600);//给定轮播的尺寸方法
            }
        }


        for(var i=0;i<buttons.length;i++){
            buttons[i].onclick = function (){
                if(this.className=='on'){
                    return;
                }
                var myIndex = parseInt(this.getAttribute('index')) ;
                var offset = -600 * (myIndex-index);
                index = myIndex;
                if(!animated){
                    animate(offset);
                }
                showbutton();
                debugger;
            }
        }
        container.onmouseover = stop;
        container.onmouseout = play;
        play();
        
        var div1 = document.getElementById('div-1');
        var width1 = document.documentElement.clientWidth;
        div1.style.left = width1 / 2 - 150 + 'px';

        var user1 = document.getElementById('user-1');
        var text1 = document.getElementById('text-1');
        var psw11 = document.getElementById('psw1-1');
        var password11 = document.getElementById('password1-1');
        var psw21 = document.getElementById('psw2-1');
        var password21 = document.getElementById('password2-1');
        /*user1.onblur = function(){//失去光标是判断
            var re = /^[0-9]+.?[0-9]*$/; //判断字符串是否为数字 //判断正整数 /^[1-9]+[0-9]*]*$/
            if (!re.test(user1.value)) {
                text1.style.display = 'block';
                user1.value = "";
                return false;
            }
            if(re.test(user1.value)){
                text1.style.display = 'none';
            }
        }*/
        psw11.onblur = function(){//判断密码不能使中文

            if(psw11.value.length<6  ||/^[\u4e00-\u9fa5]+$/i.test(psw11.value)|| psw11.value.length>11){
                password11.style.display = 'block';
                this.value = "";
                return false;
            }
            if((psw11.value.length>6&&psw11.value.length<11) || !chain.test(psw11.value)){
                password11.style.display = 'none';
            }
        }
        psw21.onblur = function(){
            if(psw1.value != psw21.value){
                password21.style.display = 'block';
            }else{
                password21.style.display = 'none';
            }
        }
    }

    
