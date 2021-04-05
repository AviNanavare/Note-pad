<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>AddNote : Note-pad</title>
<%@include file="all_jsp_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<div class="container">
		<form action="SaveNoteServlet" method="post" >
			<h3>Enter Your Note</h3>
			<br>
			<div class="mb-3">
				<label for="title" class="form-label">
					Title
				</label> 
					<input type="text" 
					class="form-control" 
					name="title"
					required="required"
					placeholder="Enter Title"
					aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">
					Content
				</label>
				<textarea 
					name="content"
					required="required"
					placeholder="Enter your content"
					class="form-control"
					style="height: 300px"
				></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Add</button>
		</form>
	</div>
	<br>
	<div class="container">
		<%@include file="footbar.jsp"%>
	</div>
</body>
</html>