<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>ITI Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="./css/style.css">
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/siteScript.js"></script>

<script>
	function validate(){
		//alert("validate");
		var ssc_regno = document.getElementById("ssc_regno").value;
		var passed_year = document.getElementById("passed_year").value;
		
		var txtInput = document.getElementById("txtInput").value;
		var mainCaptcha = document.getElementById("mainCaptcha").value;
		
		
		if(ssc_regno == "" || ssc_regno == null){ $("#ssc_regnoError").html("SSC/8th Hall Ticket Number is required please enter."); $("#ssc_regnoError").css({"color": "red"}); $("#ssc_regnoError").focus(); return false; }
		if (!ssc_regno.match('^[0-9A-Z]{6,15}$')) { $("#ssc_regnoError").html("SSC/8th Hall Ticket Number is in invalid format."); $("#ssc_regnoError").css({"color": "red"}); $("#ssc_regnoError").focus(); return false; }
		
		if(passed_year == "" || passed_year == null){ $("#passed_yearError").html("Year Of Passing is required please enter."); $("#passed_yearError").css({"color": "red"}); $("#passed_yearError").focus(); return false; }
		if (!passed_year.match('^[0-9 ]{4}$')) { $("#passed_yearError").html("Year Of Passing is in invalid format."); $("#passed_yearError").css({"color": "red"}); $("#passed_yearError").focus(); return false; }
		
		if(txtInput == "" || txtInput == null){  $("#captchaErr").html("Captcha is required please enter."); $("#captchaErr").css({"color": "red"}); $("#captchaErr").focus(); return false; }
		
		if(txtInput !== mainCaptcha){ $("#captchaErr").html("Given captcha is not matched."); $("#captchaErr").css({"color": "red"}); return false; } 
	}
	function checkValue(a){
		document.getElementById(a).innerHTML = '';
	}
</script>

</head>
<body onload="return generateCaptcha();">
<img src="/images/gen.jpg" class="img-fluid" width="100%" />
	<%@include file="/WEB-INF/openNavbar.jsp"%>
	
	<div class="container border p-2 mt-2 bg-light rounded-3 w-50">
		
			<div class="row m-1">
				<div class="col-12 text-center text-decoration-underline">
					<h3 class="h3" style="color: blueviolet; font-size: 15px;">
						FIND STUDENT REGISTRATION ID</h3>
				</div>
			</div>
			<div class="row m-1 ">
				<div class="col-lg-12 col-md-6">
					<label class="form-label">SSC/8th Hall Ticket Number</label> 
					<input type="text"  class="form-control" name="ssc_regno" id="ssc_regno" onchange="return checkValue('ssc_regnoError')" />
				<span id="ssc_regnoError"></span>
				</div>
			</div>
			<div class="row m-1">
				<div class="col-lg-12 col-md-6">
					<label class="form-label">Year Of Passing</label>
					<input type="text"  class="form-control" name="passed_year" id="passed_year" onchange="return checkValue('passed_yearError')" />
				<span id="passed_yearError"></span>
				</div>
			</div>
			<div class="row m-1">
				<div class="col-lg-12 col-md-6">
					<label class="form-label float-md-right">Captcha&nbsp;&nbsp;</label>
					<input type="text" id="txtInput" class="form-control" maxlength="4" autocomplete="off" onchange="return checkValue('captchaErr')" />
				</div>
			</div>
			<div class="row m-1">
				<div class="col-lg-3 col-md-6">
					<input type="text" id="mainCaptcha" readonly="readonly"
						class="form-control"
						style='letter-spacing: 10px; font-weight: bolder; color: white; background-color: black;' />
				</div>
				<div class="col-lg-3 col-md-6">
					<i class="fas fa-sync fa-2x pt-1" onclick="generateCaptcha();"></i>
				</div>
			</div>
			<div class="row">
			<div class="col-lg-6 col-md-6"><span id="captchaErr"></span></div>
		</div>
			<div class="row m-1">
				&nbsp;&nbsp;&nbsp;
				<button type="submit" class="btn btn-success w-50"
					onclick="return validate()">Submit</button>
				<span id="captchaError"></span><br> <span id="tokenError">${msg }</span><br>
			</div>
	
	</div>

	
	
	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/footer.jsp"%>
	
	

</body>
</html>