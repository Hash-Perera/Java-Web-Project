<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./css/RegOrganizerCss.css">
	<meta charset="UTF-8">
<title>ResiterOrganizer</title>
</head>
<body>

	<script src="./js/OrganizerValidScript.js"></script>

<form action="RegisterOrganizer" method="post">
	
	FirstName<input id="firstName" onkeyup="myfunction1()" type="text" name="FirstName">
	<h4 class="error" id="firstNameMsg"></h4>
	<br><br>
	
	
	LastName<input id="lastName" onkeyup="myfunction2()" type="text" name="LastName"><br>
	<h4 class="error" id="lastNameMsg"></h4>
	<br><br>
	
	
	Email<input id="email" onkeyup="myfunction4()" type="text" name="Email"><br>
	<h4 class="error" id="emailmsg"></h4>
	<br><br>
	
	
	NIC<input type="text" name="NIC">
	<br><br>
	
	
	USerName<input  id="userName"  onkeyup="myfunction3()" type="text" name="USerName"><br>
	<h4 class="error" id="usernameMsg"></h4>
	<br><br>
	
	Password<input id="password" onkeyup="checkpassword()" type="text" name="Password">
	<h4 class="error" id="passwordmsg"></h4>
	<br><br>
	
	<input type="submit" value="Submit">
	
	<!--<button>Delete</button>-->
	
</form>

</body>
</html>