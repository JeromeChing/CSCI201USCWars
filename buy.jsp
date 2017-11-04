<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="classes.*"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	gameInit g = new gameInit();
	ArrayList<Sports> sportsList = new ArrayList<Sports>();
	ArrayList<Building> buildingsList = new ArrayList<Building>();

	g.createSportsList(sportsList);
	g.createBuildingList(buildingsList);
	
	
%>
	<head>
		<meta charset="BIG5">
		<title>Buy Screen</title>
		<script>
			function incrementAnnenberg() {
				var building = 'Annerberg Building';
				var action = 'add'
				var xhttp = new XMLHttpRequest();
				xhttp.open("GET","updateCart.jsp?building=" + building + "&action=" + action, false);
				xhttp.send();
				if(xhttp.responseText.trim().length > 0) {
					document.getElementById("cart").innerHTML = xhttp.responseText;
				}
			}
			
			function decrementAnnenberg() {
				var building = 'Annerberg Building';
				var action = 'drop'
				var xhttp = new XMLHttpRequest();
				xhttp.open("GET","updateCart.jsp?building=" + building + "&action=" + action, false);
				xhttp.send();
				if(xhttp.responseText.trim().length > 0) {
						document.getElementById("cart").innerHTML = xhttp.responseText;
					}
			}
		</script>
	</head>
	<body>
		<table>
			<tr>
				<th width="200px">Buildings</th>
				<th width="200px">Sport Teams</th>
				<th width="200px">Cart</th>
			</tr>
			<tr>
				<td valign="top" align="center">
				
				<%
				for(int i = 0; i < buildingsList.size(); i++) {
				%>
					
					<div style="border:2px solid black"><%=buildingsList.get(i).getName() %><br><img src=<%=buildingsList.get(i).getUrl() %> width="70px" height="70px"><br>
					Price $<%=buildingsList.get(i).getPrice() %><br>
					<button type="button" name="incrementAnnenberg" onclick="incrementAnnenberg()">+</button>
					<button type="button" name="decrementAnnenberg" onclick="decrementAnnenberg()">-</button></div><br>
				
				<%
				}
				%>
				
				<td valign="top" align="center">
				Team 1 <br>
				Team 2 <br>
				Team 3 <br>
				Team 4 <br>
				Team 5 <br>
				</td>
				
				<td valign="top" align="center" id="cart">
				JSP UPDATED
				</td>
			</tr>
		</table>
	</body>
</html>