<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
	padding: 0;
	margin: 0;
}

body {
	color: white;
	background-color: black;
}
input, button ,select{
	border: none;
	outline: none;
	font-size:20px;
	border-radius:5px;
}
.container {
	position: relative;
	height: 100vh;
	display: grid;
	justify-content:center;
	align-items: center;
}
.form {
	position: relative;
	background-color: hsla(0, 0%, 10%, 0.1);
	border: 2px solid white;
	margin-inline: 1.5rem;
	padding: 2.5rem 1.5rem;
	border-radius: 1rem;
	font-size:2rem;
	
	
}

.title {
	text-align: center;
	font-size: 2rem;
	font-weight: 500;
	margin-bottom: 2rem;
}
.submit{
justify-content:center;
}
</style>
</head>
<body>
<div class="container">
<h2 class="title">Add Car</h2>
<form class="form" action="post" method="post">
<label>Car Model:</label>
<input type="text" name="carmodel" required><br><br>
<label>Brand:</label>
<input type="text" name="brand"><br><br>
<label>Select Fuel:</label>
<select>
<option disabled selected>select</option>
<option>Petrol</option>
<option>Diesel</option>
</select><br><br>
<label>Price Per Hour:</label>
<input type="number" name="price"><br><br>
<label>Seating Capacity:</label>
<input type="number" name="capacity"><br><br>
<label>Upload CarImage:</label>
<input type="file" name="image"><br><br>
<button type="submit" class="submit">Submit</button>
</form>

</div>

</body>
</html>