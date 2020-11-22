<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Form</title>
</head> 
<body>
<%
try {
	String email=request.getParameter("email");

	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", ""); // create new connection with test database
	
	String query="select * from register where email='"+email+"'";
	
	PreparedStatement ps=(PreparedStatement) con.prepareStatement(query); 
	ResultSet rs=ps.executeQuery();
%>
 <center><table border='1'>
		
<%
while (rs.next()) {
%>
<form action="user_update" method="post">
			
		<tr>
			<td>Email</td> <td> <input type="email" name="email"  value="<%=rs.getString(2)%>"> </td>
		</tr>
		
		<tr>
			<td> UserName</td> <td> <input type="text" name="name" value="<%=rs.getString(3)%>"> </td>
		</tr>
		<tr>
			<td>Password</td> <td> <input type="password" name="pwd" value="<%=rs.getString(4)%>"> </td>
		</tr>
		
		
		
		<tr>
				<td>
				<input type="submit" value="Update"/>
			</td>
		</tr>

<% } %>

<%
// close all the connections.
rs.close();
ps.close();
con.close();
} catch (Exception ex) {}
%>

</table>
</center>
</body>
</html>