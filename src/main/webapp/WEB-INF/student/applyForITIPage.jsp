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
<style>
span {
	font-weight: bold;
}
</style>
</head>
<body>
	<img src="/images/gen.jpg" class="img-fluid" width="100%" />
	<%@include file="/WEB-INF/openNavbar.jsp"%>

	<div class="container border p-2 mt-2 bg-light rounded-3 shadow-lg">

		<div class="row m-1">
			<div class="col-12 text-center text-decoration-underline">
				<h5 class="h5" style="color: blueviolet;">APPLY FOR ITI FOR THE
					SESSION 2023 - PHASE 1</h5>
			</div>
		</div>

		<div class="row border p-1">
			<div class="col-12 text-center">
				<div class="text-center text-info">APPLIED ITIs</div>
			</div>
			<div class=" table-responsive">
				<table class="table table-bordered table-stripped">
					<thead>
						<tr>
							<th>S.No</th>
							<th>ITI Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1.</td>
							<td>Govt ITI Narsipatnam</td>
							<td><a href="#">Delete</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>


		<form method="post" action="./saveStdApplication">
			<div class="row  border p-1">
				<div class="col-12 text-center">
					<div class="text-center text-info">APPLYING FOR ITIs</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<label class="form-label">District Name</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="11">Srikakulam</option>
						<option value="12">Kurnool</option>
					</select>
				</div>
				<div class="col-lg-3 col-md-6">
					<label class="form-label">Government / Private ITIs</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="G">Government</option>
						<option value="P">Private</option>
					</select>
				</div>
				<div class="col-lg-3 col-md-6">
					<label class="form-label">ITI Name</label> <select
						class="form-select form-control">
						<option value="">-select-</option>
						<option value="1111">Govt Narsipatnam</option>
						<option value="2222">Nagarjuna ITI Kurnool</option>
					</select>
				</div>
				<div class="col-lg-3 col-md-6">
					<button class="btn btn-danger mt-4">Remove</button>
					<button class="btn btn-info mt-4">Add More</button>
				</div>
			</div>

			<br>
			<div class="row m-1">
				<div class="col-12 text-center">
					<div class="text-center text-info">PERSONAL DETAILS</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					Hall Ticket Number: <span>1812106192</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Board : <span>Andhra Pradesh State Board (SSC)</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Year of Pass : <span>2018</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Month of Pass : <span>March</span>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					Applicants Name: <span>TEKU MADHU</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Mobile Number : <span>8886021454</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Date of Birth(mm/DD/yyyy) : <span>04-05-1995</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Aadhar Card Number : <span>XXXX XXXX 1111</span>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					Father/Husband Name : <span>TEKU GOPAL</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Gender : <span>male</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Mothers Name : <span>TEKU RAVANAMMA</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Physically Challenged : <span>NO</span>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					PWD Category : <span> </span>
				</div>
				<div class="col-lg-3 col-md-6">
					Ex-Servicemen : <span>NO</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Qualification: <span>SSC Passed</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Email : <span>testmail@gmail.com</span>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					Category : <span> ST </span>
				</div>
				<div class="col-lg-3 col-md-6">
					Economic Weaker Section : <span>NO</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Local/Non Local : <span>Local</span>
				</div>
				<div class="col-lg-3 col-md-6">
					Pincode : <span>518508</span>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3 col-md-6">
					Address : <span>H.No 2-25 Near Masid, Manchalakatta,
						Kurnool, AP</span>
				</div>
			</div>


			<br>
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="text-center text-info">MARKS DETAILS</div>
					<div class="table-responsive">
						<table class="table table-bordered table-stripped">
							<thead>
								<tr>
									<th>S.No</th>
									<th>Language Name</th>
									<th>MARKS</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>First language</td>
									<td>5</td>
								</tr>
								<tr>
									<td>2</td>
									<td>Second language</td>
									<td>7</td>
								</tr>
								<tr>
									<td>3</td>
									<td>Third Language- English</td>
									<td>7</td>
								</tr>
								<tr>
									<td>4</td>
									<td>Mathematics</td>
									<td>8</td>
								</tr>
								<tr>
									<td>5</td>
									<td>General Science</td>
									<td>4</td>
								</tr>
								<tr>
									<td>6</td>
									<td>Social Studies</td>
									<td>6</td>
								</tr>
								<tr>
									<td colspan="2">Total</td>
									<td>6.2</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="text-center text-info">PHOTO</div>
					<img alt="Student Image" src="./images/savefile.jpg" width="85%"
						height="80%">
				</div>
			</div>

			<br>
			<div class="row m-1">
				<div class="col-lg-12 col-md-12">
					<input type="checkbox"> <span class="fw-bold">I hereby consent to the use of
					Aadhaar Numbers provided in the application to carryout Identity
					Validation for ITI college admission process.</span>
				</div>
			</div>

			<div class="row m-1">
				<div class="col-12" align="center">
					<input type="submit" class="btn btn-success" value="APPLY NOW" />
				</div>
			</div>

		</form>
	</div>





	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/footer.jsp"%>
</body>
</html>