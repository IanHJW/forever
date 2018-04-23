/*
@author：彭宇龙
@desc ：添加同辈元素函数
@date ： 2017-11-23
*/


/*
添加同辈的家族,
同时通过ajax存入数据库
（暂定）
*/
function addNumber(imghref){
	//获取添加同辈的Id
	var id = document.getElementById('addNumber').children[0].innerHTML;
	//获取树状图层
	var svg = document.getElementById('grouptree');
	//该元素所在的位置
	var location = 0;
	for (var child = 0;child < svg.children.length;child++){
		if (svg.children[child].getAttribute('id') == id){
			location = child;
			break;
		}		
	}
	//获取添加同辈的该元素
	var g = document.getElementById(id);
	
	//获取相关信息
	var father = g.getAttribute('father');
	var mother = g.getAttribute('mother');
	
	//获取该元素的Level等级
	var level = g.getAttribute('level');
	//添加同辈的元素
	var copyG = null;
	//用于判断该元素是否还有同辈元素
	var next = null;
	if (g.nextElementSibling==null){
		copyG = g.cloneNode(true);	
	}else{
		
		for (;location < svg.children.length;location++){
			if (svg.children[location].getAttribute('level') == level){
				next = svg.children[location];
				
			}else
				break;
		}
	}
	
	if (next != null){
		copyG = next.cloneNode(true);
	}
	cleaninfo(copyG);
	var copyGid = Math.floor(Math.random()*100);
	copyG.setAttribute("id",copyGid);
	father != null && copyG.setAttribute('father',father);
	mother != null && copyG.setAttribute('mother',mother);
	next == null ? svg.insertBefore(copyG,g.nextElementSibling) : svg.insertBefore(copyG,next.nextElementSibling);
	layoutXTree(copyG,imghref);
	setWidth();
}


/*
布局同辈X轴坐标暂定
*/
function layoutXTree(copyG,imghref){
	layoutTypeX(copyG,'previous',40);
	

	//清空新根的文本内容
	copyG.children[2].innerHTML = "";
	
	//设定图像
	copyG.children[1].setAttribute("href",svginfo.image[imghref]);
	displayInfo('addNumber');
}