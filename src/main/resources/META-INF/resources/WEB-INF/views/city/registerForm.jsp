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

<link rel="stylesheet" href="../css/RegisterForm.css">

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<h1>City Register Service</h1>
	
	<form:form action="/city/register" method="post" modelAttribute="cityForm">
		<!-- Name -->
		<div>
			<label for="name" class="Define-Values">Name : </label>
			<form:input path="name"/>
			<form:errors path="name"/>
		</div>
		<!-- Country Code -->
		<div>
			<label for="countryCode" class="Define-Values">Country Code : </label>
			<form:input path="countryCode"/>
			<form:errors path="countryCode"/>
		</div>
		<!-- district -->
		<div>
			<label for="district" class="Define-Values">District : </label>
			<form:input path="district"/>
			<form:errors path="district"/>
		</div>
		<!-- population -->
		<div>
			<label for="population" class="Define-Values">Population : </label>
			<form:input path="population"/>
			<form:errors path="population"/>
		</div>
		<input type="submit" value="Register City">
	</form:form>

</body>
</html>