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
</head>
<body onload="return generateCaptcha();">
	<img src="/images/gen.jpg" class="img-fluid" width="100%" />
	<%@include file="/WEB-INF/openNavbar.jsp"%>
	
	<div class="container border p-2 mt-2 bg-light rounded-3">
		<form action="./updateStdReg" method="post">
			<div class="row m-1">
				<div class="col-12 text-center">
					<h3 class="h3" style="color: blueviolet; font-size: 15px;">
						Edit Form for Admission into the industrial training Institute for the session 2023</h3>
				</div>
			</div>

			<div class="row m-1">
				<div class="col-12  text-warning">
					<h6 class="h6">Attention: Enter data carefully, If any
						information found wrong in Marks/GPA, Caste, etc. , the authority
						has the right to disqualify for admissions.</h6>
				</div>
			</div>

			<div class="row m-1">
				<div class="col-12 text-center text-info text-underline">
					<h5 class="h5">PERSONAL DETAILS</h5>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Hall Ticket Number</label> <input
						type="text" class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Board </label> <input type="text"
						class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Year of Pass</label> <input type="text"
						class="form-control" />
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Month of Pass</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="03">March</option>
						<option value="04">Supplementary</option>
					</select>
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Applicants Name </label> <input
						type="text" class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Mobile Number</label> <input type="text"
						class="form-control" />
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Date of Birth(mm-dd-yyyy):</label> <input
						type="date" class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Aadhar Card Number </label> <input
						type="text" class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Gender</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Category</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
					</select>
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Father Name</label> <input type="text"
						class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Physically Challenged </label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="yes">Yes</option>
						<option value="no">No</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<label class="form-label">mothers Name</label> <input type="text"
						class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">PWD Category</label> <input type="text"
						class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Ex-Servicemen </label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="yes">Yes</option>
						<option value="no">No</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Qualification</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="yes">Yes</option>
						<option value="no">No</option>
					</select>
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Local/Non Local</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="Local">Local</option>
						<option value="NonLocal">Non-Local</option>
					</select>
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Pincode </label> <input type="text"
						class="form-control" />
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<label class="form-label">E-Mail</label> <input type="text"
						class="form-control" />
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Economic Weaker Section</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="yes">Yes</option>
						<option value="no">No</option>
					</select>
				</div>
				<div class="col-lg-4 col-md-6">
					<label class="form-label">Address </label>
					<textarea rows="2" class="form-control"></textarea>
				</div>
			</div>

			<div class="row m-1">
				<div class="col-12 text-center text-info text-underline">
					<h5 class="h5">MARKS DETAILS</h5>
				</div>
			</div>

			<div class="row mb-1">
				<div class="col-lg-2 col-md-6"></div>
				<div class="col-lg-3 col-md-6">Number of Languages</div>
				<div class="col-lg-2 col-md-6">
					<input class="form-check-input" type="checkbox" value="sub1"
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> TWO </label>
				</div>
				<div class="col-lg-2 col-md-6">
					<input class="form-check-input" type="checkbox" value="sub2"
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> THREE </label>
				</div>
				<div class="col-lg-2 col-md-6"></div>
			</div>

			<div class="row m-4">
				<div class="col-lg-2">
					<label class="form-label">First language</label> <input type="text"
						class="form-control w-50" />
				</div>
				<div class="col-lg-2">
					<label class="form-label">Second Language</label> <input
						type="text" class="form-control  w-50" />
				</div>
				<div class="col-lg-2">
					<label class="form-label">Third Language- English</label> <input
						type="text" class="form-control  w-50" />
				</div>
				<div class="col-lg-2">
					<label class="form-label">Mathematics </label> <input type="text"
						class="form-control  w-50" />
				</div>
				<div class="col-lg-2">
					<label class="form-label">General Science</label> <input
						type="text" class="form-control  w-50" />
				</div>
				<div class="col-lg-2">
					<label class="form-label">Social Studies</label> <input type="text"
						class="form-control  w-50" />
				</div>
			</div>
 

			<br>
			<div class="row m-1">
				<div class="col-lg-12 col-md-12">
					<label class="form-label">Upload Photo </label> <input type="file">
					<label class="form-label text-danger">File less than 200kb
						and Must be jpg,png,jpeg images. </label>

				</div>
			</div>

			<br>
			<div class="row m-1">
				<div class="col-lg-12 col-md-12">
					<input type="checkbox"> Above information is correct to the
					best of my knowledge and I hereby give my consent to the use of
					Aadhaar Number provided in the application to carryout identity
					verification for admission process. If any information found wrong,
					the authority may cancel my admission at any time without any prior
					notice.
				</div>
			</div>

			<div class="row m-1">
				<div class="col-12" align="center">
					<input type="submit" value="Update" class="btn btn-success" />
				</div>
			</div>
		</form>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/footer.jsp"%>
	
	<script>
		function validate(){
			document.forms[0].action="./stdEditDetailsPage";
			document.forms[0].submit();
		}
	</script>

</body>
</html>