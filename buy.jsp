<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
				<div style="border:2px dotted black"><img src="Building Pictures/Annenberg.jpg" width="70px" height="70px"><br>
				Price = $100<br>
				<button type="button" name="incrementAnnenberg" onclick="incrementAnnenberg()">+</button>
				<button type="button" name="decrementAnnenberg" onclick="decrementAnnenberg()">-</button></div><br>
				
				<div style="border:2px dotted black"><img src="Building Pictures/Bookstore.jpg" width="70px" height="70px"><br>
				Price = $100<br>
				<button type="button" name="incrementBookstore">+</button>
				<button type="button" name="decrementBookstore">-</button></div><br>
				
				<div style="border:2px dotted black"><img src="Building Pictures/Bovard.jpg" width="70px" height="70px"><br>
				Price = $200<br>
				<button type="button" name="incrementBovard">+</button>
				<button type="button" name="decrementBovard">-</button></div><br>
				
				<div style="border:2px dotted black"><img src="Building Pictures/Colliseum.jpg" width="70px" height="70px"><br>
				Price = $300<br>
				<button type="button" name="incrementColliseum">+</button>
				<button type="button" name="decrementColliseum">-</button></div><br>
				
				<div style="border:2px dotted black"><img src="Building Pictures/Cromwell.jpg" width="70px" height="70px"><br>
				Price = $400<br>
				<button type="button" name="incrementCromwell">+</button>
				<button type="button" name="decrementCromwell">-</button></div><br>
				20 buildings more...
				</td>
				
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