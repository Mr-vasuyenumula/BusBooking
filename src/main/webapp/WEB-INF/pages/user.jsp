<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
    height: 500px; 
    grid-gap: 10px;
   background-color: lightyellow;
     background-image:url('tse4.mm.bing.net/th?id=OIP.Q2GLtAjF1mjQORqoHjv-bwAAAA&pid=Api&P=0&h=180');
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

tr {
  background-color: #f2f2f2;
}
td {
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color: #f2f2f2;
}
td, th {
  border: 1px solid #ddd;
  text-align: left;
  padding: 8px;
  padding-bottom:0;
  padding-top:20px;
}
th {
  background-color: #4CAF50;
  color: white;
}
td, th {
  text-align: center;
}
table {
  margin-left: 10px;
  margin-right: 10px;
  border-collapse: collapse;
   
}
h1 {
    font-size: 36px;
        color: blue;
          font-family: 'Arial', sans-serif;
           text-shadow: 2px 2px 4px #000000;
            text-align: center;
             margin: 20px 0;
    padding: 10px;
}
h2{
   font-size: 36px;
        color: blue;
          font-family: 'Arial', sans-serif;
           text-shadow: 2px 2px 4px #000000;
            text-align: center;
             margin: 10px 0;
    padding: 10px;

}
input[type="text"],
input[type="password"]
{
width: 100%;
    padding: 10px;
    margin-bottom: 2px;
    padding-right:20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;

}
h3,h4{
 font-size: 20px;
        color: blue;
          font-family: 'Arial', sans-serif;
           text-shadow: 2px 2px 4px #000000;
            text-align: center;
             margin: 10px 0;
    padding: 2px;

}
button {
    background-color: #008CBA;
    color: white; 
    padding: 14px 20px; 
    border: none;
    cursor: pointer; 
    font-size: 16px; 
    border-radius: 5px; 
}

button:hover {
    background-color: #007B9E;
}


</style>

<body>

<img alt="" src="tse4.mm.bing.net/th?id=OIP.Q2GLtAjF1mjQORqoHjv-bwAAAA&pid=Api&P=0&h=180">

</body>



</html><form:form action="${pageContext.request.contextPath}/login" modelAttribute="user">
   <table align="center" style="background-color:LightBlue">
  
      <thead>
         <th><h2>🎀  𝒲𝐸𝐿𝒞🏵𝑀𝐸 - 𝒯🏵 - 𝐵𝐿𝒰𝐸 𝐵𝒰𝒮  🎀 </h2></th>
         <tr>
            <td><h3>USER-NAME</h3><input type="text" name="username" id="type"> </td>
            </tr>
            
         <tr>
             <td><h4>PASS-WORD</h4><input type="password" name="password" id="type"></td>
          </tr>
          <tr> 
          <tr>
              <td><br><button type="button" class="cancel">Cancel</button>
                      <button type="submit" class="signup">Login</button></td>
                      
                      </tr>
            
            
            <tr>
               <td>
               
                   <br> NEW - USER ; <a href="${pageContext.request.contextPath}/signup">SignIn</a>
                   </td>
                   </tr>
             </thead>
         </table>
  </form:form>
</table>
