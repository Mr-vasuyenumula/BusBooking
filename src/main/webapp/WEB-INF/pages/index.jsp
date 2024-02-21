<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
  text-align: center;
  display: grid;
    justify-content: center; 
    align-content: center; 
    height: 200px; 
    grid-gap: 10px;
   background-color: lightblue;
}

a:link {
  color: blue;
  text-decoration: none; 
}
a:visited {
  color: purple;
}
a:hover {
  color: red;
  text-decoration: underline;
}
a:active {
  color: yellow;
}
a:hover {
  color: red;
  transition: color 0.5s ease-in-out;
}
center{
  text-align: center;
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
<img alt="" src="https://cdn.dribbble.com/users/2272786/screenshots/10965290/media/4e95c9f5d1d404ef98730ad989b6a5ac.gif">
<div class="cenetr">
<a href="${pageContext.request.contextPath}/admin">Admin</a>
<a href="${pageContext.request.contextPath}/user">User</a>
<a href="${pageContext.request.contextPath}/bus">Bus</a>
</div>
</body>
</html>