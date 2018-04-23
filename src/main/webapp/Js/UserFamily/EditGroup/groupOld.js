/*
@author：彭宇龙
@desc ：添加父辈元素函数
@date ： 2017-11-23
*/

/*
添加长辈家族成员
同时通过ajax存入数据库
（暂定）
*/
function addOldNumber(type){
	//获取子类的Id
	var id = document.getElementById('addNumber').children[0].innerHTML;
	//获取该添加父辈元素
	var g = document.getElementById(id);
	//画布元素
	var svg = document.getElementById('grouptree');
	var height = svg.getAttribute('height');
	
	if (svg.children[svg.children.length-1].getAttribute('level') >= 5){
		alert("至多只能添加4代人");
		displayInfo('addNumber');
		return;
	}
	
	if (g.getAttribute(type)!=null){
		alert("只能有一个父亲或者母亲");
		displayInfo('addNumber');
	}else{
		var level = parseInt(g.getAttribute('level'))-1 == 0 ? 1 : parseInt(g.getAttribute('level')) - 1;
		svg.setAttribute("height",parseInt(height) + 80 + 'px');
		
		//克隆元素作为父辈元素
		var copyG = svg.children[0].cloneNode(true);
		copyG.setAttribute('level',level);
		id = Math.floor(Math.random()*100);
		copyG.setAttribute("id",id);
		var href = type == 'father' ? svginfo.image.menhref : svginfo.image.womanhref;
		copyG.children[1].setAttribute("href",href);

		//获取该添加父辈元素中另外一个父辈是否有值
		var parent = type=='father' ? g.getAttribute('mother') : g.getAttribute('father');
		var other = type=='father' ? 'mother' : 'father';
		g.setAttribute(type,id);
		if (parent==null){
			for (var time = 0 ;time < svg.children.length ;time++){
				var lv = parseInt(svg.children[time].getAttribute('level')) + 1;
				svg.children[time].setAttribute('level',lv);
				if (level + 1 == lv)
					svg.children[time].setAttribute(type,id);		
			}	
			svg.insertBefore(copyG,svg.children[0]);
		}else {
			for (var child = 0;child < svg.children.length;child++){
				if (svg.children[child].getAttribute(other) == parent)
					svg.children[child].setAttribute(type,id);
					
			}
			//关联父辈之间的关系。丈夫妻子关系
			var relation = type == 'father' ? 'husband' : 'wife';
			var otherOne = relation == 'husband' ? 'wife' : 'husband';
			//设置父辈的关系
			document.getElementById(parent).setAttribute(relation,id);
			//新增加的元素设定关系
			copyG.setAttribute(otherOne,parent);
			svg.setAttribute("width",parseInt(svg.getAttribute('width')) + 250 + 'px'); 
			svg.insertBefore(copyG,document.getElementById(parent).nextElementSibling);			
			midleSvg(svg);
		}
		layoutOldXTree(level,id);
	}
}

/*
重新布局上层X轴格局
*/
function layoutOldXTree(level,id){
	var levelNumber = 0;
	var svg = document.getElementById('grouptree');
	for (var time = 0 ;time < svg.children.length ;time++){
		var lv = svg.children[time].getAttribute('level');
		level==lv && levelNumber++;
	}
	if (levelNumber == 1){
		//矩形X坐标
		var widthX = parseInt(svg.getAttribute('width'))/2 - svginfo.rect.width/2;		
		//图片X坐标
		var imgX = widthX + svglocation.image.x;
		//文本X坐标
		var textX = widthX + svglocation.text.x;
		//删除logoX坐标
		var delX = widthX + svglocation.del.x;
		//编辑logoX坐标
		var editX = widthX + svglocation.edit.x;
		//添加logoX坐标
		var addX = widthX + svglocation.add.x;
		
		svg.children[0].children[0].setAttribute("x",widthX);
		svg.children[0].children[1].setAttribute("x",imgX);
		svg.children[0].children[2].setAttribute("x",textX);
		svg.children[0].children[3].children[0].setAttribute("x",delX);
		svg.children[0].children[4].children[0].setAttribute("x",editX);
		svg.children[0].children[5].children[0].setAttribute("x",addX);		
	}else{	
		var g = document.getElementById(id);
		var previous = g.previousElementSibling;
		if (g.nextElementSibling.getAttribute('level') != level){
			//获取上一个节点的X坐标
			//矩形X坐标
			var rectX = parseInt(previous.children[0].getAttribute('x')) + 250;
			//图片X坐标
			var imgX = parseInt(previous.children[1].getAttribute('x')) + 250;
			//文本X坐标
			var textX = parseInt(previous.children[2].getAttribute('x')) + 250;
			//删除logoX坐标
			var delX = parseInt(previous.children[3].children[0].getAttribute('x')) + 250;
			//编辑logoX坐标
			var editX = parseInt(previous.children[4].children[0].getAttribute('x')) + 250;
			//添加logoX坐标
			var addX = parseInt(previous.children[5].children[0].getAttribute('x')) + 250;

			//设置X坐标
			g.children[0].setAttribute("x",rectX);
			g.children[1].setAttribute("x",imgX);
			g.children[2].setAttribute("x",textX);
			g.children[3].children[0].setAttribute("x",delX);
			g.children[4].children[0].setAttribute("x",editX);
			g.children[5].children[0].setAttribute("x",addX);
		}else{
			var location = 0;
			for (var child = 0;child < svg.children.length;child++){
				if (svg.children[child].getAttribute('id') == id)
					location = child;
			}
			for (;location < svg.children.length;location++){
				if (svg.children[location].getAttribute('level') != level)
					break;
				//矩形X坐标
				var rectX = parseInt(svg.children[location].children[0].getAttribute('x')) + 250;
				//图片X坐标
				var imgX = parseInt(svg.children[location].children[1].getAttribute('x')) + 250;
				//文本X坐标
				var textX = parseInt(svg.children[location].children[2].getAttribute('x')) + 250;
				//删除logoX坐标
				var delX = parseInt(svg.children[location].children[3].children[0].getAttribute('x')) + 250;
				//编辑logoX坐标
				var editX = parseInt(svg.children[location].children[4].children[0].getAttribute('x')) + 250;
				//添加logoX坐标
				var addX = parseInt(svg.children[location].children[5].children[0].getAttribute('x')) + 250;

				//设置X坐标
				svg.children[location].children[0].setAttribute("x",rectX);
				svg.children[location].children[1].setAttribute("x",imgX);
				svg.children[location].children[2].setAttribute("x",textX);
				svg.children[location].children[3].children[0].setAttribute("x",delX);
				svg.children[location].children[4].children[0].setAttribute("x",editX);
				svg.children[location].children[5].children[0].setAttribute("x",addX);
			}
		}
		
		}
	layoutYTree(levelNumber);
} 

/*
重新布局svg中Y轴坐标
*/
function layoutYTree(levelNumber){
	var svg = document.getElementById('grouptree');
	var length = svg.children.length - levelNumber;
	for (var children = levelNumber-1;children <= length;children++){
		
		//子节点中的level等级
		var chilrenNodeLevel = svg.children[children].getAttribute('level') - 1;
		//获取rect层的高度
		var height = parseInt(svginfo.rect.height);
		//设置各个level中Y轴坐标
		var rectY = parseInt(svglocation.rect.y) + (height + 20) * chilrenNodeLevel;
		//设置各个图片Y轴坐标
		var imgY = parseInt(svglocation.image.y) + (height + 20) * chilrenNodeLevel;
		//设置各个文本Y轴坐标	
		var textY = parseInt(svglocation.text.y) + (height + 20) * chilrenNodeLevel;
		//设置各个删除logoY轴坐标	
		var delY = parseInt(svglocation.del.y) + (height + 20) * chilrenNodeLevel;
		//设置各个编辑logoY轴坐标
		var editY = parseInt(svglocation.edit.y) + (height + 20) * chilrenNodeLevel;
		//设置各个添加logoY轴坐标	
		var addY = parseInt(svglocation.add.y) + (height + 20) * chilrenNodeLevel;
		svg.children[children].children[0].setAttribute("y",rectY);
		svg.children[children].children[1].setAttribute("y",imgY);
		svg.children[children].children[2].setAttribute("y",textY);
		svg.children[children].children[3].children[0].setAttribute("y",delY);
		svg.children[children].children[4].children[0].setAttribute("y",editY);
		svg.children[children].children[5].children[0].setAttribute("y",addY);
	}
	displayInfo('addNumber');
}
