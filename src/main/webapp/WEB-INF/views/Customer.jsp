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
<title>Customer</title>

</head>
<body>
	<div id="section1">
		<header>
			<nav>
				<div class="start">
					<p>truYum</p>
					<i class='fas fa-hamburger' style='font-size: 36px'></i>
				</div>

				<div class="start">
					<a href="car"><span>Cart </span></a>
				</div>
			</nav>
		</header>
	</div>
	<div class="search-section">
		<div class="search-container">
			<div class="seach-bar">
				<p id="findfood">Find Food</p>
				<button class="searchBTN">
					<i class='fas fa-coffee' style="font-size: 20px"></i>
				</button>
				<input type="text" placeholder="Search food" id="searchFood">
			</div>
		</div>
	</div>

	<div>
		<h3>
			<font color="red">${Iteam_Added}</font>
		</h3>
	</div>

	<div class="container-fluid">
		<c:forEach items="${listCust}" var="item">
			<div class="col-3">
				<div class="pic-1">

					<img src="${item.image}" height="300px" width="100%">
					<div class="description">
						<div class="top">
							<div class="description-1">
								<p>${item.me_name}</p>
							</div>
							<div class="description-1">
								<p>Rs. ${item.me_price}</p>
							</div>
						</div>
						<div class="bottom">
							<div class="description-2">
								<p>${item.me_active}<span>${item.me_category}</span>
								</p>
							</div>
							<div class="description-2">
								<p>
									<i class='fas fa-truck' style='font-size: 24px'></i><span>Free</span>
								</p>
							</div>
							<div class="atc-container">
								<a href="cart?menu_id=${item.me_id}">
									<button class="atcbutton" style="">
										</i> <i class="fa fa-shopping-cart" style="font-size: 24px"></i>
										Add to cart
									</button>
								</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</c:forEach>
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