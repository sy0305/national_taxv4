package com.camel.bean;

public class Slip extends BaseBean {
/**
 * 用户填写工资表
 */
//	`slip_id` int(11) NOT NULL AUTO_INCREMENT,
//	  `key_id` int(11) NOT NULL COMMENT '外键关联user',
//	  `slip_year` int(11) DEFAULT NULL COMMENT '选择年',
//	  `slip_mouth` int(11) DEFAULT NULL COMMENT '选择月',
//	  `base_pay` int(11) DEFAULT NULL COMMENT '基本工资',
//	  `business_pay` int(11) DEFAULT NULL COMMENT '业务提成',
//	  `welfare_pay` int(11) DEFAULT NULL COMMENT '五险一金合计',
//	  `leave_pay` int(11) DEFAULT NULL COMMENT '事假金额',
//	  `tax_pay` int(11) DEFAULT NULL,
//	  `real_pay` int(11) DEFAULT NULL COMMENT '实发工资',
//	  PRIMARY KEY (`slip_id`),
//	  KEY `gzb` (`key_id`)
	  
	  private int slip_id;  //id
	  private int key_id;   //外键关联user
	  private Integer slip_year;  //选择年
	  private Integer slip_mouth;  //选择月
	  private Integer base_pay;    //基本工资
	  private Integer business_pay;   //业务提成
	  private Integer welfare_pay;    //五险一金合计
	  private Integer leave_pay;     //事假金额
	  private Integer tax_pay;    //个税
	  private Integer real_pay;   //实发工资
	public int getSlip_id() {
		return slip_id;
	}
	public void setSlip_id(int slip_id) {
		this.slip_id = slip_id;
	}
	public int getKey_id() {
		return key_id;
	}
	public void setKey_id(int key_id) {
		this.key_id = key_id;
	}
	public Integer getSlip_year() {
		return slip_year;
	}
	public void setSlip_year(Integer slip_year) {
		this.slip_year = slip_year;
	}
	public Integer getSlip_mouth() {
		return slip_mouth;
	}
	public void setSlip_mouth(Integer slip_mouth) {
		this.slip_mouth = slip_mouth;
	}
	public Integer getBase_pay() {
		return base_pay;
	}
	public void setBase_pay(Integer base_pay) {
		this.base_pay = base_pay;
	}
	public Integer getBusiness_pay() {
		return business_pay;
	}
	public void setBusiness_pay(Integer business_pay) {
		this.business_pay = business_pay;
	}
	public Integer getWelfare_pay() {
		return welfare_pay;
	}
	public void setWelfare_pay(Integer welfare_pay) {
		this.welfare_pay = welfare_pay;
	}
	public Integer getLeave_pay() {
		return leave_pay;
	}
	public void setLeave_pay(Integer leave_pay) {
		this.leave_pay = leave_pay;
	}
	public Integer getTax_pay() {
		return tax_pay;
	}
	public void setTax_pay(Integer tax_pay) {
		this.tax_pay = tax_pay;
	}
	public Integer getReal_pay() {
		return real_pay;
	}
	public void setReal_pay(Integer real_pay) {
		this.real_pay = real_pay;
	}
	
	  
}