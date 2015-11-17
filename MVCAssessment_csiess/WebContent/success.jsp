<!doctype html>
<html>
<head>
<title>Java Web Programming: Success Page</title>
<meta name="description" content="This is a JSP example of a success page you may send users to via the RequestDispatcher when your application completes an action successfully." />
<%@ include file="include/styles.jsp"  %>
</head>
<body>
<div class="container">
	<div class="hero-unit">
		<h1>Success</h1>
	</div>
	<%@ include file="include/navigation.jsp"  %>
	<div class="container">
		<p>${success}</p>
	</div>
	<hr />
<%@ include file="include/footer.jsp"  %>