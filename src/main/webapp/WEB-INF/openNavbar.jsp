<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>ITI Login Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
 <style>
body{
	background-color: #EBEADE;
	color: black;
}
</style>
<script type="text/javascript" src="./js/jquery.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			
			<a class="navbar-brand" href="#"></a>
			
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 fw-bold">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="/"><i class="fas fa-home"></i></a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="/trade_display1">ITI Profile</a>
					</li>

					<li class="nav-item dropdown"><a
						class="nav-link active dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							STRIVE </a>
						<ul class="dropdown-menu bg-light" aria-labelledby="navbarDropdown"
							id="navbar-list">
							 <li class="dropdown-item"> <a href="/AboutStrive">About Strive</a> </li>
							 <li class="dropdown-item"> <a href="/strive">Disclosure Management</a> </li>
						</ul></li>

				</ul>

			</div>
		</div>
	</nav>
</body>
</html>