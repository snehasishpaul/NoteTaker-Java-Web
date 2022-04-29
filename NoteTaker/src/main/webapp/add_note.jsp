<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="all_css_js.jsp"%>

<title>NoteTaker | AddNote</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-center">Please fillup the details</h1>

		<form action="AddNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Title</label>
				<input required
					name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Content</label>
				<textarea required name="content" id="content" class="form-control"
					style="min-height: 100px" placeholder="Enter content"></textarea>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Add Note</button>
			</div>
		</form>
	</div>
</body>
</html>