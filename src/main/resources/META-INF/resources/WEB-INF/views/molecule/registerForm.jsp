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
<title>registerForm.jsp</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>register</h1>
<form:form action="/molecule/register" method="post" modelAttribute="cityForm">
	 

        
	<!-- Name -->
	<div>
		<label for="name">Name:</label>
		<form:input path="name"/>
		<form:errors path="name"/>
	</div>

	
	<!-- CountryCode -->
	<div>
		<label for="chemicaFormula">chemical formula:</label>
		<form:input path="chemicaFormula"/>
		<form:errors path="chemicaFormula"/>
	</div>


	<!-- district -->
	<div>
		<label for="density">density:</label>
		<form:input path="density"/>
		<form:errors path="density"/>
	</div>


	<!-- population -->
	<div>
		<label for="averageMeltingPoint">average melting point:</label>
		<form:input path="population"/>
		<form:errors path="population"/>
	</div>
	
	<!-- population -->
	<div>
		<label for="population">solubility in water:</label>
		<form:input path="population"/>
		<form:errors path="population"/>
	</div>
	
	<!-- population -->
	<div>
		<label for="population">acidity:</label>
		<form:input path="population"/>
		<form:errors path="population"/>
	</div>
	
	<!-- population -->
	<div>
		<label for="population">hazard statements:</label>
		<form:input path="population"/>
		<form:errors path="population"/>
	</div>
	
	<!-- population -->
	<div>
		<label for="population">note:</label>
		<form:input path="population"/>
		<form:errors path="population"/>
	</div>

	<input type="submit" value="city등록">
</form:form>
</body>
</html>