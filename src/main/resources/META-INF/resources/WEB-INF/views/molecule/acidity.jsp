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
       <h3>Acidity Info</h3>
  <table style="width:400px" class="table table-condensed">
    <thead>
      <tr>
<!--         <td>pka</td> -->
        <td>acidity</td>
        <td>note</td>
       

      </tr>
    </thead>
    <tbody>
    
      <tr>
<%--         <td>${molecule.acidity}</td> --%>
        <td style="color:red">${acidity.acidity}</td>
        <td style="color:red">${acidity.note}</td>
      </tr>
    
    </tbody>
  </table>
</div>


</body>
</html>