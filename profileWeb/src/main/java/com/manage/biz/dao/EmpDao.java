package com.manage.biz.dao;

import java.util.List;
import com.manage.biz.vo.Emp;

public interface EmpDao {
	List<Emp> selectList() throws Exception;
	int insertEmp(Emp emp) throws Exception;
	Emp selectEmpInfo(Emp emp) throws Exception;
}
