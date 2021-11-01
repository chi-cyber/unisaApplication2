<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ResultServlet" method= "post" >
 Username <input type ="text" name = "name"/><br>
 Password <input type = "password" name = "password"/><br>
 <input type ="submit" value ="login">
 <p></p>
 
 <a href="student.jsp">Create account</a>
</form>

</body>
</html>