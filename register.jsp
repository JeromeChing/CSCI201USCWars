<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.Throwable" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
	<title>Register</title>
	</head>
	<body>
		<% String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost/finalproject", "root", "root");
				ps = conn.prepareStatement("Select * from user WHERE username = '" + username + "'");

				
				rs = ps.executeQuery();
				
				if(rs.next())	//existed user
				{
					request.setAttribute("err", "<br>Existed User<br>Try Another One<br>");
					RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/signup.jsp");
			    	dispatch.forward(request,response);

				}
				else	//not there
				{
					ps = conn.prepareStatement("INSERT INTO user (username, password, money, intelligence, power, totalSkill) VALUES ('" + username + "', '"+ password +"', '100000', '0', '0', '0');" );
					ps.executeUpdate();
					
					int userID = -1;
					
					session.setAttribute("userID", userID);
					session.setAttribute("username", username);
					RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/main.jsp");
			    	dispatch.forward(request,response);
				}
			} catch (SQLException e) {
				System.out.println("sqle: " + e.getMessage());
			} catch (ClassNotFoundException e) {
				System.out.println("cnfe: " + e.getMessage());
			} finally {
				// do nothing
			}
			
			%>
	</body>
</html>