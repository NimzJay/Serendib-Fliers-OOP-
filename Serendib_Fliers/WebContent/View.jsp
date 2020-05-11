<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
   
<%
String GuideId = request.getParameter("GuideId");
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
<title>View Guide | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<h2 align = "center"><font><strong>All Guide</strong></font></h2>
<table class="form" align = "center" cellpadding="1" cellspacing="5" border = "1" action = "dt">
<tr>
</tr>

<tr bgcolor = "lightgray">
<td><b>Guide ID</b></td>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Age</b></td>
<td><b>Email</b></td>
<td><b>Contact Number</b></td>
<td><b>Availability</b></td>
<td><b>Action 01</b></td>
<td><b>Action 02</b></td>

</tr>
<%
try{
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root","");
	st=con.createStatement();
	String sql=("SELECT *FROM guide ");
	
	rs=st.executeQuery(sql);
	while(rs.next()){
	//?GuideId=<%=rs.getString("GuideId")        <button type="button" class="update"></button>
%>

<tr>

<td><%=rs.getString("GuideId") %></td>
<td><%=rs.getString("FirstName") %></td>
<td><%=rs.getString("LastName") %></td>
<td><%=rs.getInt("age") %></td>
<td><%=rs.getString("Email") %></td>
<td><%=rs.getInt("ContactNumber") %></td>
<td><%=rs.getString("availability") %></td>
<td><a href = "Delete.jsp?GuideId=<%=rs.getString("GuideId")%>"><button type="button" class="delete">Delete</button></a></td>
<td><a href = "GetId_UpdateGuide.jsp">Update</a></td> 
</tr>
<%
	}
	
	
}catch (Exception e){
	
	e.printStackTrace();

}

%>

</table>
<form class="register" method = "post" action = "Guide.jsp" >

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