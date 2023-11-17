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
	let dists = null;
	let itis = null;
	let data = null;
	
	$(document).ready(function(){
		
		$("#itidata").hide();
		$("#itisdata").hide();
		$("#itiData").hide();
		
		$.ajax({
			type: 'get',
			url: 'http://localhost:8888/itiapi/masterdata/getAllDists',
			cache: false,
			timeout: 6000000,
			success:function(resp){
				//alert("resp=>"+JSON.stringify(resp));
				dists = resp;
				$("#distss").append('<option value="">-select-</option>');
				for(var j=0; j<resp.length; j++){
					var bean = resp[j];
					$("#distss").append('<option value="'+bean.dist_code+'">'+bean.dist_name+'</option>');
				}
			}
		});
		$.ajax({
			type: 'get',
			url: 'http://localhost:8888/itiapi/masterdata/getItiProfilesWithTradeAndStrength',
			cache: false,
			timeout: 6000000,
			success:function(resp){
				//alert("resp=>"+JSON.stringify(resp));
				data = resp;
				 
			}
		});
		$.ajax({
			type: 'get',
			url: 'http://localhost:8888/itiapi/masterdata/getAllItis',
			cache: false,
			timeout: 6000000,
			success:function(resp){
				//alert("resp=>"+JSON.stringify(resp));
				itis = resp;
			}
		});
	});
	
	function validate(){
		
		var distcode = $("#distss").val();
		var govt = $("#govt").val();
		var condition;
		//alert(distcode);
		if(distcode == "" || distcode==null) {
			alert("plz select a district");
			$("#distss").focus();
			return false;
		}else{
			
			if(govt == "" || govt == null){ condition = 'dist'; }
			else{ condition = 'distandgovt'; }
			
			$("#itidata").show();
			$("#itisdata").show();
			$("#itiData").hide();
			
			$("#itidata").empty();
			$("#itisdata").empty();
			$("#itiData").empty();
			
			for(var j=0; j<dists.length; j++){
				var bean = dists[j];
				if(distcode == bean.dist_code){
					$("#itidata").append('<h5 class="h5 text-primary text-center">List of ITIs with Trades & Strengths in '+bean.dist_name+'</h5>' 
					+'<h6 class="h6 text-info text-center">Click on ITI Name to view the ITI profile and staff details</h6>'
					+'<div align="center"> <button class="btn btn-success">Download Excel Data</button></div>'
					);
				}
			}
			generateItisData(distcode,condition,govt);
		}
		
		
	}
	function generateItisData(distcode,condition,govt){
// 		alert(distcode)
// 		alert(condition)
// 		alert(govt)

		for(var a=0; a<itis.length;a++){
			var beanbean = itis[a];
			var code = beanbean.distCode;
			
			if(code == distcode){
				 
				if(condition == 'dist'){
					$("#itisdata").append('<a href="javascript:getItiInfo(\''+beanbean.itiCode+'\')">'+beanbean.itiCode+'-'+beanbean.itiName+'</a>');
					for(var l=0; l<data.length; l++){
						 var tradeData = data[l];
						 
						 if(beanbean.itiCode == tradeData.colNo1){
							 $("#itisdata").append('<div class="pl-4">'
									 +''+tradeData.colNo2+'('+tradeData.colNo3+')'
							 +'</div>');
						 }
					 }
				}
				
				if(condition == 'distandgovt'){
					if(beanbean.govt == govt){
						$("#itisdata").append('<a href="javascript:getItiInfo(\''+beanbean.itiCode+'\')">'+beanbean.itiCode+'-'+beanbean.itiName+'</a>');
						for(var l=0; l<data.length; l++){
							 var tradeData = data[l];
							 
							 if(beanbean.itiCode == tradeData.colNo1){
								 $("#itisdata").append('<div class="pl-4">'
										 +''+tradeData.colNo2+'('+tradeData.colNo3+')'
								 +'</div>');
							 }
						 }
					}
					
				}
			
			}
		}
		
	}
	
	function getItiInfo(itiCode){
		//alert(itiCode)
		$("#itidata").hide();
		$("#itisdata").hide();
		$("#itiData").show();
		$("#itiData").empty();
		
		for(var a=0; a<itis.length;a++){
			var beanbean = itis[a];
			
			if(beanbean.itiCode == itiCode){
				//alert("bean=>"+beanbean)
				var govtSpan;
				if(beanbean.govt == 'G'){ govtSpan = 'Government' }
				if(beanbean.govt == 'P'){ govtSpan = 'Private' }
				
				var distname = getDistName(beanbean.distCode);
				//alert(distname)
					
				$("#itiData").append('<h5 class="h5 text-center text-danger text-decoration-underline">'+beanbean.itiName+'<h5>'
				+'<div class="row">'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">ITI Type:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+govtSpan+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Principal Name:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.principalname+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Email:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.email+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Land Line Number:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.landlinenumber+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Mobile:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.mobile+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">ITI/Non-ITI:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.itiNoniti+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Total Strength:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.totStrength+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">City/Town:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.cityTown+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Capacity:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.capacity+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">District Name:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+distname+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Year of Establishment:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.yearEst+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Land(In Acres):</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.land+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Pin Code:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.pinCode+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Description:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.description+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">VTP:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.vtp+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Vtp Reg.No:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.vtpRegno+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Built Up Area(sq.ft):</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.builtupArea+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">No.of Toilets:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.noofToilets+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Drinking Water Available:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.availableDrinkingwater+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">No.of Labs:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.noofLabs+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">No.Of Class Rooms:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.noofClassrooms+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Capacity For Exam Conducting:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.examconductingStrength+'</span></div>'
				+'<div class="col-lg-3 col-md-3"><label class="form-label">Address:</label></div><div class="col-lg-3 col-md-3"><span class="text-primary">'+beanbean.address+'</span></div>'
				+'</div>'
				+'<div align="center"><button class="btn btn-success" onclick="return closediv()">Back</button></div>'
				);
			}
		}
		
		
	}
	
	function getDistName(distcode){
		var distName;
		
		for(var a=0; a<dists.length;a++){
			var bean = dists[a];
			var code = bean.dist_code;
			
			if(code == distcode){
				distName = bean.dist_name;
			}
		}
		return distName;
	}
	
	function closediv(){
		//alert("closediv()")
		$("#itidata").show();
		$("#itisdata").show();
		$("#itiData").hide();
		$("#itiData").empty();
	}
	
</script>
</head>
<body>
	<img src="/images/gen.jpg" class="img-fluid" width="100%" />
	<%@include file="/WEB-INF/openNavbar.jsp"%>


	<div class="container border p-2 mt-2 bg-light rounded-3 w-50">
		<div class="row m-1">
			<div class="col-12 text-center text-decoration-underline">
				<h3 class="h3" style="color: blueviolet; font-size: 15px;">
					List of ITI's with Trades & Strengths Interface</h3>
			</div>
		</div>
	
		<div class="row m-1">
			<div class="col-lg-6 col-md-6"><label>District</label></div>
			<div class="col-lg-6 col-md-6">
				<select class="form-select form-control" name="distss" id="distss">
				</select>
			</div>
		</div>
		<div class="row m-1">
			<div class="col-lg-6 col-md-6"><label>College Type</label></div>
			<div class="col-lg-6 col-md-6">
				<select class="form-select form-control" name="govt" id="govt">
					<option value="">-ALL-</option>
							<option value="G">GOVERNMENT</option>
							<option value="P">PRIVATE</option>
				</select>
			</div> 
		</div>
		
		<div align="center">
			<button class="btn btn-success w-25" onclick="return validate();">Submit</button>
		</div>
		
		
	</div>


	<div class="container border p-2 mt-2 bg-light rounded-3 w-75" id="itidata"></div>
	<div class="container border p-2 mt-2 bg-light rounded-3 w-75" id="itisdata"> </div>
	<div class="container border p-2 mt-2 bg-light rounded-3 w-75" id="itiData"> </div>




	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/footer.jsp"%>



</body>
</html>