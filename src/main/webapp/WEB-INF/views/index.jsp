<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 30%;
  height: 300px;
}

.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

.tab button:hover {
  background-color: #ddd;
}

.tab button.active {
  background-color: #ccc;
}

.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 70%;
  border-left: none;
  height: 300px;
}
</style>
</head>
<body>

<h2>Vertical Tabs</h2>
<p>Click on the buttons inside the tabbed menu:</p>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Home')" id="defaultOpen">Home</button>
  <button class="tablinks" onclick="openCity(event, 'User')">User</button>
  <button class="tablinks" onclick="openCity(event, 'Admin')">Admin</button>
</div>

<div id="Home" class="tabcontent">
<h1>E-Pass Management System</h1>
	<h2>Covid-19 ePass</h2>
	<br>
	<hr />
	<h4>KINDLY READ INSTRUCTIONS BELOW</h4>
	<hr />
	<div class="tdata">
		<label>1.The pass holders are requested to carry the Driving
			License compulsorily. </label>
	</div>
	<div class="tdata">
		<label>2. Strict actions shall be taken against those found
			misusing the e-pass. </label>
	</div>
	<div class="tdata">
		<label>3. The vehicle e-Pass is only for
			intrastate&#x2f;interstate travel. </label>
	</div>
	<div class="tdata">
		<label>4. The state authority is liable to cancel the pass
			anytime. </label>
	</div>
	<div class="tdata">
		<label>5. This Vehicle e-Pass is non-transferable. </label>
	</div>
</div>

<div id="User" class="tabcontent">
<a href="userloginform">User LogIn</a>
<br>
	<br>
	<a href="adduserform">New User Register</a>
</div>

<div id="Admin" class="tabcontent">
<a href="adminloginform">Admin LogIn</a>
</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   
</body>
</html> 
