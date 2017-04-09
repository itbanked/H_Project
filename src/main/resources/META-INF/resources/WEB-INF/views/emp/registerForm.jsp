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
<title>RegisterForm.jsp</title>

<link rel="stylesheet" href="/css/RegisterForm.css">

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<h1>Emp Register Form</h1>
	
	<form:form action="/emp/Register" method="post" modelAttribute="empForm">
		<!-- empno -->
		<div>
			<label for="empno" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>empno : </label>
			<form:input path="empno" class="Define-Input-Box"/>
			<form:errors path="empno" class="Define-Error-Region"/>
		</div>
		<!-- ename -->
		<div>
			<label for="ename" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>ename : </label>
			<form:input path="ename" class="Define-Input-Box"/>
			<form:errors path="ename" class="Define-Error-Region"/>
		</div>
		<!-- job -->
		<div>
			<label for="job" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>job : </label>
			<form:input path="job" class="Define-Input-Box"/>
			<form:errors path="job" class="Define-Error-Region"/>
		</div>
		<!-- mgr -->
		<div>
			<label for="mgr" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>mgr : </label>
			<form:input path="mgr" class="Define-Input-Box"/>
			<form:errors path="mgr" class="Define-Error-Region"/>
		</div>
		<!-- hiredate -->
		<div>
			<label for="hiredate" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>hiredate : </label>
			<form:input path="hiredate" class="Define-Input-Box"/>
			<form:errors path="hiredate" class="Define-Error-Region"/>
		</div>
		<!-- sal -->
		<div>
			<label for="sal" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>sal : </label>
			<form:input path="sal" class="Define-Input-Box"/>
			<form:errors path="sal" class="Define-Error-Region"/>
		</div>
		<!-- comm -->
		<div>
			<label for="comm" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>comm : </label>
			<form:input path="comm" class="Define-Input-Box"/>
			<form:errors path="comm" class="Define-Error-Region"/>
		</div>
		<!-- deptno -->
		<div>
			<label for="deptno" class="Define-Values"><span class="glyphicon glyphicon-pencil"></span>deptno : </label>
			<form:input path="deptno" class="Define-Input-Box"/>
			<form:errors path="deptno" class="Define-Error-Region"/>
		</div>
		<input type="submit" value="Register Emp">
	</form:form>

</body>
</html>