<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>

<%session=request.getSession(false);%>
<%if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
	return;}
%>
Hello, <b><%= session.getAttribute( "username" ) %></b>
<p>You Have successfully Logged in</p>  

    <a href="logout">LogOut</a>
</body>
</html>