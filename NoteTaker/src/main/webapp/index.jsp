<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="all_css_js.jsp"%>

<title>NoteTaker | Index</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-center my-3">Welcome to the NoteTaker</h1>
		
		<div class="card">
			<img class="img-fluid my-3 mx-auto" id="image-1" alt="" style="max-width: 700px" src="img/pic.jpg"/>
			<h2 class="text-center">Let's Start Taking Notes</h2>
		</div>
		
		<div class="container text-center">
			<a href="add_note.jsp" class="btn btn-success">Start</a>
		</div>
	</div>
</body>
</html>