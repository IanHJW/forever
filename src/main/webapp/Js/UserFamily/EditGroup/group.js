/*
@author：彭宇龙
@desc ：添加子辈元素函数
@date ： 2017-11-23
*/

/*
添加字辈元素函数
*/
function addYoungNumber(imghref){
	//获取父辈id
	var id = document.getElementById('addNumber').children[0].innerHTML;
	//获取添加字辈的父辈
	var theOld = document.getElementById(id);
	
	//通过图片地址来判断
	var img = theOld.children[1].getAttribute('href');
	var identity =  img == svginfo.image.menhref ?  identity = 'father' : identity = 'mother'; 
	
	//获取父辈伴侣信息
	var part  = identity ==  'father' ?  'wife' : 'husband';
	var partner = identity ==  'father' ? theOld.getAttribute('wife') : theOld.getAttribute('husband'); 
	
	//获取画布元素
	var svg = document.getElementById('grouptree');
	//设置Id
	var copyGid = Math.floor(Math.random()*100);
	//子辈等级
	var level = parseInt(theOld.getAttribute('level')) + 1;
	
	if (level >= 5){
		alert("至多只能添加4代人");
		displayInfo('addNumber');
		return ;
	}
	
	//判断该元素是否有下一个兄弟节点
	if (theOld.nextElementSibling == null){
		var copyG = theOld.cloneNode(true);
		sureId(copyG,copyGid,level,identity,id,imghref,part,partner);
		
		setYoungY(copyG,theOld);
		svg.insertBefore(copyG,theOld.nextElementSibling);
	}else{
		var location = 0;
		for (var child = 0;child < svg.children.length;child++)
			if (svg.children[child].getAttribute('level') == level){
				location = child;
				break;
			}
			
		var copyG = null;
		var next = null;
		for (;location < svg.children.length;location++)
			//判断是否是同一个父亲 || 母亲
			if ( svg.children[location].getAttribute(identity) == id)
				//是的话将该元素克隆给copyG元素
				next = svg.children[location];
		
		if (next != null){
			copyG = next.cloneNode(true);
			sureId(copyG,copyGid,level,identity,id,imghref,part,partner);
			svg.insertBefore(copyG,next.nextElementSibling);
			layoutXTree(copyG,imghref);
		}else{
			var copyG = theOld.cloneNode(true);
			sureId(copyG,copyGid,level,identity,id,imghref,part,partner);
			setYoungY(copyG,theOld);
			svg.insertBefore(copyG,svg.children[location - 1].nextElementSibling);
		}
		setWidth();
	}
	setHeight();
	midleSvg(svg);
	setWidth();
	displayInfo('addNumber');
		
}	

/*
确定身份函数
*/
function sureId(copyG,copyGid,level,identity,id,imghref,part,partner){
	copyG.setAttribute('id',' ');
	copyG.removeAttribute('father');
	copyG.removeAttribute('mother');
	copyG.removeAttribute('husband');
	copyG.removeAttribute('wife');
	//设置等级、相关信息等
	setGAttribute(copyG,copyGid,level,-1,-1);
	copyG.setAttribute(identity,id);
	copyG.children[1].setAttribute('href',svginfo.image[imghref]);
	if (partner != null)
		copyG.setAttribute(part,partner);
}

/*
*
*/
function svgRelation(){
	//各个等级的Id
	var relation = relation();
	//
	for (var index = 0;index < relation.length;index++){
		for (var id = 1;id < relation.length - 1;id++){
			
		}
	}
	
}
