package com.camel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camel.bean.User;
import com.camel.dao.bean.UserDao;
import com.camel.dto.AdDto;
import com.camel.service.UserService;
@Service
public class UserSeriveImpl implements UserService {
@Autowired
	private UserDao userDao;
	public List<User> searchByPage(AdDto adDto) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean add(AdDto adDto) {
		
		return false;
	}

	public User inSelectById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean inUpDate(AdDto adDto) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean indeleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
