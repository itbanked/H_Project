<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ModifyForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<h1>Modify Success!</h1>
	
	<div class="text-center table-responsive">
	<table class="table table-bordered">
		<tr class="danger">
			<td>emp_No</td>
			<td>ename</td>
			<td>job</td>
			<td>mgr</td>
			<td>hiredate</td>
			<td>sal</td>
			<td>comm</td>
			<td>dept_No</td>
		</tr>
		<tr>
			<td>${emp.emono}</td>
			<td>${emp.ename}</td>
			<td>${emp.job == null ? 'null' : emp.job}</td>
			<td>${emp.mgr == null ? 'null' : emp.mgr}</td>
			<td>${emp.hiredate == null ? 'null' : emp.hiredate}</td>
			<td>${emp.sal == null ? 'null' : emp.sal}</td>
			<td>${emp.comm == null ? 'null' : emp.comm}</td>
			<td>${emp.deptno}</td>
		</tr>
	</table>
	</div>
	
	<script>
		setTimeout("location.href='/emp/page/1'", 3000);
	</script>
</body>
</html>