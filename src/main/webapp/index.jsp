<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>HomePage : Note-pad</title>
<%@include file="all_jsp_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 align="center">This is Note-pad</h1>
	</div>
	<br>
	<div class="container" style="padding: 0 30% 0 30%;">
		<div class="card" style="width: 100%">
			<img class="card-img-top" src="img/note.png" alt="Card image cap">
			<div class="card-body">
				<p class="card-text">Note-pad is a simple project in which I am
					performing CRUD operations using Hibernate, JSP, Servlets.</p>
			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<%@include file="footbar.jsp"%>
	</div>

</body>
</html>