package com.manage.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.biz.dao.EmpDao;
import com.manage.biz.vo.Emp;

@Service
public class EmpServiceImpl implements EmpService{
	
	@Autowired
	private EmpDao empDao;

	public List<Emp> getAllList() throws Exception{
		
		List<Emp>rtnList = empDao.selectList();
		
		return rtnList;
	}
	
	public void insertEmp(Emp emp) throws Exception{
		empDao.insertEmp(emp);
	}
	
	public Emp selectEmpInfo(Emp emp) throws Exception{
		return empDao.selectEmpInfo(emp);
	}
}
