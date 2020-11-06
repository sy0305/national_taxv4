package com.camel.dao.bean;

import java.util.List;


import com.camel.bean.User;



public interface UserDao {

	/**
	 * 添加注册信息
	 * @param ad
	 * @return
	 */
	public int insert(User user);
	
	/**
	 * 根据条件进行查询
	 * @param ad
	 * @return
	 */
	public List<User> selectByPage(User user);
	
	/**
	 * 修改账号密码信息
	 * @param ad
	 * @return
	 */
	public int update(User user);
	
	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	public User selectById(int id);
	
	
}
