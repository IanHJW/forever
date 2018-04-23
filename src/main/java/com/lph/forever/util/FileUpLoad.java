package com.lph.forever.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月12日 上午9:32:36
* @Function: FileUpLoad.java
* @version 1.0 
* @Description: 文件上传
* @parameter  
* @return  
*/
public class FileUpLoad {
	
	public List<String> FileUpLoad(MultipartFile file ) throws Exception {
		List<String> list=new ArrayList<String>();
		if(!file.isEmpty()) {
			// 存储图片的物理路径
						String pic_path = "F:\\image\\saveChart\\";
						// 获取图片的原始名称
						String originaFilename = file.getOriginalFilename();
						System.out.println(originaFilename);
						SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

						// 生成新的图片名称
						String newfilename = Math.floor(Math.random() * 100) + "_" + sdf.format(new Date())
								+ originaFilename.substring(originaFilename.lastIndexOf("."));
						// 新的图片
						File newFile = new File(pic_path + newfilename);

						// 将内存中的数据写入磁盘
						file.transferTo(newFile);
						//新的路径名
						list.add(newfilename);
						//原始名称
						list.add(originaFilename);
						
		}
		
		return list;
	}

}
