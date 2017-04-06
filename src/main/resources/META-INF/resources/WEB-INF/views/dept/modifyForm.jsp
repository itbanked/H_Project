<%@page import="org.springframework.web.context.annotation.SessionScope"%>
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
<title>Modify emp</title>

<link rel="stylesheet" href="/css/RegisterForm.css">

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<h1>Dept Modify Form</h1>
	
	<form:form action="/dept/modify" method="post" modelAttribute="deptForm">
		<!-- deptno -->
		<div>
			<label for="deptno" class="Define-Values">deptno : </label>
			<form:input path="deptno" class="Define-Input-Box" readonly="true"/>
			<form:errors path="deptno" class="Define-Error-Region"/>
		</div>
		<!-- dname -->
		<div>
			<label for="dname" class="Define-Values">dname : </label>
			<form:input path="dname" class="Define-Input-Box"/>
			<form:errors path="dname" class="Define-Error-Region"/>
		</div>
		<!-- loc -->
		<div>
			<label for="loc" class="Define-Values">loc : </label>
			<form:input path="loc" class="Define-Input-Box"/>
			<form:errors path="loc" class="Define-Error-Region"/>
		</div>
		<input type="submit" value="Modify Dept">
	</form:form>

</body>
</html>