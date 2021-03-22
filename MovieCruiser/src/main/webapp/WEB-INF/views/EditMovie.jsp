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
<title>Edit Movie</title>
</head>

<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header">
			<div class="mdl-layout__header-row">
				<span class="mdl-layout-title">Movie Cruiser</span> <img
					class="mdl-layout-icon logo" src="Images/movie.png"></img>
				<div class="mdl-layout-spacer"></div>
				<nav class="mdl-navigation">
					<a class="mdl-navigation__link" href="MovieListAdmin.html">Movies</a>
				</nav>
			</div>
		</header>

		<main class="mdl-layout__content">
			<div class="page-content">
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--3-col"></div>
					<div class="mdl-cell--6-col">
						<caption>
							<h3>Edit Movie</h3>
						</caption>
						<form onsubmit="return myFun()" action="EditMovieStatus.html">
							<div class="form-group">
								<label for="title">Title</label> <input type="text"
									class="form-control" id="title">
							</div>
							<div class="form-row">
								<div class="form-group col-md-2">
									<label for="boxoffice">Gross ($)</label> <input type="text"
										class="form-control" id="boxoffice">
								</div>
								<div class="form-group col-md-2" style="margin: 0px 20px;">
									<label for="active">Active</label><br>
									<div style="padding: 5px;">
										<input type="radio" id="active" checked><label>Yes</label>&nbsp;&nbsp;
										<input type="radio" id="active"><label>No</label>
									</div>
								</div>
								<div class="form-group col-md-3">
									<label for="dateOfLaunch">Date of Launch</label> <input
										type="date" class="form-control" id="dateOfLaunch">
								</div>
								<div class="form-group col-md-3">
									<label for="genre">Genre</label> <select id="genre"
										class="form-control">
										<option selected>Choose</option>
										<option value="Science Fiction">Science Fiction</option>
										<option value="Superhero">Superhero</option>
										<option value="Romance">Romance</option>
										<option value="Comedy">Comedy</option>
										<option value="Adventure">Adventure</option>
										<option value="Thriller">Thriller</option>
									</select>
								</div>

							</div>
							<div class="form-group">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="hasteaser">
									<label class="form-check-label" for="gridCheck"> Has
										Teaser </label>
								</div>
							</div>
							<button
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect"
								type="submit" id="save">Save</button>
						</form>

					</div>
					<div class="mdl-cell mdl-cell--3-col"></div>
				</div>
			</div>
		</main>
	</div>
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