<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entity.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>ViewNote : Note-pad</title>
<%@include file="all_jsp_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">View Notes</h1>
		
		<div class="row">
			<div class="col-12">

				<%
				Session session1 = FactoryProvider.getFactory().openSession();
				Query q = session1.createQuery("from Note");
				List<Note> list = q.list();
				
				for (Note note : list) {
				%>
				<div class="card mt-3" style="width: 100%">
					<div class="card-body">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text"><%= note.getContent() %></p>
						<a href="DeleteServlet?id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="update.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
						<% 
								SimpleDateFormat f = new SimpleDateFormat("dd/MM/YYYY HH:mm");		
								Date d = note.getAddedDate();
								String dateStr = f.format(d);
						 %>
						<h6 style="float: right;" class="text-primary"><b>
						<%= dateStr %>
						</b></h6>
					</div>
				</div>
				
				<%
/*					int id = note.getId();
					out.print(id);
 					request.setAttribute("note_id", id);  */
				}
				session1.close();
				%>

			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<%@include file="footbar.jsp"%>
	</div>
</body>
</html>