<%@ page import="edu.cvtc.web.exception.MovieSearchException"%>
<%@ page import="edu.cvtc.web.search.MovieSearch" %>
<%@ page import="edu.cvtc.web.search.impl.MovieSearchImpl" %>
<%@ page import="edu.cvtc.web.model.Movie" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<title>Java Web Programming: Search Results</title>
<meta name="description" content="This is a JSP example that demonstrates how to output the search results for any type of querry for the movie table." />
<%@ include file="include/styles.jsp"  %>
</head>
<body>
<div class="container">
	<div class="hero-unit">
		<h1>Movie List</h1>
	</div>
	<%@ include file="include/navigation.jsp"  %>
	<div class="container">

	<c:choose>
		<c:when test="${empty movie}">
			<p>Sorry, the list of movie is empty.</p>
		</c:when>
		<c:otherwise>
			<c:forEach var="movie" items="${movie}">
				<div class="span4">
					<h2>${movie.title}</h2>
				    <p>${movie.title}, directed by ${movie.director} is ${movie.minutes} minutes long. 
				       Starring: 
					<c:forEach var="star" items="${movie.stars}" varStatus="loopCount">
						${star.name}<c:if test="${!loopCount.last}"> and </c:if></c:forEach>.</p>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>

	</div>
	<hr />
<%@ include file="include/footer.jsp"  %>