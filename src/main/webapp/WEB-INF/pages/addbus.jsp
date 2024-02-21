<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  background-image: url('https://img.freepik.com/free-photo/side-view-friends-traveling-by-train_52683-124704.jpg?w=996&t=st=1708512685~exp=1708513285~hmac=1fb17ab0f52b541035e80ac3b05505a7ec63495572319c356ac16cedfe85b628');
    background-repeat: no-repeat;
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
h1 {
  color: blue; 
  font-size: 36px; 
  font-family: Arial, sans-serif; 
}
h1 {
  text-align: center; 
  margin-top: 20px; 
  margin-bottom: 20px; 
  background-color: white;
}
img.responsive {
  max-width: 50%;
  height: 20%;
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
img {
  width: 50%; 
  height: auto; 
  display: block; 
  padding-right:none;
  margin: 0 auto; 
  padding-left:20px;
}









</style>
<body>

<form action="${pageContext.request.contextPath}/add" modelAttribute="bus" method="post">
<h1>add bus</h1>
<label for="from">From:</label>
<input type="text" id="from" name="from" required><br>
<label for="to">To:</label> 
<input type="text" id="to" name="to" required><br>
<label for="busno">Busno:</label> 
<input type="text" id="busno" name="busno" required><br>
<label for="busname">Busname:</label>
<input type="text" id="busname" name="busname" required><br> 
<label for="type">Type:</label>
<input type="text" id="type" name="type" required><br>
<label for="date">Datevalue:</label> 
<input type="date" id="datevalue" name="datevalue" required><br>
<button type="submit">Add Bus</button>`
</form>





</body>
</html>