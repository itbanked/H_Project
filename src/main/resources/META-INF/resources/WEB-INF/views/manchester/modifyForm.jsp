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
<h1>Team Modify</h1>
<form:form action="/manchester/modify" method="post" modelAttribute="manchesterForm" class="form-horizontal">
	
	<div class="form-group">
		<label for="idno" class="control-label col-sm-1">Idno : </label>
		<form:input path="idno" readonly="true" class="col-sm-3"/>
	</div>
	
	
	<div class="form-group">
		<label for="team" class="control-label col-sm-1">Team : </label>
		<form:input path="team" class="col-sm-3"/>
		<form:errors path="team" class="col-sm-3"/>
	</div>
	<div class="col-sm-offset-3">
		<input type="submit" value="Team 수정" class="btn-sm btn-primary">
	</div>
</form:form>
</div>
</body>
</html>