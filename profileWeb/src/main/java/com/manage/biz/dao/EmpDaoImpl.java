package com.manage.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.manage.biz.vo.Emp;

@Repository
public class EmpDaoImpl implements EmpDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Emp> selectList() throws Exception{
			return sqlSession.selectList("EmpDao.selectAllList");
	}
	
	public Emp selectEmpno(int empno) throws Exception{
			return sqlSession.selectOne("EmpDao.selectEmpno", empno);
	}

	public int insertEmp(Emp emp) throws Exception{
			return sqlSession.insert("EmpDao.insertEmp", emp);
	}
	
	public Emp selectEmpInfo(Emp emp) throws Exception{
		System.out.println(emp.getEname());
		System.out.println(emp.getEmpno());
		return sqlSession.selectOne("EmpDao.selectEmp", emp);
	}

}
