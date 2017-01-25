<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Manager</title>

<script>var ctx = "${pageContext.request.contextPath}"</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/resources/css/global.css"/>" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>
<script src="<spring:url value="/resources/js/resource.js"/>"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
      <script src="<c:url value="/resources/js/Global.js"/>"></script>   
</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
	
		<div class="row">
			<h1>Resource</h1>
		</div>
		
		<spring:url value="/resource/review" var="formUrl"/>
		
		<form:form action="${formUrl}" method="POST" modelAttribute="resource">
			
			<div class="row">
				
				<div class="form-group">
					<label for="resource-name">Name</label> 
					<form:errors cssClass="form-control" path="name"/>
					<form:input path="name" cssClass="form-control" id="resource-name"/>
				</div>

				<div class="form-group">
					<label for="resource-type">Type</label> 
					
					<form:select path="type" items="${typeOptions}" cssClass="selectpicker"/>
					
				</div>

				<div class="form-group">
					
					<label for="cost">Cost</label>
					<div class="red-text text-darken-2"><Strong><form:errors path="cost"/></div></Strong>
					 <form:input id="cost"
						cssClass="form-control" path="cost" />
				
				</div>

				<div class="form-group">
					<label for="unit">Unit of Measure</label> 
					<form:radiobuttons path="unitOfMeasure" items="${radioOptions}"/>
				</div>

				<div class="form-group">
					<label for="indicators">Indicators</label> 
					<form:checkboxes id="indicators" path="indicators" items="${checkOptions}"/>
					<a id="request-link" href="<spring:url value="/resource/request" />">Send Request</a>
				</div>

				<div class="form-group">
					<label for="notes">Notes</label> 
					<form:textarea id="notes" path="notes" class="form-control" rows="3"/>
				</div>
						
				<button type="submit" class="btn btn-default waves-effect waves-light red">Submit</button>

			</div>
		
		</form:form>
		
	</div>
</body>
</html>