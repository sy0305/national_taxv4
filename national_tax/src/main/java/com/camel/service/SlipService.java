package com.camel.service;

import java.util.List;

import com.camel.bean.Slip;


public interface SlipService {
	/**
	 * 按条件查询信息
	 * @param slip
	 * @return
	 */
	
	List<Slip> searchByPage(Slip slip);
	
	/**
	 * 添加工资条信息
	 * @param adDto
	 * @return
	 */
	public boolean add(Slip slip);
	
	
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Slip inSelectById(int slip_id);
	
	/**
	 * 修改信息
	 * @param slip
	 * @return
	 */
	public boolean inUpDate(Slip slip);
	
	/**
	 * 根据ID删除
	 * @param id
	 * @return
	 */
	
	public boolean indeleteById(int id);
	/**
	 * 查询所有信息
	 */
	public List<Slip> queryAllInfo();
}
