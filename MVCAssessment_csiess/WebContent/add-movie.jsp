<!doctype html>
<html>
<head>
<title>Add New Movie</title>
<meta name="description" content="Add a new Movie to a database." />
<%@ include file="include/styles.jsp"  %>
</head>
<body>
<div class="container">
	<div class="hero-unit">
		<h1>Add Movie</h1>
	</div>
	<%@ include file="include/navigation.jsp"  %>
	<div class="container">
		<form action="AddMovie" method="post">
			<div class="form-group">
			
				<!-- <label for="id"><strong>Movie Id:</strong></label>
				<input name="id" /> -->
				
				<label for="title"><strong>Movie Title:</strong></label>
				<input name="title" />
				
				<label for="director"><strong>Movie Director:</strong></label>
				<input name="director" />
				
				<label for="minutes"><strong>Movie Duration in Minutes:</strong></label>
				<input name="minutes" />
					
				<label for="star1"><strong>Star 1 Name:</strong></label>
				<input name="star1" />
				
				<label for="star2"><strong>Star 2 Name:</strong></label>
				<input name="star2" />
				
				<label for="star3"><strong>Star 3 Name:</strong></label>
				<input name="star3" />
				<br /> <br />


				
				<input class="btn btn-primary btn-lg" type="submit" value="Add Movie" />
			</div>
		</form>
	</div>
	<hr />
<%@ include file="include/footer.jsp"  %>