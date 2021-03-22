<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
<title>SignUp</title>
</head>
<body>


	<nav class="navbar navbar-expand-md bg-primary navbar-dark">
		<a class="navbar-brand" href="#">Movie Cruiser <i
			class='fas fa-film' style='font-size: 45px'></i></a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Movies</a></li>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
			</ul>
		</div>
	</nav>
<div>
	<div class="container">
		<div class="table">
			<h1>Movies</h1>
			<table class="table table-dark table_hover table-bordered">
				<h1 style="font-size: 25px; text-align: center;">Signup</h1>
				<div class="top-row">
					<div class="field-wrap">
						<label> Username<span class="req">=</span>
						</label> <input type="text" placeholder="Enter Username" name="username"
							required autocomplete="off" />
					</div>
					</div>

					<div class="field-wrap">
						<label> Password<span class="req">=</span>
						</label> <input type="password" placeholder="Enter Password"
							name="password" required autocomplete="off" /> <label>
							Confirm <br>Password<span class="req">=</span>
						</label> <input type="password" placeholder="Enter Confirm Password"
							required autocomplete="off" />
					</div>
				</div>

				<div class="clearfix">
					<button type="submit" class="btn btn-warning"
						style="background-color: #005b96; margin-left: 40%;">Signup</button>

				</div>
			</table>
		</div>
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