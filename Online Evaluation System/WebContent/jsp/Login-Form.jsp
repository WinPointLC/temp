<!DOCTYPE html>
<html lang="en-in">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Login form</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/Login-Form.css">
</head>

<body>
	<div class="container">
	  <div class="col-sm-6 col-md-4 col-lg-4 form-content ml-auto mr-auto">
	  	<form class="form-outer" method="post" action="/OnlineEvaluationSystem/CommonController">
				<h3 class="form-login-heading text-center">Login Form</h3>
				<div class="form-group">
					<label for="email">Email Id</label>
					<input class="form-control" id="email" type="text" placeholder="Type your Email ID" name="email">
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input class="form-control" id="password" type="password" placeholder="Type your Password" name="password">
				</div>
				<div class="form-group">
					<input type="submit" class="login-btn" value="Login" name="login">
				</div>
				<div class="forgot-password">
					<a href="#">Forgot Password</a>
				</div>
				<div class="form-group sign-up ml-auto">
					<a href="#" id="sign-up">Not a User? SignUP</a>
				</div>
	  	</form>
	  </div>
	</div>
</body>

</html>
