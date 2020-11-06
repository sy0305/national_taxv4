package com.camel.dto;

import org.springframework.web.multipart.MultipartFile;

import com.camel.bean.User;


public class AdDto extends User {

	private String img;// 路径
	private MultipartFile imgFile;// MultipartFile是spring给我提供了文件上传的一个组件  imgFil要跟表单里name 一致

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

}
