<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.entity.*,com.helper.*,org.hibernate.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>UpdateNote : Note-pad</title>
<%@include file="all_jsp_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">Update Notes</h1>
		<br>
		<%
		System.out.print(request.getParameter("note_id"));
		int id = Integer.parseInt(request.getParameter("note_id"));
		System.out.print(id);
		
 		Session session3 = FactoryProvider.getFactory().openSession();
 		Note note = (Note) session3.get(Note.class, id);
 		session3.close();

		%>
		<div class="container">
		<form action="UpdateServlet" method="post" >
			<h3>Enter Your Note</h3>
			<br>
			<input value="<%= note.getId() %>" name="id" type="hidden" >
			<div class="mb-3">
				<label for="title" class="form-label">
					Title
				</label> 
					<input type="text" 
					class="form-control" 
					name="title"
					required="required"
					placeholder="Enter Title"
					aria-describedby="emailHelp"
					value="<%= note.getTitle() %>">
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
					>
					<%= note.getContent() %>
					</textarea>
			</div>
			<button type="submit" class="btn btn-primary">Add</button>
		</form>
	</div>
	</div>
	<br>
	<div class="container">
		<%@include file="footbar.jsp"%>
	</div>
</body>
</html>