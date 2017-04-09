<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item.jsp</title>

</head>
<body>
${error}<br>


<div class="container">
       <h3>Warning Info</h3>
  <table style="width:400px" class="table table-condensed">
    <thead>
      <tr>
       
        <th>hazard statements</th>
        <th>description</th>

      </tr>
    </thead>
    <tbody>
    
      <tr>
        <td>${warning.hazardStatements}</td>
        <td style="color:red">${warning.description}</td>
   
       
      </tr>
    
    </tbody>
  </table>
</div>


</body>
</html>