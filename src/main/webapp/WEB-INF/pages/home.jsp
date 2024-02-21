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
background-color: white;
background-image: url('');
background-repeat: no-repeat;
background-size: 130%;
background-position: fixed;

}
.account-options{
background-color: #f9f9f9;
display:name;
position: absolute;
min-width: 160px;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2)
  z-index: 1;
}
.account-btn {
    backgroundcolor:#4CAF50;
    color: white;
    padding: 14px 20px;
    border: none;
    cursor: pointer;
}
.account-options a{
    color : black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;

}
.account-options a:hover{
    background-color: #f1f1f1;
}
.account-btn:hover + .account-options{
display: block;}
.show{

display:block;

}
.account{
  padding: 14px 20px;
  margin-left:1350px;

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
  




</style>
<body>



<div class="account">
    <button class="account-btn" onclick="toggleOptions()">Account</button>
    <div class="account-options" id="accountOptions">
    <a href="#">Cancel Ticket</a>
    <a href="#">Change Travel Date</a>
    <a href="#">Book Ticket</a>
    <a href="${pageContext.request.contextPath}/user">Login</a>
    <a href="${pageContext.request.contextPath}/addBus">AddBus</a>
   
    </div>
</div>

<script>
   fuction toggleOptions(){
	   var options = document.getElementById("accountOptions"); 
	   options.classList.toggle("show");
   }
   window.onclick = function(event){
	   if(!event.target.matches('.account-btn')){
		   var options = document.getElementById("accountOptions");
		   if(options.classList.contain('show')){
			   options.classList.remov('show;')
		   }
	   }
   }
   }
</script>


</body>
</html>