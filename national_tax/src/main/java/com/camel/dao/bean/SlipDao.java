package com.camel.dao.bean;

import java.util.List;

import com.camel.bean.Slip;

public interface SlipDao {

	/**
	 * 添加用户信息
	 * @param ad
	 * @return
	 */
	public int insert(Slip slip);
	
	/**
	 * 根据条件进行查询
	 * @param ad
	 * @return
	 */
	public List<Slip> selectByPage(Slip slip);
	
	/**
	 * 修改用户信息
	 * @param ad
	 * @return
	 */
	public int update(Slip slip);
	
	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	public Slip selectById(int id);
	
	/**
	 * 根据id 删除
	 * @param id
	 * @return
	 */
	
	
	public int deleteById(int id);
	/**
	 * 遍历所有数据
	 * @return
	 */
	public List<Slip> selectAll();
	
}
