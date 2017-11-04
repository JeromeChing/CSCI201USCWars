<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Leader Board</title>
		<style>
			
			.header{
				color: gold;
			}
			#leaderboard tr {
				text-align:left;
			    border: 1px solid black;
			}
		</style>
</head>
<body bgcolor="firebrick">
<%
	ArrayList<Double> totalSkill = (ArrayList<Double>)request.getAttribute("totalSkill");
	ArrayList<String> userName = (ArrayList<String>)request.getAttribute("userName");
	
%>
	
	<table cellpadding="10" width="1200">
		<tr>
        <!-- column for left side of page -->
        <td width="160" align="center">
          <font size="+1">Main Screen</font><br /><br />
          <font size="+1"><a href="usc.edu">Buy Screen</a></font><br /><br />
          <font size="+1"><a href="usc.edu">LeaderBoard</a></font><br /><br />
          <font size="+1"><a href="usc.edu">Battle/Debate</a></font><br /><br />
          <font size="+1"><a href="sportsScreen.jsp">Sports Team</a></font><br /><br />
        </td>
        <td width="5"><br /></td>
        <td align="center" valign="top" width="600">
            <b><font align="center" size="+3">Leaderboards</font></b><br />
          <p></p>
          <p></p>
	<table id="leaderboard" width= "800">
		<tr>
			<th>Rank</th>
			<th>User Name</th>
			<th>Total Skill</th>
		</tr>
		<%
			for (int i =0 ; i < totalSkill.size() ; i++)
			{
		%>
				<tr>
					<td><%=i+1%></td>
					<td><%=userName.get(i) %></td>
					<td><%=totalSkill.get(i) %></td>
				</tr>
			
		<% 
			}
		
		%>
	
	</table>
	</td>
	</tr>
	</table>
	
</body>
</html>