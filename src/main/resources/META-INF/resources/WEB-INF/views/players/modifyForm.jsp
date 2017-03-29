<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<div class="container">
<h1>Member Modify</h1>
<form:form action="/players/modify?pageNo=${param.pageNo}" method="post" modelAttribute="playersForm" class="animated bounceInLeft form-horizontal">

	<div class="form-group">
		<label for="idno" class="control-label col-sm-2">Idno : </label>
		<form:input path="idno" class="col-sm-3"/>
		<form:errors path="idno" class="col-sm-3"/>
	</div>
	<div class="form-group">
		<label for="memberno" class="control-label col-sm-2">Memberno : </label>
		<form:input path="memberno" class="col-sm-3"/>
		<form:errors path="memberno" class="col-sm-3"/>
	</div>
	<div class="form-group">
		<label for="backnumber" class="control-label col-sm-2">Backnumber : </label>
		<form:input path="backnumber" class="col-sm-3"/>
		<form:errors path="backnumber" class="col-sm-3"/>
	</div>
	<div class="form-group">
		<label for="position" class="control-label col-sm-2">Position : </label>
		<form:input path="position" class="col-sm-3"/>
		<form:errors path="position" class="col-sm-3"/>
	</div>
	<div class="form-group">
		<label for="name" class="control-label col-sm-2">Name : </label>
		<form:input path="name" class="col-sm-3"/>
		<form:errors path="name" class="col-sm-3"/>
	</div>
	<div class="form-group">
		<label for="nationality" class="control-label col-sm-2">Nationality : </label>
		<form:input path="nationality" class="col-sm-3"/>
		<form:errors path="nationality" class="col-sm-3"/>
	</div>
	<div class="form-group">
		<label for="dateofjoin" class="control-label col-sm-2">Date of Join : </label>
		<form:input path="dateofjoin" class="col-sm-3"/>
		<form:errors path="dateofjoin" class="col-sm-3"/>
	</div>
	<div class="col-sm-offset-4">
		<input type="submit" value="Member 수정" class="btn-sm btn-primary">
	</div>
</form:form>
</div>
</body>
</html>