<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registerForm.jsp</title>

<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	 $( function() {
    	$( "#datepicker").datepicker({
    		
    	});
  } );
	
</script>

</head>
<body>
<div class="container">
<h1>Register</h1>
<form:form action="/memo/register" method="post" modelAttribute="memoForm">
<table class="table table-bordered">
	<tr>
	<td><label for="mname">Title</label></td>
	<td><form:input path="mname" size="100" autocomplete="off"/>
	<form:errors path="mname"/></td>
	</tr>
	
	<tr>
	<td valign="top"><label for="mdate">등록일 </label></td>
	<td>

	<form:input path="mdate" size="100" id="datepicker"/>
	<form:errors path="mdate"/></td>
	</tr>
	
	<tr>
	<td valign="top"><label for="mcontent">내용 </label></td>
	<td><form:textarea path="mcontent" cols="101" rows="25"/>
	<form:errors path="mcontent"/></td>
	</tr>
	
		
</table>
<input type="submit" value="Memo 등록">
<a class="btn btn-info" href="/memo/page/1">목록</a>


</form:form>
</div>
</body>
</html>