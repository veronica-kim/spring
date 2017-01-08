<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>신규 등록</title>
<script>

</script>
</head>
<body>

<h1>직원 신규 등록</h1>
<form action='insert' method='post'>

직원번호 : <input type="text" id="empno" name="empno"><br>
직원이름 : <input type="text" id="ename" name="ename"><br>
직원직무 : <input type="text" id="job" name="job"><br>
담당매니저번호 : <input type="text" id="mgr" name="mgr"><br>
고용일자 : <input type="text" id="hireDate" name="hireDate"><br>
월급 : <input type="text" id="sal" name="sal"><br>
수당 : <input type="text" id="comm" name="comm"><br>
팀번호 : <input type="text" id="deptno" name="deptno"><br>

<input type="submit" value="등록" >
</form>

</body>
</html>