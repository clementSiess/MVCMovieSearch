<%@page import="edu.cvtc.web.model.Movie"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
<title>Java Web Programming: Movies</title>
<meta name="description" content="This is a JSP example that demonstrates how to output every Movie in our database to a web page." />
<%@ include file="include/styles.jsp"  %>
</head>
<body>
<div class="container">
	<div class="hero-unit">
		<h1>Movie List</h1>
	</div>
	<%@ include file="include/navigation.jsp"  %>
	<div class="container">
		<c:forEach var="movie" items="${movies}">
			<div class="span4">
				<h2>${movie.title}</h2>
				<p>${movie.title}, directed by ${movie.director} is ${movie.minutes} long. 
				Starring: 
				<c:forEach var="star" items="${movie.stars}" varStatus="loopCount">
					${star.name}<c:if test="${!loopCount.last}"> and </c:if></c:forEach>.
				</p>
			</div>
		</c:forEach>
	</div>
	<hr />
<%@ include file="include/footer.jsp"  %>