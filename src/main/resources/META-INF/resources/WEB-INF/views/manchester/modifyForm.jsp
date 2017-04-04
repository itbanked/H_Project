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
<div class="modal-header">
   <button type="button" class="close" data-dismiss="modal">&times;</button>
   <h4 class="modal-title">Team Modify</h4>
 </div>
 <div class="modal-body">
	<form:form action="/manchester/modify" method="post" modelAttribute="manchesterForm">
		<div class="form-group">
			<label for="idno">Idno</label>
			<form:input path="idno" readonly="true" class="form-control"/>
		</div>
		<div class="form-group">
			<label for="team">Team</label>
			<form:input path="team" class="form-control"/>
			<form:errors path="team" class="form-control"/>
		</div>
			<input type="submit" value="Team 수정" class="btn-sm btn-primary">
	</form:form>
</div>
 <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
 </div>
  <script>
	$('body').on('hidden.bs.modal', '.modal', function (event) {
	    $(this).removeData('bs.modal');
	});
 </script>
</body>
</html>