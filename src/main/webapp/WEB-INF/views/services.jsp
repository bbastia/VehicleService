<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>vehicle  Service Center</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest Jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" type="text/javascript"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="<c:url value="/resources/js/Global.js"/>"></script>  
</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>	
	<div class="container">
		<div class="row">
			<h1>Services</h1>
			<div class="list-group">
<button type="button"  class="list-group-item list-group-item-info" data-toggle="collapse" data-target="#battery">Battery Change</button>
  <div id="battery" class="collapse">
   You can not Leave Worry Behind unless you know you have a healthy vehicle battery. A vehicle battery has a bunch of important functions, 
   like storing energy and providing power to the starter, ignition system, fuel system and pretty much every other electrical component 
   during start-up. Plus, it provides power to all the electronic components when your vehicle isn’t running. Regular vehicle battery 
   maintenance or an auto battery replacement from Jiffy Lube® helps prolong your vehicle battery life, keeping all these components clicking,
    blinking, honking and shining even in the harshest weather.
  </div>
  <button type="button"  class="list-group-item list-group-item-info" data-toggle="collapse" data-target="#oil">Oil Change</button>
			
	<div id="oil" class="collapse">
    This is not your standard oil change. Whether your vehicle needs conventional, high mileage, synthetic blend or full synthetic oil, 
    the Jiffy Lube Signature Service® Oil Change is comprehensive preventive maintenance to check, change, inspect, flush, 
    fill and clean essential systems and components of your vehicle. Plus, trained Jiffy Lube® technicians go over a visual 
    checklist to diagnose potential problems and plan any upcoming manufacturer recommended maintenance. With over 2,000 locations you 
    can get an oil change near your home that will be done quickly and professionally to the highest industry standards. Jiffy Lube helps you 
    Leave Worry Behind
  </div>	
  <button type="button"  class="list-group-item list-group-item-info" data-toggle="collapse" data-target="#tire">Tire Change</button>
			
	<div id="tire" class="collapse">
    When your tire goes flat or blows out on the side of the highway, you are stranded until help arrives. If you have the right tools and 
    enough strength, you may be able to pry off the busted tire, put on your doughnut, and drive to a tire repair shop. If you can’t do this, 
    you’re stuck until help arrives. Even then, you may be paying unreasonable fees for roadside service. Finally, there is an alternative 
    that gets you on-demand help without the high prices: HONK.
  </div>	
  <button type="button"  class="list-group-item list-group-item-info" data-toggle="collapse" data-target="#bulb">Bulb Change</button>
			
	<div id="bulb" class="collapse">
    Your car's lights are one of the most important things on your vehicle. If there's something wrong with them,
     it's not just a case of failing an MOT or getting a fine, poor or faulty lights will also make driving dangerous for you and others.
  </div>	
  <button type="button"  class="list-group-item list-group-item-info" data-toggle="collapse" data-target="#antifreez">Antifreeze Change</button>
			
	<div id="antifreez" class="collapse">
    Have you ever felt helpless while stranded on the side of the road with your vehicle hood up and your 
    vehicle steaming? Has your vehicle ever not started in the dead of winter because the 
    fluid in your engine was frozen? Not fun. That’s why Jiffy Lube® offers a Radiator 
    Flush to keep your engine with a fresh supply of antifreeze. This antifreeze will keep fluids 
    from freezing and the flush will help remove containments. 
  </div>	
				</div>
		</div>
	</div>
</body>
</html>