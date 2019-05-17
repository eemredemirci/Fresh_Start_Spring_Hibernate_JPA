<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" prefix="c" %>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>M & M &mdash; Website For Memorable Movies</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Website For Memorable Movies" />

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<!-- Animate.css -->
	<link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
	
	<!-- Icomoon Icon Fonts-->
	<link href="<c:url value="/resources/css/icomoon.css" />" rel="stylesheet">
	
	<!-- Bootstrap  -->
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	
	<!-- Magnific Popup -->
	<link href="<c:url value="/resources/css/magnific-popup.css" />" rel="stylesheet">

	<!-- Flexslider  -->
	<link href="<c:url value="/resources/css/flexslider.css" />" rel="stylesheet">

	<!-- Theme style  -->
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	
	<!-- Modernizr JS -->
	<link href="<c:url value="/resources/js/modernizr-2.6.2.min.js" />" rel="stylesheet">
	
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
 <style>
 form {
	 margin:15px;
	 padding:15px;
 }
 </style>


</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="addUser" modelAttribute="user">
             <table>
                <tr>
                    <td><form:label path="firstName">First Name</form:label></td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td><form:label path="lastName">LastName</form:label></td>
                    <td><form:input path="lastName"/></td>
                </tr>
                <tr>
                    <td><form:label path="userName">UserName</form:label></td>
                    <td><form:input path="userName"/></td>
                </tr>
                <tr>
                    <td><form:label path="password">Password</form:label></td>
                    <td><form:input type="password" path="password"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

	<div class="fh5co-loader"></div>

	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container-wrap">
			<div class="top-menu">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.html"> M & MOVIES </a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="movies.html">Movies</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="contact.html">Contact</a></li>
							<li class="active"><a href="signin.html">Sign in</a></li>
							<li><a href="login.html">Login</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</nav>
	<div class="container-wrap">

		<form>
	  <div class="form-group">
	    <label for="exampleInputEmail1">Email address</label>
	    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">Password</label>
	    <input type="password" class="form-control" id="password" placeholder="Password">
	  </div>
		<div class="form-group">
	    <label for="exampleInputPassword1">Name</label>
	    <input type="text" class="form-control" id="name" placeholder="Password">
	  </div>
		<div class="form-group">
	    <label for="exampleInputPassword1">Surname</label>
	    <input type="text" class="form-control" id="surname" placeholder="Password">
	  </div>

	  <button type="submit" class="btn btn-primary">Submit</button>
	</form>

	</div>





	<!-- jQuery -->
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	
	<!-- jQuery Easing -->
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
	
	<!-- Bootstrap -->
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	
	<!-- Waypoints -->
	<script src="<c:url value="/resources/js/jquery.waypoints.min.js" />"></script>
	
	<!-- Flexslider -->
	<script src="<c:url value="/resources/js/jquery.flexslider-min.js" />"></script>
	
	<!-- Magnific Popup -->
	<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value="/resources/js/magnific-popup-options.js" />"></script>

	<!-- Counters -->
	<script src="<c:url value="/resources/js/jquery.countTo.js" />"></script>
	
	<!-- Main -->
	<script src="<c:url value="/resources/js/main.js" />"></script>

</body>
</html>