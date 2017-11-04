<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%
	String building = request.getParameter("building");	//Should be a building later on
	String action = request.getParameter("action");
	System.out.println("Please print " + building + " " + action);
	
	Map<String, Integer> totalProperty = new HashMap<String, Integer>();		//updated from previous cart
	int totalPrice = 0;															//updated from previous cart
	
	if(action.equals("add"))
	{
		if(totalProperty.containsKey(building))
			totalProperty.put(building, totalProperty.get(building)+1);
		totalPrice += 100;								//depends on building price
	}
	else
		System.out.println("I am dropping");
%>
<table>
<% for (Map.Entry<String, Integer> entry : map.entrySet()) {
%>
	<%=totalProperty.getValue()%>
<%
}
%>

</table>