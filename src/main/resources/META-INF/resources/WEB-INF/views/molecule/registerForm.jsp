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
<%-- <form:form action="/molecule/register" method="post" modelAttribute="moleculeForm"> --%>
<form:form action="/molecule/register?pageNo=${param.pageNo}" method="post" modelAttribute="moleculeForm">
<%-- 	<form:errors/> --%>
	 

        
	<!-- Name -->
	<div>
		<label for="name" class="Define-Values">Name:</label>
		<form:input path="name"/>
		<form:errors path="name"/>
	</div>

	
	<!-- chemicaFormula -->
	<div>
		<label for="chemicalFormula" class="Define-Values">chemical formula:</label>
		<form:input path="chemicalFormula"/>
		<form:errors path="chemicalFormula"/>
	</div>


	<!-- density -->
	<div>
		<label for="density" class="Define-Values">density:</label>
		<form:input path="density"/>
		<form:errors path="density"/>
	</div>


	<!-- averageMeltingPoint -->
	<div>
		<label for="averageMeltingPoint" class="Define-Values">average melting point:</label>
		<form:input path="averageMeltingPoint"/>
		<form:errors path="averageMeltingPoint"/>
	</div>
	
	<!-- solubilityInWater -->
	<div>
		<label for="solubilityInWater" class="Define-Values">solubility in water:</label>
		<form:input path="solubilityInWater"/>
		<form:errors path="solubilityInWater"/>
	</div>
	
	<!-- acidity -->
	<div>
		<label for="acidity" class="Define-Values">acidity:</label>
		<form:input path="acidity"/>
		<form:errors path="acidity"/>
	</div>
	
	<!-- hazardStatements -->
	<div>
		<label for="hazardStatements" class="Define-Values">hazard statements:</label>
		<form:input path="hazardStatements"/>
		<form:errors path="hazardStatements"/>
	</div>
	
	

	<!-- note -->
	<div>
		<label for="note" class="Define-Values">note:</label>
		<form:input path="note"/>
		<form:errors path="note"/>
	</div>

	<input class="btn btn-primary" type="submit" value="register">
</form:form>
</body>
</html>