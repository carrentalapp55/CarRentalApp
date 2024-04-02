
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot password</title>
</head>
<body>
         <form action="forgotpass" method="post">
             <h1>Forgot Password</h1>
        Enter  email : <input type="email" name="email"><br><br>
        New password : <input type="password" name="newpassword"><br><br>
         Confirm New password : <input type="password" name="confirmnewpassword">
         <button type="submit">submit</button>
         </form>
</body>
</html>