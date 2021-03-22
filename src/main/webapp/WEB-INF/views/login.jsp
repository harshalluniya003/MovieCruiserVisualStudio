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
<title>Login</title>

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

		<div class="two-column">
			<form action="login" method="post">

				<div class="imgcontainer"></div>

				<div class="container">
					<label for="uname"><b>Username</b></label> <input type="text"
						placeholder="Enter Username" name="uname" required id="uname">

					<label for="psw"><b>Password</b></label> <input type="password"
						placeholder="Enter Password" name="psw" required id="psw">

					<button type="submit">Login</button>
					<br> <label> <input type="checkbox" checked="checked"
						name="remember"> Remember me
					</label> <label id="kkkkkkk"></label>
				</div>
			</form>
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