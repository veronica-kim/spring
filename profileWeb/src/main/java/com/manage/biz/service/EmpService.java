package com.manage.biz.service;

import java.util.List;

import com.manage.biz.vo.Emp;

public interface EmpService {
	List<Emp> getAllList() throws Exception;
	void insertEmp(Emp emp) throws Exception;
	Emp selectEmpInfo(Emp emp) throws Exception;
}
