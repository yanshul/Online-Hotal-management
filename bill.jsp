<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body bgcolor="green">

<% Class.forName("com.mysql.jdbc.Driver");
	  
	 Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/hotel?user=root&password=admin");
	 
	 Statement state =connect.createStatement();
	  int b;
	  
String a,c,d,k; 
	 a=(String)session.getAttribute( "user_name" );
	 String sql ="select uname,room_no,food_name,ammount from orders ;";
	  ResultSet result = state.executeQuery(sql);
	  %> <h2> Bill description : <br>  </h2> <p> room_no food_name ammount <br> </p>
		<%
	while(result.next())
	{
		k=result.getString("uname");
		b= result.getInt("room_no");
		c= result.getString("food_name");
		d= result.getString("ammount");
   if(a.equals(k)) {
		
		 out.println(b); %>  
<% 
		 out.println(c); %> 
<%		 
out.println(d); %> <br>
<%		 
	}
	}
	%> <h2> Total ammount : </h2> <%
	String sql1 ="select uname,ammount from bill ;";
	  ResultSet result1 = state.executeQuery(sql1);
	  while(result1.next()) {
		  String us=result1.getString("uname");
		  int amm = result1.getInt("ammount");
		  if(a.equals(us)) {
		  out.println(amm);} }
	   connect.close();

	
	   %>
	   
	  
	   
</body>
</html>
