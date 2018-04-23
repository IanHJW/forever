/*
@author：彭宇龙
@desc ：添加页面基本功能函数
@date ： 2017-11-23
*/

//判断是否获取了图片没有用下面的
    function nofind(){
        var img = event.srcElement;
        img.src="http://localhost:8080/forever/img/head.png";
        img.onerror = null;
    }
    

/*
隐藏函数
*/
function displayInfo(divId){
	var msg = document.getElementById(divId);
	msg.style.display = 'none';

    var msg1 = document.getElementById('personMsg');
    msg1.style.display = 'none';
    msg1.style.zIndex = '0';

    var menlong = document.getElementById('menlong');
    menlong.style.display = 'none';

}

/*
表示增加家族成员的菜单
*/
function addNumberMenu(a){
	var id = a.parentNode.id;
	var addNumber = document.getElementById('addNumber');
	addNumber.style.zIndex = '11';
	var follow = document.getElementById('follow');
	var old = document.getElementById('old');
	var young = document.getElementById('young');
	
	var g = document.getElementById(id);
	if (g.getAttribute('husband') != null){
		old.style.display = 'none';
		follow.style.display = 'none';
	}else{
		old.style.display = 'block';
		follow.style.display = 'block';
		young.style.display = 'block';
	}
	if (g.children[1].getAttribute('href') == svginfo.image.womanhref){
		if (g.getAttribute('father') != null || g.getAttribute('mother') != null){
			young.style.display = 'none';
		}else{
			young.style.display = 'display';
		}
		if (g.getAttribute('husband') != null){
			old.style.display = 'none';
			follow.style.display = 'none';
		}else{
			old.style.display = 'block';
			follow.style.display = 'block';
		}
	}
	if (g.getAttribute('level') == 1){
		follow.style.display = 'none';
	}else {
		follow.style.display = 'block';
	}
	
	addNumber.children[0].innerHTML = id;
	
	var menlong = document.getElementById('menlong');
    menlong.style.display = 'block';
    menlong.style.background = 'rgba(128, 128, 128, 0.52)';
    menlong.style.zIndex = '10';
	
	var x = (document.body.clientWidth - parseInt(getComputedStyle(addNumber,false).width)) / 2 + 110;
	var y = (document.body.clientHeight - parseInt(getComputedStyle(addNumber,false).height)) / 2 - 100;
	addNumber.style.display = 'block';
	addNumber.style.left = x + 'px';
	addNumber.style.top = y + 'px';	
	

}

/*
显示个人信息表单函数
*/
function showMsg(a){
	var id = a.parentNode.id;
	var msg = document.getElementById('personMsg');
	var info = document.getElementById('userInfo');
    info.children[0].innerHTML = id;
    msg.style.display = 'block';
    msg.style.zIndex = '11'

    var menlong = document.getElementById('menlong');
    menlong.style.display = 'block';
    menlong.style.background = 'rgba(128, 128, 128, 0.52)';
    menlong.style.zIndex = '10';
}

/*
修改家族成员中的个人信息(暂定)***
*/
function updateNumberInfo(){
	var form = document.getElementById('userInfo');
	var id = form.children[0].innerHTML;
	var input = document.getElementsByTagName('input');
	numberInfo[id].name = input[0].value;
	numberInfo[id].relation = input[1].value;
	numberInfo[id].brithday = input[2].value;
	numberInfo[id].hometown = input[3].value;
}

/*
删除家族树中成员 ***
*/
function removeNumber(a){
	var svg = document.getElementById('grouptree');
	var id = document.getElementById(a.parentNode.id);
	if (svg.children.length > 1){
		svg.removeChild(id);
	}else {
		alert("家族最少一个人");
	}
}

/*
设置画布大小
*/
function setWidth(){
	var x = 0;
	var temp = 0;
	var svg = document.getElementById('grouptree');
	for (var child = 0;child < svg.children.length;child++){
		temp = parseInt(svg.children[child].children[0].getAttribute('x'));
		if (temp > x){
			x = temp;
		}
	}
	var width = x + 250 + 'px';
	svg.setAttribute('width',width);
}

/*
设置画布高度
*/
function setHeight(){
	var level = 1;
	var number = 1;
	var svg = document.getElementById('grouptree');
	for (var child = 0;child < svg.children.length;child++){
		if (svg.children[child].getAttribute('level') != level){
			number++;
			level++;
		}	
	}
	var height = (svginfo.rect.height + 20) * number ;
	svg.setAttribute('height',height + 'px');
}

/*
用于依据元素的上/下一个元素来进行X轴坐标的布局函数
g : 画布中个体元素
type : 类型，上一个/下一个
interval : 每一个间隔的数值
*/
function layoutTypeX(g,type,interval){
	var privous = type == 'previous' ? g.previousElementSibling : g.nextElementSibling;
	var width = type == 'previous' ? svginfo.rect.width : -svginfo.rect.width;
	//以下是同级相邻的根的坐标
	//矩形坐标
	var rectX = parseInt(privous.children[0].getAttribute('x')) + width;
	//图片坐标
	var imgX = parseInt(privous.children[1].getAttribute('x')) + width;
	//文本坐标
	var textX = parseInt(privous.children[2].getAttribute('x')) + width;
	//删除logo坐标
	var delX = parseInt(privous.children[3].children[0].getAttribute('x')) + width;
	//编辑logo坐标
	var eiditX = parseInt(privous.children[4].children[0].getAttribute('x')) + width;
	//添加logo坐标
	var addX = parseInt(privous.children[5].children[0].getAttribute('x')) + width;	
	
	//设置新根的各个坐标
	//矩形坐标
	g.children[0].setAttribute('x',rectX + interval);
	//图片坐标
	g.children[1].setAttribute('x',imgX + interval);
	//文本坐标	
	g.children[2].setAttribute('x',textX + interval);
	//删除坐标
	g.children[3].children[0].setAttribute('x',delX + interval);
	//编辑坐标
	g.children[4].children[0].setAttribute('x',eiditX + interval);
	//添加坐标
	g.children[5].children[0].setAttribute('x',addX + interval);	
}

/*
是画布每个层数之间的各个元素居中对齐
*/
function midleSvg(svg){
	//从第一级别开始
	var level = 1;
	//每个级别的个数
	var levelNumber = 0;
	//每个层数的开始数
	var start = 0;
	
	var info = location();
	
	for (var index = 0;index < info.levelNumber.length;index++){
		var temp = index * 2;
		svgLevelMiddle(svg,info.levelNumber[index],info.location[temp],info.location[temp+1]);
	}
	
}

/*
布局函数
*/
function svgLevelMiddle(svg,levelNumber,start,end){
	//从开始到结束的中间数字
	var midNumber = Math.ceil(levelNumber / 2) - 1;
	//画布中间值
	var midWidth = Math.floor(parseInt(svg.getAttribute('width')) / 2); 
	
	if (start == end){
		levelNumber % 2 == 0 ? svgMiddle(svg.children[start],midWidth,-40-svginfo.rect.width) : svgMiddle(svg.children[start],midWidth,-svginfo.rect.width/2);
	}else{
		for (var index = start + midNumber;index >= start;index--){
			if (index == start + midNumber)
				levelNumber % 2 == 0 ? svgMiddle(svg.children[start],midWidth,-40-svginfo.rect.width) : svgMiddle(svg.children[start],midWidth,-svginfo.rect.width/2);
			else{
				layoutTypeX(svg.children[index],'next',-40);
			}	
		}
		for (var index = start + midNumber + 1;index <= end;index++){
			layoutTypeX(svg.children[index],'previous',40);
		}
	}
}

/*
布置画布中间的中间元素
*/
function svgMiddle(g,midWidth,interval){
	var rextX = midWidth + interval;
	var iamgeX = rextX + svglocation.image.x;
	var textX = rextX + svglocation.text.x;
	var delX = rextX + svglocation.del.x;
	var editX = rextX + svglocation.edit.x;
	var addX = rextX + svglocation.add.x;
						
	g.children[0].setAttribute('x',rextX);
	g.children[1].setAttribute('x',iamgeX);
	g.children[2].setAttribute('x',textX);
	g.children[3].children[0].setAttribute('x',delX);
	g.children[4].children[0].setAttribute('x',editX);
	g.children[5].children[0].setAttribute('x',addX);
}

/*
获取元素定点相关函数,返回Json对象【包含两数组】
levelNumber ： 每个等级间的数目
location ： 包含每个等级间起始下标
*/
function location(){
	//每个等级数目
	var levelNumber = new Array();
	//记录每个等级起始和结束位置
	var location = new Array();
	
	var svg = document.getElementById('grouptree');
	
	var level = 1;
	var number = 0;
	location.push(0);
	
	for (var child = 0;child < svg.children.length;child++){
		if (svg.children[child].getAttribute('level') == level){
			number++;
		}else{
			levelNumber.push(number);
			location.push(child - 1,child);
			number=1;
			level++;
		}
	}
	levelNumber.push(number);
	location.push(svg.children.length -1);
	var info = {
		"levelNumber" : levelNumber,
		"location" : location
	}
	return info;	
}

/*
获取每个辈分的id返回多维数组函数,从子辈到父辈
*/
function relation(){
	var svg = document.getElementById('grouptree');
	var level = svg.children[svg.children.length - 1].getAttribute('level');
	var relation = new  Array();
	
	for (;level > 0;k=level--){
		var id = getLevelId(level);
		relation.push(id);
	}
	
	return relation;
}

/*
依据辈分获取他们的id
*/
function getLevelId(level){
	var svg = document.getElementById('grouptree');
	var id = new Array();
	
	for (var child = 0;child < svg.children.length;child++){
		if (svg.children[child].getAttribute('level') == level)
			id.push(child);
	}
	return id;
}

/*
设置添加单个子辈的Y轴坐标（仅限没有子辈的时候使用）
copyG：子辈元素
theOld：父辈元素
*/
function setYoungY(copyG,theOld){
	var height = parseInt(svginfo.rect.height);
		
	//矩形Y轴坐标
	var rectY = parseInt(theOld.children[0].getAttribute('y')) + height;
	//imageY轴坐标
	var imageY = parseInt(theOld.children[1].getAttribute('y')) + height;
	//textY轴坐标
	var textY = parseInt(theOld.children[2].getAttribute('y')) + height;
	//delLogoY轴坐标
	var delY = parseInt(theOld.children[3].children[0].getAttribute('y')) + height;
	//editLogoY轴坐标
	var editY = parseInt(theOld.children[4].children[0].getAttribute('y')) + height;
	//addLogoY轴坐标
	var addY = parseInt(theOld.children[5].children[0].getAttribute('y')) + height;
		
	copyG.children[0].setAttribute('y',rectY + 20);
	copyG.children[1].setAttribute('y',imageY + 20);
	copyG.children[2].setAttribute('y',textY + 20);
	copyG.children[3].children[0].setAttribute('y',delY + 20);
	copyG.children[4].children[0].setAttribute('y',editY + 20);
	copyG.children[5].children[0].setAttribute('y',addY + 20);
}

/*
设置g标的各个属性
g元素，id值，level所属备份，丈夫id，妻子id
*/
function setGAttribute(g,id,level,husband,wife){
	if (id != -1)
		g.setAttribute('id',id);
	if (level !=-1)
		g.setAttribute('level',level);
	if (husband != -1)
		g.setAttribute('husband',husband);
	if (wife != -1)
		g.setAttribute('wife',wife);
	
}

/*
清楚元素中相关信息
*/
function cleaninfo(copyG){
	copyG.setAttribute('id',' ');
	copyG.removeAttribute('father');
	copyG.removeAttribute('mother');
	copyG.removeAttribute('husband');
	copyG.removeAttribute('wife');
}

/*
获取元素定点相关函数,返回Json对象【包含两数组】
levelNumber ： 每个等级间的数目
location ： 包含每个等级间起始下标
*/
function location(){
	//每个等级数目
	var levelNumber = new Array();
	//记录每个等级起始和结束位置
	var location = new Array();
	
	var svg = document.getElementById('grouptree');
	
	var level = 1;
	var number = 0;
	location.push(0);
	
	for (var child = 0;child < svg.children.length;child++){
		if (svg.children[child].getAttribute('level') == level){
			number++;
		}else{
			levelNumber.push(number);
			location.push(child - 1,child);
			number=1;
			level++;
		}
	}
	levelNumber.push(number);
	location.push(svg.children.length -1);
	var info = {
		"levelNumber" : levelNumber,
		"location" : location
	}
	return info;	
}
