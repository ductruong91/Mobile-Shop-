<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HUST Trang web bán điện thoại</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

</head>


<?php
	if(!defined('SECURITY')){
		header("location:index.php");
	}
	if(isset($_POST['sbm'])){
		$mail = $_POST['mail'];
		$pass = $_POST['pass'];
		$sql = "SELECT * FROM user WHERE user_mail = '$mail' AND user_pass = '$pass'";
		$query = mysqli_query($con, $sql);
		$num_row = mysqli_num_rows($query);
		$row = mysqli_fetch_assoc($query);

		if($num_row > 0){
			$_SESSION['mail'] = $mail;
			$_SESSION['pass'] = $pass;
			$_SESSION['user_full'] = $row['user_full'];
			$_SESSION['level'] = $row['user_level'];
			header('location:index.php');
		}
		else
			$error = '<div class="alert alert-danger">Tài khoản không hợp lệ !</div>';
	}
	else if(isset($_SESSION['mail']) && isset($_SESSION['pass'])){
		if($_SESSION['mail']=='admin@gmail.com' && $_SESSION['pass']=='123456'){
			header('location:admin.php');
		}
	}
?>
<body>
		<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">HUST Trang web bán điện thoại</div>
				<div class="panel-body">
					<?php  if(isset($error)) echo $error; ?>
					<form role="form" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail" name="mail" type="email" autofocus required>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Mật khẩu" name="pass" type="password" value="" required>
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Nhớ tài khoản
								</label>
							</div>
							<button type="submit" class="btn btn-primary" name='sbm'>Đăng nhập</button>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
</body>

</html>
