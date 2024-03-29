<?php
  include_once('views/main/nav.php');
?>
<div class="container" style="margin-bottom: 150px; margin-top:100px;">
	<img src="public/assets/Logo_NIKE.svg.png" alt="logo" class="mx-auto d-block" style="width: 50px; margin-bottom: 20px;">
	<h5 class="text-center mt-3">BECOME A NIKE MEMBER</h5>
	<p class="text-center" style="opacity:50%">Create your Nike Member profile and get first access <br> to the very best of Nike products, inspiration and community.</p>
		<div class="row justify-content-center">
			<div class="col-md-6">   
			<form action="index.php?page=main&controller=register&action=submit" method="POST" class="login100-form validate-form" name="myform" onsubmit="formValidate();">
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email <span style="color: red;">*</span></span>
						<input class="form-control form-control-lg" type="text" name="email">
					</div>
					<div id="emailError" style="color: red; font-size:13px;" class="mt-2 mb-2"></div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password <span style="color: red;">*</span></span>
						<input class="form-control form-control-lg" type="password" name="pass">
					</div>
					<div id="passwordError" style="color: red; font-size:13px;" class="mt-2 mb-2"></div>

					<div class="form-row">
						<div class="col">
							<div class="wrap-input100 validate-input" data-validate="Fname is required">
								<span class="label-input100">First Name <span style="color: red;">*</span></span>
								<input class="form-control  form-control-lg" type="text" name="fname">
							</div>
							<div id="fnameError" style="color: red; font-size:13px;" class="mt-2 mb-2"></div>
						</div>
						<div class="col">
							<div class="wrap-input100 validate-input" data-validate="Lname is required">
								<span class="label-input100">Last Name <span style="color: red;">*</span></span>
								<input class="form-control form-control-lg" type="text" name="lname">
							</div>
							<div id="lnameError" style="color: red; font-size:13px;" class="mt-2 mb-2"></div>
						</div>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Age is required">
						<span class="label-input100">Age <span style="color: red;">*</span></span>
						<input class="form-control form-control-lg" type="text" name="age">
					</div>
					<div id="ageError" style="color: red; font-size:13px;" class="mt-2 mb-2"></div>

					<div class="wrap-input100 validate-input">
					<span class="label-input100">Phone number <span style="color: red;">*</span></span>
						<input class="form-control form-control-lg" type="text" name="phone">
					</div>
					<div id="phoneError" style="color: red; font-size:13px;" class="mt-2 mb-2"></div>

					<div class="form-check" style="padding-left: 0;">
						<div class="row">
							<label class="col-md-3 col-form-label">Gender</label>	
						</div>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" value="1">
						<label class="form-check-label">Male</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" value="0">
						<label class="form-check-label">Female</label>
					</div>
					<div id="genderError" style="color: red; font-size:13px;" class="mt-2 mb-2"></div>

					<div class="d-flex justify-content-center mt-3">
						<button type="submit" class="btn btn-dark btn-block btn-lg gradient-custom-4 text-body" style="display: block; color: white !important"> Register</button>
					</div>
				
					<p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="index.php?page=main&controller=login&action=index"
                    class="fw-bold text-body"><u>Login here</u></a></p>
					
				</form>
			</div>  
		</div>
	</p>
</div>

<!-- Client side validation -->
<script>
	function formValidate() {
		var email = document.forms.myform.email;
		var password = document.forms.myform.pass;
		var fname = document.forms.myform.fname;
		var lname = document.forms.myform.lname;
		var age = document.forms.myform.age;
		var gender = document.forms.gender;
		var phone = document.forms.myform.phone;
		var gender = document.forms.myform.gender;

		if (email.value == "") {
			document.getElementById("emailError").innerHTML = "Please enter your email";
			email.focus(); 
			event.preventDefault();
		}
		else { document.getElementById("emailError").innerHTML = ""; }
		
		if (password.value == "") {
			document.getElementById("passwordError").innerHTML = "Please enter your password";
			if ((document.getElementById("emailError").innerHTML == "")) { password.focus(); }
			event.preventDefault();
		}
		else { document.getElementById("passwordError").innerHTML = ""; }

		if (fname.value == "") {
			document.getElementById("fnameError").innerHTML = "Please enter your first name";
			if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "")) { fname.focus(); }
			event.preventDefault();
		}
		else { 
			document.getElementById("fnameError").innerHTML = ""; 
			if (/[\d]/.test(fname.value)) {
				document.getElementById("fnameError").innerHTML = "First name should not contain numbers";
				if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "")) { fname.focus(); }
				event.preventDefault();
			} else {
				document.getElementById("fnameError").innerHTML = "";
			}
		}

		if (lname.value == "") {
			document.getElementById("lnameError").innerHTML = "Please enter your last name";
			if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "") 
				&& (document.getElementById("fnameError").innerHTML == "")) { lname.focus(); }
			event.preventDefault();
		}
		else { 
			document.getElementById("lnameError").innerHTML = ""; 
			if (/[\d]/.test(lname.value)) {
				document.getElementById("lnameError").innerHTML = "Last name should not contain numbers";
				if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "") 
				&& (document.getElementById("fnameError").innerHTML == "")) { lname.focus(); }
				event.preventDefault();
			} else {
				document.getElementById("lnameError").innerHTML = "";
			}
		}
		
		if (age.value == "") {
			document.getElementById("ageError").innerHTML = "Please enter your age";
			if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "") 
				&& (document.getElementById("fnameError").innerHTML == "") && (document.getElementById("lnameError").innerHTML == "")) { age.focus(); }
			event.preventDefault();
		}
		else { 
			document.getElementById("ageError").innerHTML = ""; 
			if (isNaN(age.value)) {
				document.getElementById("ageError").innerHTML = "Age should be a number";
				if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "") 
				&& (document.getElementById("fnameError").innerHTML == "") && (document.getElementById("lnameError").innerHTML == "")) { age.focus(); }
				event.preventDefault();
			} else {
				document.getElementById("ageError").innerHTML = "";
			}
		}

		if (phone.value == "") {
			document.getElementById("phoneError").innerHTML = "Please enter your phone number";
			if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "") 
				&& (document.getElementById("fnameError").innerHTML == "") && (document.getElementById("lnameError").innerHTML == "") 
				&& (document.getElementById("ageError").innerHTML == "")) { phone.focus(); }
			event.preventDefault();
		}
		else { 
			document.getElementById("phoneError").innerHTML = ""; 
			if (isNaN(phone.value)) {
				document.getElementById("phoneError").innerHTML = "Phone number should be a number";
				if ((document.getElementById("emailError").innerHTML == "") && (document.getElementById("passwordError").innerHTML == "") 
				&& (document.getElementById("fnameError").innerHTML == "") && (document.getElementById("lnameError").innerHTML == "") 
				&& (document.getElementById("ageError").innerHTML == "")) { phone.focus(); }
				event.preventDefault();
			} else {
				document.getElementById("phoneError").innerHTML = "";
			}
		}

		if (gender.value == "") {
			document.getElementById("genderError").innerHTML = "Choose your gender";
			event.preventDefault();
		}
		else { document.getElementById("genderError").innerHTML = ""; }
	}
</script>

<?php
  include_once('views/main/footer.php');
?>