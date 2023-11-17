<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link rel="stylesheet"
	href="./css/style.css">
<script type="text/javascript" src="./js/jquery.min.js"></script>

<style>
.usernameSpan, .passwordSpan, #captchaError, #tokenError {
	color: red;
}
</style>

<script>
	$(document).ready(function() {
		//alert("asdfasdfasdf")
		generateCaptcha();
		localStorage.removeItem('jwtToken');
		// Clear all variables from localStorage
		localStorage.clear();

	});

	function validate() {

		var username = $("#username").val();
		var password = $("#password").val();

		if (username == "" || username == null) {
			$(".usernameSpan").html("Username is required.");
			$("#username").focus();
			return false;
		}
		if (password == "" || password == null) {
			$(".passwordSpan").html("Password is required.");
			$("#password").focus();
			return false;
		}

		var txtInput = $("#txtInput").val();
		var mainCaptcha = $("#mainCaptcha").val();

		//              alert("txtInput"+txtInput);
		//              alert("mainCaptcha"+mainCaptcha);

		if (txtInput === null || txtInput === "") {
			$("#captchaError").html("Captcha is required");
			return false;
		}
		if (txtInput !== mainCaptcha) {
			$("#txtInput").val('');
			$("#captchaError").html("Given Captcha is not matched.");
			return false;
		}

		return true;
	}

	function generateCaptcha() {
		var alpha = new Array('1', '2', '3', '4', '5', '6', '7', '8', '9', '0');
		var i;
		for (i = 0; i < 4; i++) {
			var a = alpha[Math.floor(Math.random() * alpha.length)];
			var b = alpha[Math.floor(Math.random() * alpha.length)];
			var c = alpha[Math.floor(Math.random() * alpha.length)];
			var d = alpha[Math.floor(Math.random() * alpha.length)];
		}
		var code = a + '' + b + '' + '' + c + '' + d;
		document.getElementById("mainCaptcha").value = code;
	}
</script>
</head>
<body>
<img src="./images/gen.jpg" class="img-fluid" width="100%"   />
	<%@include file="/WEB-INF/openNavbar.jsp" %>
	
	<div class="d-flex flex-sm-row flex-column">
		<div class="p-2 flex-fill">
			<div class="row m-1">
				<div class="col-12 text-center text-decoration-underline">
					<h3 class="h3" style="color: blueviolet; font-size: 15px;"> STUDENT AREA</h3>
				</div>
			</div>
			<div class="container m-1 border shadow-lg">
			
				<div class="mt-4">
					<i class="fa-solid fa-1x fa-user-plus"></i> 
					&nbsp;&nbsp;<a href="./studentRegStep1">REGISTRATION </a>
				</div>
				<div class="mt-4">
					<i class="fa-solid fa-1x fa-hand"></i>
					&nbsp;&nbsp;<a href="./applyForITIStepOne">APPLY FOR ITIs </a>
				</div>
				<div class="mt-4">
					<i class="fa-solid fa-user-pen"></i>
					&nbsp;&nbsp;<a href="./stdEditDetailsPageStep1">EDIT REGISTRATION DETAILS</a>
				</div>
				<div class="mt-4 mb-4">
					<i class="fa-solid fa-id-card"></i>
					&nbsp;&nbsp;<a href="stdForgotRegid">FORGOT REGISTRATION ID</a>
				</div>
				
			</div>
		</div>
		<div class="p-2   flex-fill"></div>
		<div class="p-2   flex-fill">

			<div class="row m-1">
				<div class="col-12 text-center text-decoration-underline">
					<h3 class="h3" style="color: blueviolet; font-size: 15px;">OFFICIAL's
						LOGIN</h3>
				</div>
			</div>

			<div class="container m-1 border shadow-lg">
				<form:form action="./userLogin" method="post" modelAttribute="bean">

					<div class="row m-1">
						<div class="col-lg-12 col-md-6">
							<label class="form-label">Username&nbsp;&nbsp;</label>
							<form:input path="username" class="form-control" id="username" />
							<form:errors path="username" class="text-danger" />
							<span class="usernameSpan"></span>
						</div>
					</div>

					<div class="row m-1">
						<div class="col-lg-12 col-md-6">
							<label class="form-label float-md-right">Password&nbsp;&nbsp;</label>
							<form:password path="password" class="form-control" id="password" />
							<form:errors path="password" class="text-danger" />
							  <span class="passwordSpan"></span>
						</div>
					</div>
					<div class="row m-1">
						<div class="col-lg-12 col-md-6">
							<label class="form-label float-md-right">Captcha&nbsp;&nbsp;</label>
							<input type="text" id="txtInput" class="form-control"
								autocomplete="off" maxlength="4" />
						</div>
					</div>
					<div class="row m-1">
						<div class="col-lg-6 col-md-6">
							<input type="text" id="mainCaptcha" readonly="readonly"
								class="form-control"
								style='letter-spacing: 10px; font-weight: bolder; color: white; background-color: black;' />
						</div>
						<div class="col-lg-6 col-md-6">
							<i class="fas fa-sync fa-2x pt-1" onclick="generateCaptcha();"></i>
						</div>
					</div>
					<div class="row m-1 mt-3">&nbsp;&nbsp;&nbsp;
						<button type="submit" class="btn btn-success w-50"
							onclick="return validate()">Submit </button>
						<span id="captchaError"></span><br> <span id="tokenError">${msg }</span><br>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	<%@include file="/WEB-INF/footer.jsp" %>
</body>
</html>