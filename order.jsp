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
	 
	 String room = request.getParameter("roomno");
	
	String b= request.getParameter("foodname");
	int k,z;
	int rk=0;
	String c,x,y;
	  String a=(String)session.getAttribute( "user_name" );
	  ResultSet result = state.executeQuery("select uname,roomno from status");
	  String n="";
	  if(room.equals(n))
	  {
		 // out.println("rk");	
		   // New location to be redirected
   String site = new String("5.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
	  }
	  else {
		  int i= Integer.parseInt(room);
		  //out.println("rk");
	  while(result.next())
	  {
	  
		  x=result.getString("uname");
		  z=result.getInt("roomno");
		  if(x.equals(a))
		  {
			  //out.println(x);
			  //out.println(z);
			  if(i==z){
				  rk=rk+1;
			  }
			 
		  }
		 
	  } 
	  if(rk==0){
				  // New location to be redirected
   String site = new String("6.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
			 
	  }
	  if(rk==1)
	  {
		String sql8 ="select uname,ammount from bill ; ";
	  ResultSet result5 = state.executeQuery(sql8);
int rkk=0;
int amm=0;
String u;
while(result5.next())
{
	u=result5.getString("uname");
	amm=result5.getInt("ammount");
	if(u.equals(a))
	{
		rkk=amm;
	}
}	
	  
		String sql4 ="select food_name,rate from food; ";
	  ResultSet result1 = state.executeQuery(sql4);
				 // out.println(z);
				  while(result1.next())
	{
		c= result1.getString("food_name");
		 k=result1.getInt("rate");
		 
		 
		if(b.equals(c)) 
		{	
	
int ab=rkk+k;
//out.println(rkk);
//out.println(k);
//out.println(ab);
			PreparedStatement update= connect.prepareStatement("update bill set ammount=? where uname= ?");
			update.setInt(1,ab);
			update.setString(2,a);
			
			update.executeUpdate();
			PreparedStatement insert= connect.prepareStatement("insert into orders(uname,room_no,food_name,ammount) values (?,?,?,?)");
			
	insert.setString(1,a);
	 insert.setInt(2,i);
	 insert.setString(3,c);
	 insert.setInt(4,k);
			insert.executeUpdate();
			out.println("thank you");
			/* // New location to be redirected
   String site = new String("thank1.html");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); */
   break;
		}	
	}
		
	  }
	  
	  }
	  
	  
	  
	
	   %>
	   
	  <a href = "users.jsp"> click here to go to user home page</a>  </h3>
	   
</body>
</html>
