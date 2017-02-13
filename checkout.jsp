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
	  String sql ="select uname from bill; ";
	  ResultSet result = state.executeQuery(sql);

  String val12=(String)session.getAttribute( "user_name" );
String status ="vacant";
String name1;
int room;
  String name;
  while(result.next())
  {
	  name = result.getString("uname");
	  if(name.equals(val12))
	  {
		  session.setAttribute("checkout","1");
		  String sql1 = "delete from bill  where uname ='"+val12+"' ;";			
			state.executeUpdate(sql1);
	  }
	  
  }
   String sql4 ="select uname,roomno from status; ";
	  ResultSet result2 = state.executeQuery(sql4);
  
  while(result2.next())
  {
	  name1=result2.getString("uname");
	  room=result2.getInt("roomno");
	  if(name1.equals(val12));
	  {
		   String sql2 = "delete from status  where uname ='"+name1+"' ;";			
			state.executeUpdate(sql2);
		  PreparedStatement update= connect.prepareStatement("update room set status=? where room_no= ?");
			update.setString(1,status);
			update.setInt(2,room);
			update.executeUpdate();
	  }
	  
  }
  
			
	   connect.close();
	   %>
	
	  
	   <a href = "users.jsp"> click here to go to user home page</a> </h3>
</body>
</html>
