<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>

</head>
<body>


<div class="container">
  <h2>Organic Molecule List</h2>         
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>name</th>
        <th>chemical formula</th>
        <th>density</th>
        <th>average melting point</th>
        <th>solubility in water</th>
        <th>acidity</th>
        <th>hazard statements</th>
        <th>note</th>
        <th>mass</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="molecule" items="${molecules}">
      <tr>
        <td>${molecule.name}</td>
        <td>${molecule.chemicalFormula}</td>
        <td>${molecule.density}</td>
        <td>${molecule.averageMeltingPoint}</td>
        <td>${molecule.solubilityInWater}</td>
        <td>${molecule.acidity}</td>
        <td>${molecule.hazardStatements}</td>
        <td>${molecule.note}</td>
        <td>${molecule.mass.molarMass}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>




</body>
</html>