<!doctype html>
<%@page import="com.snehasish.entities.Note"%>
<%@page import="com.snehasish.util.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="all_css_js.jsp"%>

<title>NoteTaker | EditNote</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-center">Edit Form:</h1>

		<%
		int noteId = Integer.parseInt(request.getParameter("noteid"));

		Session s = FactoryProvider.getFactory().openSession();

		Note note = s.get(Note.class, noteId);

		s.close();
		%>

		<form action="UpdateServlet" method="post">
			<div class="mb-3">
				<input required value="<%=note.getNoteId()%>" hidden="true"
					name="note_id" type="text" class="form-control" id="note_id"
					aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="title" class="form-label">Title</label> <input required
					value="<%=note.getTitle()%>" name="title" type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter title">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Content</label>
				<textarea required name="content" id="content" class="form-control"
					style="min-height: 100px" placeholder="Enter content"><%=note.getContent()%></textarea>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Update</button>
			</div>
		</form>
	</div>
</body>
</html>