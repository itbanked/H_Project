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

	<h1>Country Register Service</h1>
	
	<form:form action="/country/register" method="post" modelAttribute="countryForm">
		<!-- Name -->
		<div>
			<label for="name" class="Define-Values">Name : </label>
			<form:input path="name" class="Define-Input-Box"/>
			<form:errors path="name" class="Define-Error-Region"/>
		</div>
		<!-- Country Code -->
		<div>
			<label for="code">Country Code : </label>
			<form:input path="code"/>
			<form:errors path="code"/>
		</div>
		<!-- continent -->
		<div>
			<label for="continent">Continent : </label>
			<form:input path="continent"/>
			<form:errors path="continent"/>
		</div>
		<!-- region -->
		<div>
			<label for="region">Region : </label>
			<form:input path="region"/>
			<form:errors path="region"/>
		</div>
		<!-- surfaceArea -->
		<div>
			<label for="surfaceArea">Surface Area : </label>
			<form:input path="surfaceArea"/>
			<form:errors path="surfaceArea"/>
		</div>
		<!-- indepYear -->
		<div>
			<label for="indepYear">IndepYear : </label>
			<form:input path="indepYear"/>
			<form:errors path="indepYear"/>
		</div>
		<!-- population -->
		<div>
			<label for="population">Population : </label>
			<form:input path="population"/>
			<form:errors path="population"/>
		</div>
		<!-- lifeExpectancy -->
		<div>
			<label for="lifeExpectancy">Life Expectancy : </label>
			<form:input path="lifeExpectancy"/>
			<form:errors path="lifeExpectancy"/>
		</div>
		<!-- gnp -->
		<div>
			<label for="gnp">GNP : </label>
			<form:input path="gnp"/>
			<form:errors path="gnp"/>
		</div>
		<!-- gnpOld -->
		<div>
			<label for="code">GNP - Old : </label>
			<form:input path="gnpOld"/>
			<form:errors path="gnpOld"/>
		</div>
		<!-- localName -->
		<div>
			<label for="localName">LocalNamee : </label>
			<form:input path="localName"/>
			<form:errors path="localName"/>
		</div>
		<!-- Government Form -->
		<div>
			<label for="governmentForm">Government Form : </label>
			<form:input path="governmentForm"/>
			<form:errors path="governmentForm"/>
		</div>
		<!-- headOfState-->
		<div>
			<label for="headOfState">Head Of State : </label>
			<form:input path="headOfState"/>
			<form:errors path="headOfState"/>
		</div>
		<!-- Capital -->
		<div>
			<label for="capital">Capital : </label>
			<form:input path="capital"/>
			<form:errors path="capital"/>
		</div>
		<!-- Country Code[2] -->
		<div>
			<label for="code2">Country Code[2] : </label>
			<form:input path="code2"/>
			<form:errors path="code2"/>
		</div>
		<input type="submit" value="Register Country">
	</form:form>

</body>
</html>