<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Home page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
	
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	width: 100%;
	height: 100vh;
	background:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.2)) ,url('images/background.jpg');
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

.menu a {
	text-decoration: none;
	color: white;
	padding: 10px 20px;
	font-size: 20px;
	font-weight: bolder;
}

.menu a:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 0;
	height: 100%;
	border-bottom: 2px solid rgb(178, 33, 33);
	transition: 0.4s linear;
}

.menu a:hover::before {
	width: 90%;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}


.dropdown-content a:hover {
	background-color: #ddd;
}


.dropdown:hover .dropdown-content {
	display: block;
}


.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
 
        .contain {
            display: flex;
            margin-top:150px;
            justify-content: center;
            padding: 10px;
        }
        .contain .form-field, .date {
            margin-bottom: 4px;
        }
       .contain label {
            margin-right: 4px;
        }
       select, input[type="datetime-local"], button {
            padding: 4px;
        }
       .contain .form-field{
            background-color: white;
        }
        .contain.label{
            color: black;
            
        }
       .contain button{
            background-color: lightblue;
            width: 100px;
           
        }



</style>
</head>
<body>

	<div class="container">

		<nav>
			<div class="logo">
				<i class="fa fa-car"
					style="font-size: 30px; color: rgb(193, 58, 58);"></i>CarRentalSystem
			</div>
			<div class="menu">
				<a href="profile">Services</a> <a href="book-car">Book a Car</a> <a
					href="blog.html">Blogs</a>
				<div class="dropdown">
					<a class="dropdown">My Profile</a>
					<div class="dropdown-content">
						<a href="editprofile.jsp">Update Profile</a> 
						<a href="#">My
							Booking</a> <a href="#">Customer Support</a>
					</div>
				</div>
				<a data-target="#exampleModalCenter" data-toggle="modal"
					class="btn btn-danger text-white"><i class="fa fa-sign-out"></i>
					Logout</a>

			</div>
		</nav>

	</div>
	
	
	<div class="contain">
        <div class="form-field">
            <label for="pickup-location" class="label">Pickup Location:</label>
            <select id="pickup-location">
                <option selected>select</option>
                <option>Hinjawadi</option>
                <option>Karvenagar</option>
                <option>kothrud</option>
                <option>Katraj</option>   
            </select>
        </div>
        <div class="form-field">
            <label for="date" class="label">Date & Time</label>
            <input type="datetime-local"
               id="Test_DatetimeLocal"
               min="2015-01-01T00:00"
               max="2025-12-31T23:59"
               step="1">
        </div>
        <div class="form-field">
            <label for="drop-location" class="label">Drop Location:</label>
            <select id="drop-location">
                <option selected>select</option>
                <option>Hinjawadi</option>
                <option>Karvenagar</option>
                <option>kothrud</option>
                <option>Katraj</option>   
            </select>
        </div>
        <div class="form-field">
            <label for="date" class="label">Date & Time </label>
            <input type="datetime-local"
               id="Test_DatetimeLocal"
               min="2015-01-01T00:00"
               max="2025-12-31T23:59"
               step="1">
        </div>
        <button>Search</button>
    </div>
	
	
	<!-- Logout modal -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do you want to logout?</h4>
						<br>
						<button type="button" class="btn btn-dark text-white"
							data-dismiss="modal">Close</button>
						<a href="index.jsp" type="button"
							class="btn btn-danger text-white">Logout</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	

</body>
</html>