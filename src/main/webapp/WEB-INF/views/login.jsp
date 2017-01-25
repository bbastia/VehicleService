<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Above Vehicle Service</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest Jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
	type="text/javascript"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>  
</head>
<body>
		<jsp:include page="../views/fragments/header.jsp"></jsp:include>		
	
	<div class="container">
    <div class="row">
        <div class="col m6">
        <br/>
            <h3>Above vehicle service</h3>
            <p>Above vehicle service is a series of maintenance procedures carried out at a set time interval or after the vehicle has travelled a certain distance. The service intervals are specified by the vehicle manufacturer in a service schedule and some modern cars display the due date for the next service electronically on the instrument panel.

The completed services are usually recorded in a service book which is rubber stamped by the service centre upon completion of each service. A complete service history usually adds to the resale value of a vehicle.</p>
        </div>
        <div class="col m6">
            <h2 class="center-align">Login</h2>
            <div class="row">
            <c:url value="/login" var="loginVar"/>
                <form class="col s12" id="appointment-form" action="${loginVar}" method="POST">
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="custom_username" name="custom_username" type="text" class="validate">
                            <label for="custom_username">Username</label>
                        </div>
                         <sec:csrfInput/>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                        <c:url value="/login" var="loginVar"/>
                            <input id="pass" name="custom_password" type="password" class="validate">
                            <label for="pass">Password</label>
                        </div>
                        <sec:csrfInput/>
                    </div>
                    <div class="row">
                        <div class="col s12">
                            <p>
                                <input type="checkbox" id="remember">
                                <label for="remember">Remember me</label>
                            </p>
                        </div>
                    </div>
                   <!--  <div class="divider"></div>
                    <div class="row">
                        <div class="col m12">
                            <p class="right-align"> -->
                           

			<c:if test="${param.logout != null }">
				<p>You have successfully been logged out.</p>
			</c:if>

			<c:if test="${param.error != null }">
				<p>Invalid Username and Password.</p>
			</c:if>
                                <button  type="submit"  class="btn btn-large waves-effect waves-light" >Login</button>
                            </p>
                
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>