<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login Page:: Atmecs TechTonics</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/style.css" rel="stylesheet" />

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-6">
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-6">
				</div>
				<div class="col-md-6">
					<form action="LoginServlet" method="post" class="form-horizontal" role="form">
						<div class="form-group">
							 
							<label for="inputEmail3" class="col-sm-2 control-label">
								UserName
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3" name="user">
							</div>
						</div>
						<div class="form-group">
							 
							<label for="inputPassword3" class="col-sm-2 control-label">
								Password
							</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3" name="pass">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									 
									<label>
										<input type="checkbox"> Remember me
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 
								<button type="submit" class="btn btn-default">
									Sign in
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/scripts.js"></script>
  </body>
</html>