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

function validate() {
	//alert("validate");
	var ssc_regno = document.getElementById("ssc_regno").value;
	var dob = document.getElementById("dob").value;

	
	if(ssc_regno == "" || ssc_regno == null){ $("#ssc_regnoError").html("SSC/8th Hall Ticket Number is required please enter."); $("#ssc_regnoError").css({"color": "red"}); $("#ssc_regnoError").focus(); return false; }
	if (!ssc_regno.match('^[0-9A-Z]{6,15}$')) { $("#ssc_regnoError").html("SSC/8th Hall Ticket Number is in invalid format."); $("#ssc_regnoError").css({"color": "red"}); $("#ssc_regnoError").focus(); return false; }
	
	if(dob == "" || dob == null){ $("#dobError").html("DOB is required please enter."); $("#dobError").css({"color": "red"}); $("#dobError").focus(); return false; }
	
	}
function checkValue(a){
	document.getElementById(a).innerHTML = '';
	}
</script>
</head>
<body>
<img src="/images/gen.jpg" class="img-fluid" width="100%" />
	<%@include file="/WEB-INF/openNavbar.jsp"%>

	<div class="container border p-2 mt-2 bg-light rounded-3  shadow-lg w-50">
		
			<div class="row m-1">
				<div class="col-12 text-center text-decoration-underline">
					<h3 class="h3" style="color: blueviolet; font-size: 15px;">
						APPLY FOR ITI FOR THE SESSION 2023 - PHASE 1</h3>
				</div>
			</div>

			<div class="row m-1">
				<div class="col-lg-6 col-md-6"><label class="form-label">Registration ID</label></div>
				<div class="col-lg-6 col-md-6">
					 <input type="date" class="form-control" />
				</div>
			</div>

			<div class="row m-1">
				<div class="col-lg-6 col-md-6"><label class="form-label">SSC/8th Hall Ticket Number</label></div>
				<div class="col-lg-6 col-md-6">
					  <input type="text"  class="form-control" name="ssc_regno" id="ssc_regno" onchange="return checkValue('ssc_regnoError')" />
				<span id="ssc_regnoError"></span>
				</div>
			</div>

			<div class="row m-1">
				<div class="col-lg-6 col-md-6"><label class="form-label">Date of Birth(mm-dd-yyyy)</label></div>
				<div class="col-lg-6 col-md-6">
					 <input type="date" class="form-control" name="dob" id="dob" onchange="return checkValue('dobError')" />
				<span id="dobError"></span> 
				</div>
			</div>



			<div align="center">
				<input type="reset" value="RESET" class="btn btn-info mt-1">
				<input type="submit" value="SUBMIT" class="btn btn-success mt-1" onclick="return validate();">
			</div>
		
	</div>

	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/footer.jsp"%>
</body>
</html>