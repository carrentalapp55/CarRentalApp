<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	width: 100%;
	height: 100vh;
	background:url('images/car.jpg');
	background-size: cover;
	font-family: 'Times New Roman', Times, serif;
	
}

nav {
	width: 100%;
	height: 100px;
	margin-right: 40px;
	color: white;
	display: flex;
	justify-content: space-around;
	justify-items: center;
	align-items: center;
}

.logo {
	font-size: 2rem;
	letter-spacing: 2px;
	font-weight: bolder;
	margin: 0px;
}
</style>
</head>
<body>
<div class="container">
        <nav>
            <div class="logo">
                <i class="fa fa-car" style="font-size:30px;color:red;"></i>CarRentalSystem
            </div>
            <div class="menu">
                <a href="postcar.jsp">PostCar</a>
                <a href="blog.html">Blogs</a>
                <a href="#">About us</a>
                <a href="#">Contact</a>
                <a href="#">Profile</a>
                <a href="#">Logout</a>
            </div>
            
        </nav>
        
       
</div>

</body>
</html>