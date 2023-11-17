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
<body>
	<img src="/images/gen.jpg" class="img-fluid" width="100%" />
	<%@include file="/WEB-INF/openNavbar.jsp"%>

	<div class="container border p-2 mt-2 bg-light rounded-3 ">
		<div class="row m-1">
			<div class="col-12 text-center text-decoration-underline">
				<h2 class="h3" style="color: blueviolet; font-size: 20px;">
					Skills Strengthening of Industrial Value Enhancement (STRIVE)
					Project in State of Andhra Pradesh</h2>
			</div>
		</div>
	
		<div class="table-responsive" align="center">
			<table  class="table table-bordered w-75">
				<thead >
			<tr style="background-color: blue; color: white;">
                <th>S.No</th>
                <th colspan="2">Disclousures Management</th>
            </tr>
				</thead>
				
				<tbody>
			<tr>
				<td rowspan="3" align="right">1</td>
				<td rowspan="3">Approved Procurement Plan and updates</td>
				<td><a href="javascript:iti_display();">Goods</a></td>

			</tr>
			<tr>
				<!--          <td><a href="javascript:iti_display();">Services</a></td>-->
				<td>Services</td>

			</tr>
			<tr>
				<!--           <td><a href="javascript:iti_display();">Works</a></td>-->
				<td>Works</td>
			</tr>
			<!--           <td><a href="javascript:iti_display();">15 Govt. ITIs  & SPIU</a></td>-->
			</tr>
			<tr>
				<td rowspan="3" align="right">2</td>
				<td rowspan="3">Invitation for Bids</td>
				<td><a href="javascript:iti_display();">Goods</a></td>

			</tr>
			<tr>
				<td>Services</td>

			</tr>
			<tr>
				<td>Works</td>

			</tr>
			<tr>
				<td rowspan="3" align="right">3</td>
				<td rowspan="3">Short list of consultants/Bidders</td>
				<td><a href="javascript:iti_display();">Goods</a></td>

			</tr>
			<tr>
				<td>Services</td>

			</tr>
			<tr>
				<td>Works</td>

			</tr>
			<tr>
				<td rowspan="3" align="right">4</td>
				<td rowspan="3">Contract Awards</td>
				<td><a href="javascript:iti_display();">Goods</a></td>

			</tr>
			<tr>
				<td>Services</td>

			</tr>
			<tr>
				<td>Works</td>

			</tr>
			<tr>
				<td rowspan="3" align="right">5</td>
				<td rowspan="3">Contract Awards</td>
				<td><a href="javascript:iti_display();">Goods</a></td>

			</tr>
			<tr>
				<td>Action taken reports & Complaints</td>

			</tr>
			<tr>
				<td>Works</td>

			</tr>
				</tbody>
			
			

		</table>
		
		
		
		</div>
		
		
		<br>
		<div style="display: none" id="dispaly_itis">

	<div class="table-responsive" align="center">
			<table  class="table table-bordered table-stripped w-75" id="dispaly_iti">
				<tr style="background-color: blue; color: white;">
					<td colspan="3" align="center"style="font-weight: bold;">LISTS OF STRIVE ITI'S in AP</td>
				</tr>
				<tr style="background-color: blue; color: white;">
					<td align="center"style="font-weight: bold;">SNO</td>
					<td align="center"style="font-weight: bold;">ITI MIS CODE</td>
					<td align="center"style="font-weight: bold;">Name of the ITI</td>
				</tr>
				<tr>
					<td align="center">1</td>
					<td>GR28000416</td>
					<td><a href="./SPMU/Goods/1Rajam.pdf" target="_blank">GOVT
							ITI RAJAM</a></td>
				</tr>
				<tr>
					<td align="center">2</td>
					<td>GR28000154</td>
					<td><a href="./SPMU/Goods/1Bobbili.pdf" target="_blank">GOVT
							ITI BOBBLLI</a></td>
				</tr>
				<tr>
					<td align="center">3</td>
					<td>GU28000144</td>
					<td><a href="./SPMU/Goods/1Vizag(O).pdf" target="_blank">GOVT.ITI
							VISKHAPATNM</td>
				</tr>
				<tr>
					<td align="center">4</td>
					<td>GR28000238</td>
					<td><a href="./SPMU/Goods/2KAKINADA.pdf" target="_blank">GOVT.ITI
							KAKINADA</td>
				</tr>
				<tr>
					<td align="center">5</td>
					<td>GR28000123</td>
					<td><a href="./SPMU/Goods/2Bhimavaram.pdf" target="_blank">GOVT.ITI
							BHIMAVARAM</td>
				</tr>
				<tr>
					<td align="center">6</td>
					<td>GR28000151</td>
					<td><a href="./SPMU/Goods/2Vijayawaa.pdf" target="_blank">GOVT.ITI
							VIJAYAWADA</td>
				</tr>
				<tr>
					<td align="center">7</td>
					<td>GR28000206</td>
					<td><a href="./SPMU/Goods/3Tenali.pdf" target="_blank">GOVT.ITI
							TENALI</td>
				</tr>
				<tr>
					<td align="center">8</td>
					<td>GR28000155</td>
					<td><a href="./SPMU/Goods/3Ongole(B).pdf" target="_blank">GOVT.ITI
							ONGOLE(B)</td>
				</tr>
				<tr>
					<td align="center">9</td>
					<td>GR28000270</td>
					<td><a href="./SPMU/Goods/3Nellore(G).pdf" target="_blank">GOVTITI
							NELLORE(G)</td>
				</tr>
				<tr>
					<td align="center">10</td>
					<td>GR28000145</td>
					<td><a href="./SPMU/Goods/3Nellore(B).pdf" target="_blank">GOVT.ITI
							NELLORE(B)</td>
				</tr>
				<tr>
					<td align="center">11</td>
					<td>GR28000308</td>
					<td><a href="./SPMU/Goods/3Tada.pdf" target="_blank">GOVT.ITI
							TADA</td>
				</tr>


				<tr>
					<td align="center">12</td>
					<td>GR28000041</td>
					<td><a href="./SPMU/Goods/4srisailem.pdf" target="_blank">GOVT.ITI
							SRISAILEM</td>
				</tr>
				<tr>
					<td align="center">13</td>
					<td>GR28000335</td>
					<td><a href="./SPMU/Goods/4CHITTOOR.pdf" target="_blank">GOVT.ITI
							CHITTOOR</td>
				</tr>
				<tr>
					<td align="center">14</td>
					<td>GR28000182</td>
					<td><a href="./SPMU/Goods/4Thirupathi.pdf" target="_blank">GOVT.ITI
							TIRUPATHI</a></td>
				</tr>
				<tr>
					<td align="center">15</td>
					<td>GR28000386</td>
					<td><a href="./SPMU/Goods/4Chakrayapeta..pdf" target="_blank">GOVT.ITI
							CHKRYAPETA</a></td>
				</tr>
				<tr>
					<td align="center">16</td>
					<td>State Project Implementation Unit (SPIU)</td>
					<td><a href="SPMU.jsp">Directorate of Employment and
							Training , Vijayawada</a></td>
				</tr>




			</table>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/footer.jsp"%>

	<script>
            
            function iti_display(){
               // alert("skljlsjfs");
               document.getElementById("dispaly_itis").style.display="block"; 
            }
            
        </script>



</body>
</html>