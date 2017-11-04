<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>USC Wars Login</title>
		<style>
			#loginform{
				margin-top: 100px;
				font-family: "verdana";
				font-size: 16pt;
			}
			.button{
				height:25px;
    				width:130px;
    				background-color: gold;
    				font-size: 16px;
			}
		</style>
	</head>
	<body bgcolor="firebrick" >
		<center><br/><br/><br/>
			<font align="center" size="+5">USC Mafia Wars</font>
		</center>
		<form id="loginform" align="center">
			<b><label>New User?</label> <input id="newUser" class="button" type="button" value="Sign Up" ><br /><br/><br/>
			<label>Username: </label> <input id="userName" type="text" name="userlogin"> <br />
			<label>Password: </label> <input id="password" type="password" name="passwordlogin"> <br /><br/>
			<input id="submit" class="button" type="submit" value="Login"><br/>
			<input id="guest" class="button" type="button" value="Play as Guest"></b>
		</form>
	</body>
</html>