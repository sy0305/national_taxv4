package com.camel.constant;

public enum PageCodeEnum {
	ADD_SUCCESS(1000,"新增成功......"),
	MODIFY_SUCCESS(1003,"修改成功......"),
	MODIFY_FAIL(1004,"修改失败......"),
	ADD_FALI(1001,"新增失败......");
	
	private Integer code;
	private String msg;
	
	public static final String KEY = "pageCode";
	
	PageCodeEnum(Integer code,String msg) {
		this.code= code;
		this.msg = msg;
	}
	
	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	
}