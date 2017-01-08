<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 상세 정보</title>

</head>
<body>
<h1>직원 상세 정보</h1>
<table border="1">
<tr>
	<th width="100">EMPNO</th>
	<th width="100">ENAME</th>
	<th width="100">JOB</th>
	<th width="100">MGR</th>
	<th width="100">HIREDATE</th>
	<th width="100">SAL</th>
	<th width="100">COMM</th>
	<th width="100">DEPTNO</th>
	<th width="100">DEPTNO</th>
</tr>

<tr>
	<td align ="center">${person.empno} </td> 
	<td align ="center"><input type="text" name="ename" value="${person.ename}"> </td>
	<td align ="center"><input type="text" name="job" value="${person.job}">   </td>
	<td align ="center"><input type="text" name="mgr" value="${person.mgr}">   </td>
	<td align ="center">${person.hireDate}</td>
	<td align ="right" ><input type="text" name="sal" value="${person.sal}">   </td>
	<td align ="right" ><input type="text" name="comm" value="${person.comm}">  </td>
	<td align ="center"><input type="text" name="deptno" value="${person.deptno}"></td>
	<td align ="center">
		<select >
			<option value="10" >10</option>
			<option value="20" >20</option>
			<option value="30" >30</option>
			<option value="40" >40</option>
		</select>
	</td>
</tr>

</table>
<a href='modify.do'> 수정 </a>
</body>
</html>