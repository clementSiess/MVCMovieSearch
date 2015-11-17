<!doctype html>
<html>
<head>
<title>Java Web Programming: Error Page</title>
<meta name="description" content="This is a JSP example of an error page you may send users to via the RequestDispatcher when your application encounters a problem." />
<%@ include file="include/styles.jsp"  %>
</head>
<body>
<div class="container">
	<div class="hero-unit">
		<h1>Error</h1>
	</div>
	<%@ include file="include/navigation.jsp"  %>
	<div class="container">
		<p>${error}</p>
	</div>
	<hr />
<%@ include file="include/footer.jsp"  %>