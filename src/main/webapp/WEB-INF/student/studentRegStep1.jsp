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
<script type="text/javascript" src="./js/customJs/studentRegJs.js"></script>

</head>
<body onload="generateCaptcha();">
	<img src="/images/gen.jpg" class="img-fluid" width="100%" />
	<%@include file="/WEB-INF/openNavbar.jsp"%>

	<div class="container border p-2 mt-2 bg-light rounded-3 w-75"
		id="regCheckDiv">
		<div class="row m-1">
			<div class="col-12 text-center text-decoration-underline">
				<h3 class="h3" style="color: blueviolet; font-size: 15px;">
					STUDENT REGISTRATION</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6"></div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">SSC/8th Hall Ticket Number</label> <input
					type="text" class="form-control" name="ssc_regnoo" id="ssc_regnoo"
					onchange="return checkValue('ssc_regnooError')" maxlength="15" />
				<span id="ssc_regnooError"></span>
			</div>
			<div class="col-lg-4 col-md-6"></div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6"></div>
			<div class="col-lg-2 col-md-6">
				<label class="form-label">Captcha</label> <input type="text"
					id="txtInput" class="form-control" maxlength="4" autocomplete="off"
					onchange="return checkValue('captchaErr')" /><span id="captchaErr"></span>
			</div>

			<div class="col-lg-4 col-md-6"></div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6"></div>
			<div class="col-lg-4 col-md-4">
				<input type="text" id="mainCaptcha" readonly="readonly"
					class="form-control"
					style="letter-spacing: 30px; font-weight: bolder; color: white; background-color: black; margin-top: 35px;" />
			</div>
			<div class="col-lg-2 col-md-2">
				<i class="fas fa-sync fa-2x" onclick="generateCaptcha();"
					style="cursor: pointer; margin-top: 35px;"></i>
			</div>
		</div>

		<div class="row mt-4">
			<div class="col-lg-4 col-md-6"></div>
			<div class="col-lg-2 col-md-6">
				<input type="button" value="SUBMIT"
					class="form-control btn btn-success mt-1  "
					onclick="return validate();">
			</div>
			<div class="col-lg-2 col-md-6">
				<input type="reset" value="RESET"
					class="form-control btn btn-info mt-1  float-right">
			</div>
			<div class="col-lg-4 col-md-6"></div>
		</div>

	</div>
	<br>
	<div align="center" id="existRegMsg"></div>

	<div class="container border p-2 mt-2 bg-light rounded-3"
		id="stdRegDiv">
		<div class="row m-1">
			<div class="col-12 text-center text-decoration-underline">
				<h3 class="h3" style="color: blueviolet; font-size: 15px;">
					STUDENT REGISTRATION</h3>
			</div>
		</div>
		<div class="row m-1">
			<div class="col-12 text-center">
				<h3 class="h3" style="color: blueviolet; font-size: 15px;">
					Edit Form for Admission into the industrial training Institute for
					the session 2023</h3>
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
					type="text" class="form-control" name="ssc_regno" id="ssc_regno"
					readonly="readonly" disabled="disabled" /> <span
					id="ssc_regnoError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Board </label> <select
					class="form-control form-select" name="ssc_board" id="ssc_board"
					onchange="return checkValue('ssc_boardError')">
				</select> <span id="ssc_boardError"></span>

			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Year of Pass</label> <input type="text"
					name="ssc_year" id="ssc_year" class="form-control"
					onchange="return checkValue('ssc_yearError')" /> <span
					id="ssc_yearError"></span>
			</div>
		</div>

		<div class="row">

			<div class="col-lg-4 col-md-6">
				<label class="form-label">Month of Pass</label> <select
					class="form-select form-control" name="ssc_month" id="ssc_month"
					onchange="return checkValue('ssc_monthError')">
					<option value="">-select-</option>
					<option value="03">March</option>
					<option value="04">Supplementary</option>
				</select> <span id="ssc_monthError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Applicants Name </label> <input
					type="text" name="name" id="name" class="form-control"
					onchange="return checkValue('nameError')" /><span id="nameError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Mobile Number</label> <input type="text"
					name="phno" id="phno" class="form-control"
					onchange="return checkValue('phnoError')" /> <span id="phnoError"></span>
			</div>
		</div>

		<div class="row">

			<div class="col-lg-4 col-md-6">
				<label class="form-label">Date of Birth(mm-dd-yyyy):</label> <input
					type="date" name="dob" id="dob" class="form-control"
					onchange="return checkValue('dobError')" /><span id="dobError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Aadhar Card Number </label> <input
					type="text" name="adarno" id="adarno" class="form-control"
					onchange="return checkValue('adarnoError')" autocomplete="off"
					maxlength="12" /><span id="adarnoError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Gender</label> <select
					class="form-select form-control" name="gen" id="gen"
					onchange="return checkValue('genError')">
					<option value="">-select-</option>
					<option value="male">Male</option>
					<option value="female">Female</option>
				</select> <span id="genError"></span>
			</div>
		</div>

		<div class="row">

			<div class="col-lg-4 col-md-6">
				<label class="form-label">Category</label> <select
					class="form-select form-control" name="caste" id="caste"
					onchange="return checkValue('casteError')">
				</select> <span id="casteError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Father Name</label> <input type="text"
					name="fname" id="fname" class="form-control"
					onchange="return checkValue('fnameError')" /><span id="fnameError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Physically Challenged </label> <select
					class="form-select form-control" name="phc" id="phc"
					onchange="return checkValue('phcError')">
					<option value="">-select-</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select> <span id="phcError"></span>
			</div>
		</div>

		<div class="row">

			<div class="col-lg-4 col-md-6">
				<label class="form-label">mothers Name</label> <input type="text"
					name="mname" id="mname" class="form-control"
					onchange="return checkValue('mnameError')" /> <span
					id="mnameError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">PWD Category</label> <select
					class="form-select form-control" name="pwd_category"
					id="pwd_category" onchange="return checkValue('pwd_categoryError')">
					<option value="">None</option>
					<option value="1">Blind</option>
					<option value="2">Deaf</option>
					<option value="3">Motor Disability</option>
					<option value="4">Mental Disability</option>
				</select> <span id="pwd_categoryError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Ex-Servicemen </label> <select
					class="form-select form-control" name="exs" id="exs"
					onchange="return checkValue('exsError')">
					<option value="">-select-</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select> <span id="exsError"></span>
			</div>
		</div>

		<div class="row">

			<div class="col-lg-4 col-md-6">
				<label class="form-label">Qualification</label> <select
					class="form-select form-control" name="ssc" id="ssc"
					onchange="return checkValue('sscError')">
					<option value="">-select-</option>
						<option value="yes">SSC Passed</option>
						<option value="no">8th Passed</option>
				</select> <span id="sscError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Local/Non Local</label> <select
					class="form-select form-control" name="loconoc" id="loconoc"
					onchange="return checkValue('loconocError')">
					<option value="">-select-</option>
					<option value="Local">Local</option>
					<option value="NonLocal">Non-Local</option>
				</select> <span id="loconocError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Pincode </label> <input type="text"
					name="pincode" id="pincode" class="form-control"
					onchange="return checkValue('pincodeError')" /><span
					id="pincodeError"></span>
			</div>
		</div>

		<div class="row">

			<div class="col-lg-4 col-md-6">
				<label class="form-label">E-Mail</label> <input type="email"
					name="email" id="email" class="form-control"
					onchange="return checkValue('emailError')" /><span id="emailError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Economic Weaker Section</label> <select
					class="form-select form-control" name="ews" id="ews"
					onchange="return checkValue('ewsError')">
					<option value="">-select-</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select> <span id="ewsError"></span>
			</div>
			<div class="col-lg-4 col-md-6">
				<label class="form-label">Address </label>
				<textarea rows="2" class="form-control" name="addr" id="addr"
					onchange="return checkValue('addrError')"></textarea>
				<span id="addrError"></span>
			</div>
		</div>


		<div class="row m-1">
			<div class="col-12 text-center text-info text-underline">
				<h5 class="h5">MARKS DETAILS</h5>
			</div>
		</div>

		<div class="row mb-1">

			<div class="col-lg-6 col-md-6">
				<label class="form-label">SSC Marks Type</label> <select
					class="form-select form-control" name="ssc_type" id="ssc_type"
					onchange="return checkValue('ssc_typeError'), ssctype(this.value)">
					<option value="">-select-</option>
					<option value="sscm">MARKS</option>
					<option value="sscg">GPA</option>
				</select> <span id="ssc_typeError"></span>
			</div>
			<div class="col-lg-6 col-md-6">
				<label class="form-label">Number of Languages</label> <select
					name="noOfLangs" id="noOfLangs" class="form-select form-control" onchange="return checkValue('noOfLangsError'), marksdiv(this.value)">
					<option value="">-select-</option>
					<option value="3">THREE</option>
					<option value="2">TWO</option>
				</select> <span id="noOfLangsError"></span>
			</div>

		</div>

		<div class="row m-4" id="marksrow">
			<div class="col-lg-2">
				<label class="form-label">First language</label> <input type="text"
					name="first_lang" id="first_lang" class="form-control w-50" onchange="return checkValue('first_langError')"  onkeypress="return " maxlength="3" /><span id="first_langError"></span>
			</div>
			<div class="col-lg-2" id="sllabel">
				<label class="form-label" >Second Language</label> <input
					name="second_lang" id="second_lang" type="text"
					class="form-control  w-50" onchange="return checkValue('second_langError')" maxlength="3" /><span id="second_langError"></span>
			</div>
			<div class="col-lg-2">
				<label class="form-label">Third Language- English</label> <input
					name="third_lang" id="third_lang" type="text"
					class="form-control  w-50" onchange="return checkValue('third_langError')" maxlength="3" /><span id="third_langError"></span>
			</div>
			<div class="col-lg-2">
				<label class="form-label">Mathematics </label> <input type="text"
					name="maths" id="maths" class="form-control  w-50" onchange="return checkValue('mathsError')" maxlength="3" /><span id="mathsError"></span>
			</div>
			<div class="col-lg-2">
				<label class="form-label">General Science</label> <input
					name="science" id="science" type="text" class="form-control  w-50" onchange="return checkValue('scienceError')" maxlength="3" /><span id="scienceError"></span>
			</div>
			<div class="col-lg-2">
				<label class="form-label">Social Studies</label> <input type="text"
					name="social" id="social" class="form-control  w-50" onchange="return checkValue('socialError')" maxlength="3" /><span id="socialError"></span>
			</div>
		</div>


		<br>
		<div class="row m-1">
			<div class="col-lg-12 col-md-12">
				<label class="form-label">Upload Photo </label> <input type="file"
					name="photo" id="photo"> <label
					class="form-label text-danger">File less than 200kb and
					Must be jpg,png,jpeg images. </label>

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
				<input type="submit" value="Submit" class="btn btn-success"
					onclick="return sendData()" />
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/footer.jsp"%>
</body>
</html>