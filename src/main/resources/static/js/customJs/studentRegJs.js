/**
 * 
 */

let boards = null;
	
	$(document).ready(function(){
		//alert("adsfasdfasdf")
		
		$("#stdRegDiv").hide();
		
		$.ajax({
			type: 'get',
			//url: 'http://localhost:8888/itiapi/masterdata/getAllSSCBoards',
			url: 'http://10.242.162.237:8090/itiapi/masterdata/getAllSSCBoards',
			cache: false,
			timeout: 6000000,
			success:function(resp){
				//alert("resp=>"+JSON.stringify(resp));
				boards = resp;
				$("#ssc_boardd").append('<option value="">-select-</option>');
				$("#ssc_board").append('<option value="">-select-</option>');
				for(var j=0; j<resp.length; j++){
					var bean = resp[j];
					$("#ssc_boardd").append('<option value="'+bean.boardCode+'">'+bean.boardName+'</option>');
					$("#ssc_board").append('<option value="'+bean.boardCode+'">'+bean.boardName+'</option>');
				}
			}
		});
		$.ajax({
			type: 'get',
			url: 'http://10.242.162.237:8090/itiapi/masterdata/getAllCastes',
			cache: false,
			timeout: 6000000,
			success:function(resp){
				//alert("resp=>"+JSON.stringify(resp));
				$("#caste").append('<option value="">-select-</option>');
				for(var j=0; j<resp.length; j++){
					var bean = resp[j];
					$("#caste").append('<option value="'+bean.category_name+'">'+bean.category_name+'</option>');
				}
			}
		});
		
	});
	
	function validate(){
		//alert("validate");
		
		var ssc_regnoo = document.getElementById("ssc_regnoo").value;
		
		var txtInput = document.getElementById("txtInput").value;
		var mainCaptcha = document.getElementById("mainCaptcha").value;
		
		
		if(ssc_regnoo == "" || ssc_regnoo == null){ $("#ssc_regnooError").html("SSC/8th Hall Ticket Number is required please enter."); $("#ssc_regnooError").css({"color": "red"}); $("#ssc_regnooError").focus(); return false; }
		if (!ssc_regnoo.match('^[0-9A-Z]{6,15}$')) { $("#ssc_regnooError").html("SSC/8th Hall Ticket Number is in invalid format."); $("#ssc_regnooError").css({"color": "red"}); $("#ssc_regnooError").focus(); return false; }
		
		//if(txtInput == "" || txtInput == null){  $("#captchaErr").html("Captcha is required."); $("#captchaErr").css({"color": "red"}); $("#captchaErr").focus(); return false; }
		//if(txtInput !== mainCaptcha){ $("#captchaErr").html("Given captcha is not matched."); $("#captchaErr").css({"color": "red"}); return false; } 
		
		checkRegistration(ssc_regnoo);
	}
	
	function checkRegistration(a){
		$.ajax({
			type: 'post',
			url: 'http://10.242.162.237:8090/itiapi/std/stdRegExists?sscRegno='+a,
			cache: false,
			timeout: 6000000,
			success:function(resp){
				//alert("resp=>"+JSON.stringify(resp));
				if(resp == true){
					$("#existRegMsg").append('<span class="text-danger font-weight-bold">YOUR ARE ALREADY REGISTERED WITH YOUR SSC REG NUMBER. YOU CAN FIND YOUR REGISTRATION ID FROM HERE.</span> <a href="./stdForgotRegid">Find Registration Number</a>');
				}else{
					$("#regCheckDiv").hide();
					$("#stdRegDiv").show();
					$("#marksrow").hide();
					
					$("#ssc_regno").val(a);
//					$("#ssc_board").val(ssc_boardd);
//					$("#ssc_year").val(passed_yearr);
//					$("#ssc_type").val(ssc_typee);
				}
			}
		});
	}
	
	function emptyAllInputsNullRegPage(){
		$("#ssc_regno").val('');
		$("#ssc_board").val('');
		$("#ssc_year").val('');
		$("#ssc_month").val('');
		$("#name").val('');
		$("#phno").val('');
		$("#dob").val('');
		$("#adarno").val('');
		$("#gen").val('');
		$("#caste").val('');
		$("#fname").val('');
		$("#phc").val('');
		$("#mname").val('');
		$("#pwd_category").val('');
		$("#exs").val('');
		$("#ssc").val('');
		$("#loconoc").val('');
		$("#addr").val('');
		$("#pincode").val('');
		$("#email").val('');
		$("#ews").val('');
		$("#addr").val('');
		$("#ssc_type").val('');
		$("#noOfLangs").val('');
		$("#first_lang").val('');
		$("#second_lang").val('');
		$("#third_lang").val('');
		$("#maths").val('');
		$("#science").val('');
		$("#social").val('');
		$("#photo").val('');
	}
	
	function checkValue(a){
		document.getElementById(a).innerHTML = '';
	}
	
	
	function sendData(){
		validateRegDetails();
	}
	
	
	function validateRegDetails(){
		/*
		var ssc_regno = document.getElementById("ssc_regno").value;
		if(ssc_regno == "" || ssc_regno == null){ $("#ssc_regnoError").html("SSC/8th Hall Ticket Number is required please enter."); $("#ssc_regnoError").css({"color": "red"}); $("#ssc_regno").focus(); return false; }
	 
		var ssc_board = document.getElementById("ssc_board").value;
		if(ssc_board == "" || ssc_board == null){ $("#ssc_boardError").html("SSC/8th Board is required please choose one."); $("#ssc_boardError").css({"color": "red"}); $("#ssc_board").focus(); return false; }
		
		var ssc_year = document.getElementById("ssc_year").value;
		if(ssc_year == "" || ssc_year == null){ $("#ssc_yearError").html("Year Of Passing is required please enter."); $("#ssc_yearError").css({"color": "red"}); $("#ssc_year").focus(); return false; }
		if (!ssc_year.match('^[0-9 ]{4}$')) { $("#ssc_yearError").html("Year Of Passing is in invalid format."); $("#ssc_yearError").css({"color": "red"}); $("#ssc_year").focus(); return false; }
		
		var ssc_month = document.getElementById("ssc_month").value;
		if(ssc_month == "" || ssc_month == null){ $("#ssc_monthError").html("Month of Pass is required please enter."); $("#ssc_monthError").css({"color": "red"}); $("#ssc_month").focus(); return false; }
		if(ssc_month !== "03" && ssc_month !== "04") { $("#ssc_monthError").html("Month of Pass is in invalid format."); $("#ssc_monthError").css({"color": "red"}); $("#ssc_month").focus(); return false; }
		
		var name = document.getElementById("name").value;
		if(name == "" || name == null){ $("#nameError").html("Applicants Name is required please enter."); $("#nameError").css({"color": "red"}); $("#name").focus(); return false; }
		if (!name.match('^[A-Za-z ]{3,50}$')) { $("#nameError").html("Applicants Name is in invalid format."); $("#nameError").css({"color": "red"}); $("#name").focus(); return false; }
		
		var phno = document.getElementById("phno").value;
		if(phno == "" || phno == null){ $("#phnoError").html("Mobile Number is required please enter."); $("#phnoError").css({"color": "red"}); $("#phno").focus(); return false; }
		if (!phno.match('^[0-9]{10}$')) { $("#phnoError").html("Mobile Number is in invalid format."); $("#phnoError").css({"color": "red"}); $("#phno").focus(); return false; }
		
		var dob = document.getElementById("dob").value;
		if(dob == "" || dob == null){ $("#dobError").html("Date of Birth is required please enter."); $("#dobError").css({"color": "red"}); $("#dob").focus(); return false; }
		
		var adarno = document.getElementById("adarno").value;
		if(adarno == "" || adarno == null){ $("#adarnoError").html("Aadhar Card Number is required please enter."); $("#adarnoError").css({"color": "red"}); $("#adarno").focus(); return false; }
		if (!adarno.match('^[0-9]{12}$')) { $("#adarnoError").html("Aadhar Card Number is in invalid format."); $("#adarnoError").css({"color": "red"}); $("#adarno").focus(); return false; }
		
		var gen = document.getElementById("gen").value;
		if(gen == "" || gen == null){ $("#genError").html("Gender is required please enter."); $("#genError").css({"color": "red"}); $("#gen").focus(); return false; }
		if(gen !== "male" && gen !== "female") { $("#genError").html("Gender is in invalid format."); $("#genError").css({"color": "red"}); $("#gen").focus(); return false; }
		
		var caste = document.getElementById("caste").value;
		if(caste == "" || caste == null){ $("#casteError").html("Category is required please enter."); $("#casteError").css({"color": "red"}); $("#caste").focus(); return false; }
		
		var fname = document.getElementById("fname").value;
		if(fname == "" || fname == null){ $("#fnameError").html("Father Name is required please enter."); $("#fnameError").css({"color": "red"}); $("#fname").focus(); return false; }
		if (!fname.match('^[A-Za-z ]{3,50}$')) { $("#fnameError").html("Father Name is in invalid format."); $("#fnameError").css({"color": "red"}); $("#fname").focus(); return false; }
		
		var phc = document.getElementById("phc").value;
		if(phc == "" || phc == null){ $("#phcError").html("Physically Challenged is required please enter."); $("#phcError").css({"color": "red"}); $("#phc").focus(); return false; }
		
		var mname = document.getElementById("mname").value;
		if(mname == "" || mname == null){ $("#mnameError").html("Mother Name is required please enter."); $("#mnameError").css({"color": "red"}); $("#mname").focus(); return false; }
		if (!mname.match('^[A-Za-z ]{3,50}$')) { $("#mnameError").html("Mother Name is in invalid format."); $("#mnameError").css({"color": "red"}); $("#mname").focus(); return false; }
		
		var exs = $("#exs").val();
		if(exs == "" || exs == null){ $("#exsError").html("Ex-Servicemen is required please enter."); $("#exsError").css({"color": "red"}); $("#exs").focus(); return false; }
		
		var ssc = $("#ssc").val();
		if(ssc == "" || ssc == null){ $("#sscError").html("Qualification is required please enter."); $("#sscError").css({"color": "red"}); $("#ssc").focus(); return false; }
		
		var loconoc = $("#loconoc").val();
		if(loconoc == "" || loconoc == null){ $("#loconocError").html("Local/Non Local is required please enter."); $("#loconocError").css({"color": "red"}); $("#loconoc").focus(); return false; }
		
		var pincode = $("#pincode").val();
		if(pincode == "" || pincode == null){ $("#pincodeError").html("Pincode is required please enter."); $("#pincodeError").css({"color": "red"}); $("#pincode").focus(); return false; }
		if (!pincode.match('^[0-9 ]{6}$')) { $("#pincodeError").html("Pincode is in invalid format."); $("#pincodeError").css({"color": "red"}); $("#pincode").focus(); return false; }
		
		var email = $("#email").val(); 
		if(email == "" || email == null){ $("#emailError").html("E-Mail is required please enter."); $("#emailError").css({"color": "red"}); $("#email").focus(); return false; }
		
		var ews = $("#ews").val();   
		if(ews == "" || ews == null){ $("#ewsError").html("Economic Weaker Section is required please enter."); $("#ewsError").css({"color": "red"}); $("#ews").focus(); return false; }
		
		var addr =  $("#addr").val(); 
		if(addr == "" || addr == null){ $("#addrError").html("Address is required please enter."); $("#addrError").css({"color": "red"}); $("#addr").focus(); return false; }
		*/
		var ssc_type = $("#ssc_type").val(); 
		if(ssc_type == "" || ssc_type == null){ $("#ssc_typeError").html("SSC Marks Type is required please enter."); $("#ssc_typeError").css({"color": "red"}); $("#ssc_type").focus(); return false; }
		
		var noOfLangs = $("#noOfLangs").val();
		if(noOfLangs == "" || noOfLangs == null){ $("#noOfLangsError").html("Number of Languages is required please enter."); $("#noOfLangsError").css({"color": "red"}); $("#noOfLangs").focus(); return false; }
		
		var first_lang = $("#first_lang").val();
		var second_lang = $("#second_lang").val();
		var third_lang = $("#third_lang").val();
		var maths = $("#maths").val();
		var science = $("#science").val();
		var social = $("#social").val();
		
		if(ssc_type == 'sscm'){
			
			if(first_lang == "" || first_lang == null){ $("#first_langError").html("First language is required please enter."); $("#first_langError").css({"color": "red"}); $("#first_lang").focus(); return false; }
			if (!first_lang.match('^[0-9]{1,3}$')) { $("#first_langError").html("First Lang marks should be in range 1-100, numeric only."); $("#first_langError").css({"color": "red"}); $("#first_lang").focus(); return false; }
			
			if(third_lang == "" || third_lang == null){ $("#third_langError").html("Third Language- English is required please enter."); $("#third_langError").css({"color": "red"}); $("#third_lang").focus(); return false; }
			if(maths == "" || maths == null){ $("#mathsError").html("Mathematics is required please enter."); $("#mathsError").css({"color": "red"}); $("#maths").focus(); return false; }
			if(science == "" || science == null){ $("#scienceError").html("General Science is required please enter."); $("#scienceError").css({"color": "red"}); $("#science").focus(); return false; }
			if(social == "" || social == null){ $("#socialError").html("Social Studies is required please enter."); $("#socialError").css({"color": "red"}); $("#social").focus(); return false; }
			
			if(noOfLangs == '3'){
				if(second_lang == "" || second_lang == null){ $("#second_langError").html("Second Language is required please enter."); $("#second_langError").css({"color": "red"}); $("#second_lang").focus(); return false; }
			} 
			
			if(first_lang < 0 && first_lang > 100){
				alert("invalid marks");
			}
			
			
		}
	}
	
	function marksdiv(value){
		//alert("marksdiv "+value);
		marksvaluesnull();
		
		var ssc_type = $("#ssc_type").val(); 
		if(ssc_type == "" || ssc_type == null){ $("#ssc_typeError").html("SSC Marks Type is required please enter."); $("#ssc_typeError").css({"color": "red"}); $("#ssc_type").focus(); return false; }
		
		if(value == "" || value == null){
			$("#marksrow").hide();
			$("#noOfLangsError").html("Number of Languages is required please enter."); 
			$("#noOfLangsError").css({"color": "red"}); 
			$("#noOfLangs").focus(); 
			return false; 
		}else{
			$("#marksrow").show();
			if(value == '2'){
				$("#sllabel").hide();
				$("#second_lang").val('');
			}else{
				$("#sllabel").show();
				$("#second_lang").val('');
			}
			
			
		}
		
	}
	function ssctype(ssc_type){
		marksvaluesnull();
		$("#marksrow").hide();
		$("#noOfLangs").val('');
		if(ssc_type == "" || ssc_type == null){ $("#ssc_typeError").html("SSC Marks Type is required please enter."); $("#ssc_typeError").css({"color": "red"}); $("#ssc_type").focus(); return false; }
	}
	function marksvaluesnull(){
		$("#first_lang").val('');
		$("#second_lang").val('');
		$("#third_lang").val('');
		$("#maths").val('');
		$("#science").val('');
		$("#social").val('');
		
		$("#first_langError").val('');
		$("#second_langError").val('');
		$("#third_langError").val('');
		$("#mathsError").val('');
		$("#scienceError").val('');
		$("#socialError").val('');
		
		
	}