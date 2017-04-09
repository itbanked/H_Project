<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>average melting point.jsp</title>

</head>
<body>
${error}<br>


<div class="container">
       <h3>average melting point Info</h3>
  <table style="width:400px" class="table table-condensed">
    <thead>
      <tr>
        <th>average melting point</th>
        <th>state</th>
        <th>note</th>

      </tr>
    </thead>
    <tbody>
    
      <tr>
        <td>${molecule.averageMeltingPoint}</td>
        <td style="color:red">${state.state}</td>
        <td style="color:red">${state.note}</td>
    
<%--        ${state}  --%>
      </tr>
    
    </tbody>
  </table>
</div>


</body>
</html>