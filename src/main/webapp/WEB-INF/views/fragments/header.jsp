<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="brand-logo navbar navbar-inverse">
		<div class="container-fluid">
		
			<div class="navbar-header">
			
      			<a class="navbar-brand" href="<spring:url value="/"/>"></a>
    		</div>
    		<!-- <a href="#" class="navbar-left"><img src="<c:url value="/resources/images/logo.jpg" />" alt="vehicle Service"></a> -->
    		<ul class="nav navbar-nav">
    			
    			<li><a class="glyphicon glyphicon-home" href="<spring:url value="/"/>">Home</a></li>
    		
    			<li class="dropdown">
          			
          			<a class="glyphicon glyphicon-th-list" href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false">Projects <span class="caret"></span></a>
          	
          	
          			<ul class="dropdown-menu" role="menu">
            			<li ><a href="<spring:url value="/project/add"/>">Add</a></li>
            			<li><a href="<spring:url value="/project/find"/>">Find</a></li>
          			</ul>
          			
        		</li>
        		
    			<li class="dropdown">
          		
          			<a  href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false" >Resources <span class="caret"></span></a>
          		
          			<ul class="dropdown-menu" role="menu">
            			<li><a href="<spring:url value="/resource/add"/>">Add</a></li>
            			<li><a href="<spring:url value="/resource/find"/>">Find</a></li>
          			</ul>
        		
        		</li>
        		
				
				<sec:authorize access="authenticated" var="authenticated"/>
				<c:choose>
					<c:when test="${authenticated}">
					<li><a class="glyphicon glyphicon-wrench" href="<spring:url value="/services/"/>">Services</a></li>
				<li><a  class="glyphicon glyphicon-list-alt" href="<spring:url value="/appointments/"/>">Appointments</a></li>
				
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<li><a class="glyphicon glyphicon-calendar" href="<spring:url value="/schedule/"/>">Schedule</a></li>
				</sec:authorize>
						
							<li style="padding-left:320px">	
							<a  href="#">Welcome &nbsp; <div class="glyphicon glyphicon-user" ></div><sec:authentication property="name"/></a>
								</li>	
						<li>		<a id="logout" href="#">Logout</a>
						
							<form id="logout-form" action="<c:url value="/logout"/>" method="post">
								<sec:csrfInput/>
							</form>
						</li>
					
					</c:when>
					<c:otherwise>
						<li><a href="<spring:url value="/login/"/>">Sign In</a></li>	
						<li><a href="<spring:url value="/register"/>">Sign up</a></li>					
					</c:otherwise>
				</c:choose>
				
        		
    		</ul>
    		
		</div>
</nav>