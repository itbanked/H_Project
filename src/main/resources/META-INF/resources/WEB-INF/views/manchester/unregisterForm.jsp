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
<h4 class="modal-title">Team delete</h4>
</div>
<div class="modal-body">
	<table class="table table-striped">
		<tr class="info" align="center">
			<td><b>Idno</b></td>
			<td><b>Team</b></td>
		</tr>
		<tr align="center">
			<td>${manchester.idno}</td>
			<td>${manchester.team}</td>
		</tr>
	</table>
	<form action="/manchester/unregister/${idno}" method="post">
		<input type="submit" value="Team delete"  class="btn-sm btn-danger">
	</form>
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