<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action= "RegistrationServlet" method="post">
<h2>UNISA Application Form</h2>
<P>
<b>Student detail:</b>
</p>
<p></p>
<div>
  <label> First name </label>
  <input type ="text" name = "firstName"/>
</div>
<p></p>
<div>
  <label> Last name </label>
  <input type = "text" name = "lastName"/>
</div>

<p></p>
<div>
<label>Telephone number</label>
  <input type ="text" name = "telephoneNumber"/>
</div>

<p></p>
<div>
  <label> Email </label>
  <input type = "email" name = "email"/>
</div>
<p></p>
<div>
  <label>Date Of Birth </label>
  <input type ="month" name = "dateOfBirht"/>
</div>

<p></p>
<div>
  <label>Marital status:</label>

  Single<input type = "radio" name = "maritalStatus" value = "single">
  Married<input type = "radio" name = "maritalStatus" value = "married">

</div>
<p></p>

<b>Select courses:</b>
<p></p>
Java<input type="radio" name = "course" value = "Java"/>
PHP<input type="radio" name = "course" value = "PHP"/>
C#<input type="radio" name = "course" value = "C#"/>
Python<input type="radio" name = "course" value = "Python"/>
C++<input type="radio" name = "course" value = "C++"/>
<p>
<input type= "submit" value="Submit"/>
</p>
<p></p>

</form>

</body>
</html>