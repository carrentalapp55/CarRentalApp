<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Rental Service</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
           
        }
        .container {
            display: flex;
            justify-content: center;
 
            padding: 10px;
        }
        .form-field, .date {
            margin-bottom: 4px;
        }
        label {
            margin-right: 4px;
        }
        select, input[type="datetime-local"], button {
            padding: 4px;
        }
        .form-field{
            background-color: white;
        }
        .label{
            color: black;
        }
        button{
            background-color: yellow;
            width: 100px;
           
        }
    </style>
</head>
<body>
    <div class="container">
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
</body>
</html>
    