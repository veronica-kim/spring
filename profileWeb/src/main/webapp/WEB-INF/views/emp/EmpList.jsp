<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 목록</title>
<script>
function schName(){
	var name = document.form1.ename.value;

	if ( name == "") {
		alert("검색할 이름을 입력하세요");
		return;
	}
	else
		document.form1.submit();
}
</script>
</head>
<body>
<form name="form1" method="post" action="schPerson">
<h1>직원 목록</h1>
<table border="1">
<tr>
	<th width="100">EMPNO</th>
	<th width="100">ENAME</th>
	<!-- <th width="100">JOB</th>
	<th width="100">MGR</th>
	<th width="100">HIREDATE</th>
	<th width="100">SAL</th>
	<th width="100">COMM</th>
	<th width="100">DEPTNO</th>
	 -->
</tr>

<c:forEach var="emp" items="${empList }">
<tr>
	<td align ="center">${emp.empno}</td> 
	<td align ="center"><a href='schPerson?empno=${emp.empno}'>${emp.ename}</a></td>
	<!-- <td align ="center">${emp.job}</td>
	<td align ="center">${emp.mgr}</td>
	<td align ="center">${emp.hireDate}</td>
	<td align ="right" >${emp.sal}</td>
	<td align ="right" >${emp.comm}</td>
	<td align ="center">${emp.deptno}</td>
	 -->
</tr>

</c:forEach>
</table>
<a href='add'> 신규등록 </a><br>
<input type="text" name="ename" size="20"> <input type="button" value="이름검색" onclick="schName()">
</form>
</body>
</html>