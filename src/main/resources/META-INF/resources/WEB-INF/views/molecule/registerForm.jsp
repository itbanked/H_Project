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
	 

        
	<!-- name -->
	<div>
		<label for="name">Name:</label>
		<form:input path="name" class="Define-Input-Box"/>
		<form:errors path="name" class="Define-Error-Region"/>
	</div>
	<!-- chemicaFormula -->
	<div>
		<label for="chemicalFormula">chemical formula:</label>
		<form:input path="chemicalFormula" class="Define-Input-Box"/>
		<form:errors path="chemicalFormula" class="Define-Error-Region"/>
	</div>


	<!-- density -->
	<div>
		<label for="density">density:</label>
		<form:input path="density" class="Define-Input-Box"/>
		<form:errors path="density" class="Define-Error-Region"/>
	</div>


	<!-- averageMeltingPoint -->
	<div>
		<label for="averageMeltingPoint">average melting point:</label>
		<form:input path="averageMeltingPoint" class="Define-Input-Box"/>
		<form:errors path="averageMeltingPoint" class="Define-Error-Region"/>
	</div>
	
	<!-- solubilityInWater -->
	<div>
		<label for="solubilityInWater">solubility in water:</label>
		<form:input path="solubilityInWater" class="Define-Input-Box"/>
		<form:errors path="solubilityInWater" class="Define-Error-Region"/>
	</div>
	
	<!-- acidity -->
	<div>
		<label for="acidity">acidity:</label>
		<form:input path="acidity" class="Define-Input-Box"/>
		<form:errors path="acidity" class="Define-Error-Region"/>
	</div>
	
	<!-- hazardStatements -->
	<div>
		<label for="hazardStatements" class="Define-Values">hazard statements:</label>
		<form:select path="hazardStatements" class="Define-Input-Box">
			<form:option value="toxic"/>
			<form:option value="H319"/>
			<form:option value="H304"/>
			<form:option value="NFPA704_3_1_0"/>
			<form:option value="NFPA704_0_1_0"/>
		</form:select>
		<form:errors path="hazardStatements" class="Define-Error-Region"/>
	</div>
	
	<!-- note -->
	<div>
		<label for="note">note:</label>
		<form:input path="note" class="Define-Input-Box"/>
		<form:errors path="note" class="Define-Error-Region"/>
	</div>

	<input class="btn btn-primary" type="submit" value="register">
</form:form>
</body>
</html>