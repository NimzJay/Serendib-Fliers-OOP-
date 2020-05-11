<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%
String userId = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";

//Connection con = null;

try{
	Class.forName(driverName);
}catch(ClassNotFoundException e){
	e.printStackTrace();
}

Connection con = null;
Statement st = null;
ResultSet rs = null;
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View User | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<h2 align = "center"><font><strong>All Users</strong></font></h2>
<table class="form" align = "center" cellpadding="1" cellspacing="5" border = "1" action = "dt">
<tr>
</tr>

<tr bgcolor = "lightgray">
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Username</b></td>
<td><b>Password</b></td>
<td><b>Address</b></td>
<td><b>Contact Number 1</b></td>
<td><b>Contact Number 2</b></td>
<td><b>Email</b></td>
<td><b>NIC</b></td>
<td><b>Type</b></td>
<td><b>Action 01</b></td>
<td><b>Action 02</b></td>

</tr>
<%
try{
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root","");
	st=con.createStatement();
	String sql=("SELECT * FROM user ");
	
	ResultSet res=st.executeQuery(sql);
	while(res.next()){
%>

<tr>

<td><%=res.getString("userFname") %></td>
<td><%=res.getString("userLname") %></td>
<td><%=res.getString("username") %></td>
<td><%=res.getString("password") %></td>
<td><%=res.getString("address") %></td>
<td><%=res.getInt("ContactNo1") %></td>
<td><%=res.getInt("ContactNo2") %></td>
<td><%=res.getString("email") %></td>
<td><%=res.getString("NIC") %></td>
<td><%=res.getString("type") %></td>
<td><a href = "adminDeleteUser.jsp">Delete</a></td>
<td><a href = "GetId_adminUpdateUser.jsp">Update</a></td> 
</tr>
<%
	}
	
	
}catch (Exception e){
	
	e.printStackTrace();

}

%>

</table>
<form class="register" method = "post" action = "adminInsertUser.jsp" >

<br><br>
<input type = 'submit' value='Insert Info'>
</form>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<form class="logout" action="logout" method="POST">
    	<table class="logout" style="border-color:dimgray; padding:4px" align="center">
    		<tr>
    			<td><input type="submit" value="LOGOUT"></td>	
    		</tr>	
    	</table>
    </form>
</body>
</html>