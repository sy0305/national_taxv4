package com.camel.bean;

public class User extends BaseBean {
/**
 * 登入注册表
 */
//	 `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
//	  `user_name` varchar(11) DEFAULT NULL COMMENT '用户名称',
//	  `user_phone` varchar(18) NOT NULL COMMENT '手机号',
//	  `user_department` varchar(11) DEFAULT NULL COMMENT '用户所在部门',
//	  `card_type` varchar(11) DEFAULT NULL COMMENT '证件类型',
//	  `card_num` int(18) DEFAULT NULL COMMENT '证件号码',
//	  `user_sex` varchar(11) DEFAULT NULL COMMENT '性别',
//	  `user_birth` varchar(20) DEFAULT NULL COMMENT '用户出生年月日',
//	  `nationality` varchar(11) DEFAULT NULL COMMENT '国籍',
//	  `user_picture` varchar(50) DEFAULT NULL COMMENT '上传的头像路径',
//	  `location_address` varchar(50) DEFAULT NULL COMMENT '户籍地址',
//	  `location_detailed` varchar(50) DEFAULT NULL COMMENT '户籍详细地址',
//	  `ofen_address` varchar(50) DEFAULT NULL COMMENT '常住地址',
//	  `ofen_detailed` varchar(50) DEFAULT NULL COMMENT '详细地址',
//	  `education` varchar(20) DEFAULT NULL COMMENT '学历',
//	  `nation` varchar(20) DEFAULT NULL COMMENT '民族',
//	  `user_email` varchar(20) DEFAULT NULL COMMENT '邮箱',
//	  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ',
//	  `weixin` varchar(20) DEFAULT NULL COMMENT '微信',
//	  PRIMARY KEY (`user_id`)
//	) ENGINE=MyISAM DEFAULT CHARSET=utf8;
	private int user_id;   //主键id
	private String user_name;  //用户名称
	private String user_phone;   //手机号
	private String user_department;//用户所在部门
	private String card_type;//证件类型
	private Integer card_num;  //证件号码
	private String user_sex;//性别
	private String user_birth;//用户出生年月日
	private String nationality;//国籍
	private String user_picture;  //上传的头像路径
	private String location_address;//户籍地址
	private String location_detailed;//户籍详细地址
	private String ofen_address;  //常住地址
	private String ofen_detailed;//详细地址
	private String nation;//学历
	private String user_email;//邮箱
	private String QQ;   //QQ
	private String weixin;  //微信
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_department() {
		return user_department;
	}
	public void setUser_department(String user_department) {
		this.user_department = user_department;
	}
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public Integer getCard_num() {
		return card_num;
	}
	public void setCard_num(Integer card_num) {
		this.card_num = card_num;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getUser_picture() {
		return user_picture;
	}
	public void setUser_picture(String user_picture) {
		this.user_picture = user_picture;
	}
	public String getLocation_address() {
		return location_address;
	}
	public void setLocation_address(String location_address) {
		this.location_address = location_address;
	}
	public String getLocation_detailed() {
		return location_detailed;
	}
	public void setLocation_detailed(String location_detailed) {
		this.location_detailed = location_detailed;
	}
	public String getOfen_address() {
		return ofen_address;
	}
	public void setOfen_address(String ofen_address) {
		this.ofen_address = ofen_address;
	}
	public String getOfen_detailed() {
		return ofen_detailed;
	}
	public void setOfen_detailed(String ofen_detailed) {
		this.ofen_detailed = ofen_detailed;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getWeixin() {
		return weixin;
	}
	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}
	
	
}
