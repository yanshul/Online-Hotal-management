<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css">

    <title>My JSP 'MyJsp.jsp' starting page</title>
    <%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
   
</head>
<body>
<%
/*String count = (String)session.getAttribute("refresh_count");
out.println("count = " + count);
if("1".equals(count)){
	out.println("count = " + count);
	response.addHeader("Refresh","0");
	session.setAttribute("refresh_count","2");
}else{
	response.addHeader("Refresh","2");
}

String u_name = (String)session.getAttribute("user_name");
	if("xxx".equals(u_name)){
		out.println("Invalid Session");
		// New location to be redirected
   String site = new String("rahul.html");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
	}else{
		out.println(u_name);
	}
	*/
%>
<h3> 
<a href = "booking.html"> click here</a> to book rooms </h3>
 <h3> 
<a href = "order.html"> click here</a> to order</h3>
<h3> 
<a href = "bill.jsp"> click here</a> to check your bill </h3>
<h3>
<a href = "checkout.jsp"> click here </a> to check out </h3>
<a href = "logout.jsp"> click here </a> to log out </h3>
</body>
</html>