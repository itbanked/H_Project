<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>unregisterForm.jsp</title>

<link rel="stylesheet" href="/css/RegisterForm.css">

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>Salary Remove Form</h1>
<div class="preButton">
	<a class="btn btn-sm" href="/sal/page/${param.pageNo}">
	<span class="glyphicon glyphicon-arrow-left"></span> Sal Page</a>
</div>

<form:form action="/sal/unregister/${salno}?pageNo=${param.pageNo}" method="post" modelAttribute="sal">
		<!-- salno -->
		<div>
			<label for="salno"  class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			sal_No</label>
			<form:input path="salno" readonly="true" class="Define-Input-Box"/>
		</div>
		<!-- basicSal -->
		<div>
			<label for="basicSal"  class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Basic Salary</label>
			<form:input path="basicSal" readonly="true" class="Define-Input-Box"/>
			<form:errors path="basicSal" class="Define-Error-Region"/>
		</div>
		<!-- overtimeSal -->
		<div>
			<label for="overtimeSal"  class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Overtime Salary</label>
			<form:input path="overtimeSal" readonly="true" class="Define-Input-Box"/>
			<form:errors path="overtimeSal" class="Define-Error-Region"/>
		</div>
		<!-- comm -->
		<div>
			<label for="comm"  class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Commission</label>
			<form:input path="comm" readonly="true" class="Define-Input-Box"/>
			<form:errors path="comm" class="Define-Error-Region"/>
		</div>
		<!-- aidSal -->
		<div>
			<label for="aidSal"  class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Aid Salary</label>
			<form:input path="aidSal" readonly="true" class="Define-Input-Box"/>
			<form:errors path="aidSal" class="Define-Error-Region"/>
		</div>
		<!-- saldate -->
		<div>
			<label for="saldate" class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Salary Date</label>
			<form:radiobutton path="saldate" value="10" label="intern Salary Date: 10" checked="${ sal.saldate eq '10' ? 'checked' : '' }" disabled="true"/><BR>
			<form:radiobutton path="saldate" value="20" label="employee Salary Date: 20" checked="${ sal.saldate eq '10' ? '' : 'checked' }" disabled="true" style="margin-left:203px;"/>
			<form:errors path="saldate" class="Define-Error-Region"/>
		</div>
		<!-- membersrl -->
		<div>
			<label for="membersrl"  class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Member Serial</label>
			<form:input path="membersrl" readonly="true" class="Define-Input-Box"/>
			<form:errors path="membersrl" class="Define-Error-Region"/>
		</div>
		<input type="submit" value="Remove Salary">
</form:form>
</body>
</html>