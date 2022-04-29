<%@page import="com.snehasish.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.snehasish.util.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.query.Query"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show notes page</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-center mt-3">All Notes:</h1>
		<br>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<%
					Session s = FactoryProvider.getFactory().openSession();

					/* Query q = s.createQuery("from Note");
					List<Note> notes = q.list(); */
					
					List<Note> notes = s.createQuery("from Note").list();
					
					for (Note note : notes) {
					%>

					<div class="card my-5">
						<img src="img/pic.jpg" style="max-width: 150px"
							class="card-img-top" alt="">
						<div class="card-body">
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<p class="card-text"><%=note.getContent()%></p>
							<a href="DeleteServlet?noteid=<%= note.getNoteId() %>" class="btn btn-danger">Delete</a> <a href="edit.jsp?noteid=<%= note.getNoteId() %>"
								class="btn btn-primary">Update</a>
						</div>
					</div>

					<%
					}

					s.close();
					%>
				</div>


			</div>
		</div>




	</div>
</body>
</html>