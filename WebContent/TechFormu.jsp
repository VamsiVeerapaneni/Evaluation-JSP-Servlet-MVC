<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Home :: Atmecs TechTonics</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

           <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/style.css" rel="stylesheet" />

  </head>
  <body>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
//allow access only if session exists
String user = null;
if(session.getAttribute("user") == null){
    response.sendRedirect("Login.jsp");
}else user = (String) session.getAttribute("user");
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
    if(cookie.getName().equals("user")) userName = cookie.getValue();
    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}else{
    sessionID = session.getId();
}
%>
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-6">
			<div class="page-header">
				<h1>
					Atmecs TechTonics <small>Employee Dashboard</small>
				</h1>
				<grammarly>
					<div class="_e725ae-textarea_btn _e725ae-not_focused">
						<div class="_e725ae-transform_wrap">
							<div class="_e725ae-status">
							</div>
						</div>
					</div>
				</grammarly>
			</div>
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-6">
						</div>
						<div class="col-md-6">
							<div class="btn-group">
								 
								 <form action="<%=response.encodeURL("LogoutServlet") %>" method="post">
							<button type="submit" class="btn btn-danger">
				                 Logout
			               </button>
			                 </form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<ul class="nav nav-pills">
				<li >
					 <a href="unew">Home</a>
				</li>
				<li class="active">
					 <a href="ulist"> Request A TechTalks</a>
				</li>
			
			</ul>
			<grammarly>
				<div class="_e725ae-textarea_btn _e725ae-not_focused">
					<div class="_e725ae-transform_wrap">
						<div class="_e725ae-status">
						</div>
					</div>
				</div>
			</grammarly>
			<div class="row">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-6">
				</div>
				<div class="col-md-6">
				   <c:if test="${techTalk == null}">
			<form action="uinsert" method="post" class="form-horizontal" role="form">
        </c:if>
					<caption>
            	<h2>
            	
            		<c:if test="${techTalk == null}">
            			Add TechTalk
            		</c:if>
            	</h2>
            </caption>
            	<c:if test="${techTalk != null}">
        			<input type="hidden" name="id" value="<c:out value='${techTalk.id}' />" />
        		</c:if> 
						<div class="form-group">
							 
							<label for="inputEmail3" class="col-sm-2 control-label">
								Date
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3" name="date" />
							</div>
						</div>
						
						<div class="form-group">
							 
							<label for="inputEmail3" class="col-sm-2 control-label">
								Title
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3"  name="title"/>
							</div>
						</div>
						
						<div class="form-group">
							 
							<label for="inputEmail3" class="col-sm-2 control-label">
								Description
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3" name="description" />
							</div>
						</div>
						
						<div class="form-group">
							 
							<label for="inputEmail3" class="col-sm-2 control-label">
								Presentor
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3" name="presenter" />
							</div>
						</div>
						
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 
								<button type="submit" class="btn btn-default">
									Add TechTalk
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
		</div>
	</div>
			<grammarly>
				<div class="_e725ae-textarea_btn _e725ae-not_focused">
					<div class="_e725ae-transform_wrap">
						<div class="_e725ae-status">
						</div>
					</div>
				</div>
			</grammarly>
		</div>
	</div>
</div>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/scripts.js"></script>
  </body>
</html>
        


