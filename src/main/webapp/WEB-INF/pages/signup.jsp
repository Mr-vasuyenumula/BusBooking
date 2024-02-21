o<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bus booking</title>

</head>
<style>
body {
  font-family: 'Arial', sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
   
   display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
        margin-left: auto;
    margin-right: auto;
    width: 50%;
    display: flex;
  justify-content: center; 
  align-items: center;
  height: 100vh; 
    
    
}
img.responsive {
  max-width: 100%;
  height: auto;
}

img:hover {
  opacity: 0.7; 
  transform: scale(1.05); 
  transition: transform 0.5s ease, opacity 0.5s ease; 
}
img.shadow {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
}

img.border {
  border: 5px solid #555; 
  border-radius: 5px; 
}



form {
  background: #fff;
  padding: 20px;
  border-radius: 8px;
   background: #5cb85c;
  color: white;
  padding: 10px 25px;
  text-decoration: none;
  border-radius: 5px;
}
input[type="text"],
input[type="number"],
select {
  width: 100%;
    padding: 10px;
    margin-bottom: 2px;
    padding-right:20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}


button[type="submit"]:hover {
  background: #0056b3;
  
  
  
  
}
button[type="submit"]{
background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;




}
img {
  width: 100%; 
  height: auto; 
  display: block; 
  padding-right:none;
  margin: 0 auto; 
  padding-left:20px;
}







</style>


<body>
<img src="https://www.nicepng.com/png/full/254-2544253_online-bus-ticket-booking-book-volvo-ac-bus.png" alt="description of the image">

 
<form action="${pageContext.request.contextPath}/saveDetails" modelattribute="signup" method="post">



   <label  for="FirstName"><b>Firstname</b></label>
   <input type="text"  placeholder="Enter firstname" name="FirstName" id="FirstName"   required></br>
   <label for="LastName" ><b>Lastname</b></label>
   <input type="text" placeholder="Enter lastname" name="LastName" id="LastName"  required ></br>
   <label   for="age" ><b>Age</b></label>
   <input type="number" placeholder="Enter age" name="age" id="age"  required></br>
   <label  for="gender" ><b>Gender</b></label>
   <input type="text"  placeholder="Enter gender" name="gender" id="gender" required></br>
   <label for="mailid" ><b>Mailid</b></label>
   <input type="text" placeholder="Enter mailid" name="mailid" id="mailid" required></br>
    <label for="password" ><b>Password</b></label>
   <input type="text" placeholder="Enter password" name="password" id="password" required></br>
    <label for="confirmpassword" ><b>Confirmpassword</b></label>
   <input type="text" placeholder="Enter confirmpassword" name="confirmpassword" id="confirmpassword" required></br>
    <label for="contactno" ><b>Contactno</b></label>
   <input type="text" placeholder="Enter contactnumber" name="contactnumber" id="contactnumber" required></br>
    <label for="city" ><b>City</b></label>
   <input type="text" placeholder="Enter city" name="city" id="city" required></br>
     <button type="submit" class="registerbtn">Signup</button>
     <button type="submit" class=registerbtn>cancel</button>
   
   
        </form>
   </body>
</html>