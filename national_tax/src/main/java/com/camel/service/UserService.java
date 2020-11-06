package com.camel.service;

import java.util.List;

import com.camel.bean.User;
import com.camel.dto.AdDto;

public interface UserService {
	/**
	 * 按条件查询信息
	 * @param slip
	 * @return
	 */
	
	List<User> searchByPage(AdDto adDto);
	
	/**
	 * 添加用户信息
	 * @param adDto
	 * @return
	 */
	public boolean add(AdDto adDto);
	
	
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public User inSelectById(int id);
	
	/**
	 * 修改信息
	 * @param slip
	 * @return
	 */
	public boolean inUpDate(AdDto adDto);
	
	/**
	 * 根据ID删除
	 * @param id
	 * @return
	 */
	
	public boolean indeleteById(int id);
	
}
