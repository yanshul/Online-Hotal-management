<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>hotel management</title>
<link href="main.css" rel="stylesheet" type="text/css">
<script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>
</head>
<body>

<% Class.forName("com.mysql.jdbc.Driver");
	  
	 Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/hotel?user=root&password=admin");
	 
	 Statement state =connect.createStatement();
	  ResultSet result = state.executeQuery("select fname,mname,lname,uname,email,mb,password,address from users");

	 String a=request.getParameter("firstName");
	String b= request.getParameter("middleName");
    String c =request.getParameter("lastName");
	String d =request.getParameter("user");
    String e =request.getParameter("emailid");
	String f =request.getParameter("mb");	
	String g =request.getParameter("passwd");
	String h =request.getParameter("Address");
String x;
	String z="";
	while(result.next())
	{
		x=result.getString("uname");
		if(d.equals(x))
		{
			 // New location to be redirected
   String site = new String("error.html");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
   break;
		}
	}	
	if(a.equals(z) || b.equals(z) ||b.equals(z) ||c.equals(z)|| d.equals(z)||e.equals(z)||f.equals(z) ||h.equals(z) ||g.equals(z) )
	{
		out.println("you left some columns blanks , go and fill them");
	}
else {
	  PreparedStatement insert= connect.prepareStatement("insert into users(fname,mname,lname,uname,email,mb,password,address) values (?,?,?,?,?,?,?,?)");
	 
	insert.setString(1,a);
	 insert.setString(2,b);
	 insert.setString(3,c);
	 insert.setString(4,d);
	 insert.setString(5,e);
	  insert.setString(6,f);
	   insert.setString(7,g);
	    insert.setString(8,h);
	 
	 insert.executeUpdate();
	 	out.println("congratulation !!!!!!!!!! your account has been created");
connect.close();}


	   %>
	
</body>
</html>