<?php
  include_once('views/main/nav.php');
?>

<!--
<section class="background-radial-gradient overflow-hidden">

<div class="container-fluid  px-4 py-5 px-md-5 text-center text-lg-start my-5">
    <div class="row gx-lg-5 align-items-center mb-5">
      <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

        <div class="card bg-glass my-5">
          <div class="card-body px-4 py-5 px-md-5">
				<form action="index.php?page=admin&controller=login&action=check" method="post">
				<div class="form-outline mb-4">
                    <label class="form-label" for="form3Example3">Admin account <span style="color: red">*</span></label>
                    <input type="text" name="username" required id="form3Example3" class="form-control" />
                </div>
				<div class="form-outline mb-4">
                <label class="form-label" for="form3Example4">Password <span style="color: red">*</span></label>
                <input type="password" name="password" required id="form3Example4" class="form-control" />
              </div>
			  <button type="submit" value="Login" class="btn btn-primary btn-block mb-4">
                Log in
              </button>
			  <div class="text-center">
                <a href="index.php?page=main&controller=login&action=index">Back to login as user</a>
              </div>
				</form>
				
			</div>
		</div>
	</div>
	<div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
          Welcome back <br />
          <span style="color: hsl(218, 81%, 75%)">Login as administrator</span>
        </h1>
      </div>
    </div>
  </div>
</section>
-->
<section class="vh-100 login">
    <div class="container" style="margin-top: 100px; margin-bottom: 100px;">
        <img src="public/assets/Logo_NIKE.svg.png" alt="logo" class="mx-auto d-block" style="width: 50px; margin-bottom: 20px;">
        <h5 class="text-center mt-3">ADMIN ACCOUNT FOR EVERYTHING</h5>
        <div class="row justify-content-center">
            <div class="col-md-4">  
                <p id="serverError" style="color: red; font-size:13px;"></p> 
                <form action="index.php?page=admin&controller=login&action=check" method="POST" class="login100-form validate-form" onsubmit="formValidate();">
                  <div class="form-outline mb-3"> 
                      <input type="text" name="username" id="form3Example3" class="form-control" placeholder="Email">
                  </div>
                  <p id="userNameError" style="color:red; font-size: 13px; margin-left: 5px"></p>
                  <div class="form-outline mb-3">
                    <input type="password" name="password" id="form3Example4" class="form-control" placeholder="Password">
                  </div>
                  <p id="passwordError" style="color:red; font-size: 13px; margin-left: 5px"></p>
                  <p id="accountExist" class="login-box-msg" style="color: red"></p>
                  <?php
                    if (isset($err))
                    {
                      echo '<p class="login-box-msg" style="color: red">' . $err . '</p>';
                      unset($err);
                    }
                  ?>
                  <button value="Login" class="btn btn-dark btn-block mb-4" name="submit-btn">
                    Log in
                  </button>
                </form>
                <div class="text-center">
                    <p style="display: inline-block;">Don't have account yet?</p> <a href="index.php?page=main&controller=register&action=index" class="text-dark">Sign up now</a>
                    <!-- Admin login button -->
                    <div class="text-center">
                      <a href="index.php?page=main&controller=login&action=index" class="text-dark">Back to login as user</a>
                    </div>
                </div>
            </div>  
        </div>
    </div>
</section>
<?php
  include_once('views/main/footer.php');
?>

<!-- Client side validation -->
<script>
    function formValidate() {
        var userName = document.getElementById("form3Example3");
        var password = document.getElementById("form3Example4");
        
        if (userName.value == "") {
            document.getElementById("userNameError").innerHTML = "Please enter your username";
            userName.focus();
            event.preventDefault();
        }
        else { document.getElementById("userNameError").innerHTML = ""; }

        if (password.value == "") {
            document.getElementById("passwordError").innerHTML = "Please enter your password";
            if (!(userName.value == "")) { password.focus(); }
            event.preventDefault();
        }
        else { document.getElementById("passwordError").innerHTML = ""; }
    }
</script>

<!-- Server side validation -->
<?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      $userName = $_POST['username'];
      $password = $_POST['password'];

      if ($userName == '') {
          echo '<script>
                  document.getElementById("userNameError").innerHTML = "Please enter your username";
                  document.forms.myform.userName.focus(); 
                  event.preventDefault();
              </script>';
      }
      if ($password == '') {
          echo '<script>
                  document.getElementById("passwordError").innerHTML = "Please enter your password";
                  if (!(document.forms.myform.userName.value == "")) { document.forms.myform.password.focus(); }
                  event.preventDefault();
              </script>';
      }
  }
?>




