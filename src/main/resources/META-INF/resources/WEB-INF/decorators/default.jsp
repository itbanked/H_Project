<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title"/></title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<sitemesh:write property="head"/>
</head>
<body>

	<%
		HttpSession CurrentSession = request.getSession();
	%>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">April Project</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/dept/page/1">Dept</a></li>
							<li><a href="/emp/page/1">Emp</a></li>
							<li><a href="/emp/salgrade">Salgrade</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">World<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/country/page/1">Country</a></li>
							<li><a href="/city/page/1">City</a></li>
							<li><a href="/language/page/1">Language</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Hyejin<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/sal/page/1">Salary</a></li>
						</ul>
					</li>
					<li class="dropdown">
<<<<<<< HEAD
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">HannaShin<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/dnltime/page/1">dnltime</a></li>
						</ul>
					</li>
=======
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Manchester United<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/manchester/list">Information</a></li>
						<li><a href="/players/page/1">Members</a></li>
					</ul>
				</li>
<<<<<<< HEAD
				
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Molecule<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/molecule/page/1">Molecule</a></li>
						<li><a href="/mass/page/1">Mass</a></li>
						<li><a href="/acidity/list">Acidity</a></li>
						<li><a href="/state/list">State</a></li>
						<li><a href="/warning/list">Warning</a></li>
					</ul>
				</li>
=======
>>>>>>> 393b32aec4b1849289071046e6732ab78a605ea6
>>>>>>> ccd1d346978ac8e047ecfd7ba40e6dbea6970dae
					<li><a href="#">Q & A</a></li>
					<li><a href="#">Documentation</a></li>
				</ul>
					
				<ul class="nav navbar-nav navbar-right">
				<%
						if ( CurrentSession.getAttribute("IsAdmin") != null ) {
							out.println("<li><a href='/Admin'><span class='glyphicon glyphicon-cog'></span> Admin</a></li>"); 
						}
						else {
							out.println("<li><a href='/User'><span class='glyphicon glyphicon-cog'></span> Settings</a></li>");
						}
	
						if ( CurrentSession.getAttribute("logged") != null ) {
							out.println("<li><a href='/Logout'><span class='glyphicon glyphicon-log-out'></span> Logout</a></li>"); 
						}
						else {
							out.println("<li><a href='/Auth'><span class='glyphicon glyphicon-log-in'></span> Login</a></li>"); 
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container">
		<sitemesh:write property="body"/>
	</div>
	


</body>
</html>













