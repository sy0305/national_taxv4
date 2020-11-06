package com.camel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camel.bean.Slip;
import com.camel.dao.bean.SlipDao;
import com.camel.service.SlipService;
@Service
public class SlipSeriveImpl implements SlipService {
    @Autowired
	private SlipDao slipDao;

public List<Slip> searchByPage(Slip slip) {
	
	return slipDao.selectByPage(slip);
}

public boolean add(Slip slip) {
	slipDao.insert(slip);
	return false;
}

public Slip inSelectById(int slip_id) {
	
	return slipDao.selectById(slip_id);
}

public boolean inUpDate(Slip slip) {
	slipDao.update(slip);
	return false;
}

public boolean indeleteById(int slip_id) {
	slipDao.deleteById(slip_id);
	return false;
}

public List<Slip> queryAllInfo() {

	List<Slip> list=slipDao.selectAll();
	System.out.println(list.size());
	return list;
	
}
	
public static void main(String[] args) {

	SlipService slipService= new SlipSeriveImpl();
	Slip slip=new Slip();
	List<Slip> list2=slipService.queryAllInfo();
	
//	for(int i=0;i<list2.size();i++){
//		 list1.add(list1.get(i).)
//	}
}


}
