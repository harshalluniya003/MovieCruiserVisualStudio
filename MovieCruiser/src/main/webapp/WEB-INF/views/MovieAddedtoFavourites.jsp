<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link type="text/css" rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Movie Added to Favourites</title>
</head>

<body>
	<!-- Uses a header that scrolls with the text, rather than staying
  locked at the top -->
	<input type="hidden" id="page" value="customer">
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header">
			<div class="mdl-layout__header-row">
				<!-- Title -->
				<span class="mdl-layout-title">Movie Cruiser</span>
				<!-- Icon -->
				<img class="mdl-layout-icon logo" src="Images/movie.png"></img>
				<!-- Add spacer, to align navigation to the right -->
				<div class="mdl-layout-spacer"></div>
				<!-- Navigation -->
				<nav class="mdl-navigation">
					<a class="mdl-navigation__link" href="MovieListCustomer.html">Movies</a>
					<a class="mdl-navigation__link" href="Favourites.html">Favourites</a>
				</nav>
			</div>
		</header>

		<main class="mdl-layout__content">
			<div class="page-content">
				<!-- Your content goes here -->
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--3-col"></div>
					<div class="mdl-cell--6-col">
						<table class="mdl-data-table mdl-js-data-table">
							<caption>
								<h3>Movies</h3>
								<p class="notif">Movie Added to Favourites Successfully</p>
							</caption>
							<br>
							<br>
							<thead>
								<tr>
									<th style="text-align: left">Title</th>
									<th style="text-align: right">Box Office</th>
									<th style="text-align: center">Genre</th>
									<th style="text-align: center">Has Teaser</th>
									<th style="text-align: center">Action</th>
								</tr>
							</thead>
							<tbody id="customer-table">
								<tr>
									<td>Avatar</td>
									<td>$2,787,965,087</td>
									<td>Science Fiction</td>
									<td>Yes</td>
									<td><a href="MovieAddedtoFavourites.html">Add to
											Favourite</a></td>
								</tr>
								<tr>
									<td>The Avengers</td>
									<td>$1,518,812,988</td>
									<td>Superhero</td>
									<td>No</td>
									<td><a href="MovieAddedtoFavourites.html">Add to
											Favourite</a></td>
								</tr>
								<tr>
									<td>Titanic</td>
									<td>$2,187,463,944</td>
									<td>Romance</td>
									<td>No</td>
									<td><a href="MovieAddedtoFavourites.html">Add to
											Favourite</a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="mdl-cell mdl-cell--3-col"></div>
				</div>
			</div>
		</main>
		<footer class="mdl-mini-footer">
			<div class="mdl-mini-footer__left-section">
				<div class="mdl-logo">Copyright &copy; 2020</div>
			</div>
		</footer>
	</div>
	<script src="script.js"></script>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>