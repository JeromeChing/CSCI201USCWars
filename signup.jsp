<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>USC Wars Registration</title>
		<style>
			#signupform{
				margin-top: 90px;
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
			<p><font align="center" size="+5">USC Mafia Wars</font><br/></p>
			<p><font align="center" size="+3">User Registration</font></p>
		</center>
		<form id="signupform" align="center">
			<b><label>Username: </label> <input id="userName" type="text" name="usersignup"> <br />
			<label>Password: </label> <input id="password" type="text" name="passwordsignup"> <br /><br/>
			<input id="submit" class="button" type="submit" value="Register"><br/>
		</form>
	</body>
</html>