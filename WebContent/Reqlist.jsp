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
					Atmecs TechTonics <small>Admin Dashboard</small>
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
					 <a href="alist">Home</a>
				</li>
				<li>
					 <a href="anew"> Add TechTalks</a>
				</li>
				<li class="active">
					 <a href="arequest"> Requested TechTalks  <c:if test="${count!=0}"> <span class="badge pull-right"><c:out value="${count}"/> New</span></c:if></a>
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
			<table class="table">
				<thead>
					<tr>
					      <tr>
                <th>ID</th>
                <th>Date</th>
                <th>Title</th>
                <th>Description</th>
                <th>Presentor</th>
                <th>Actions</th>
            </tr>
					</tr>
				</thead>
				<tbody>
					  <c:forEach var="techTalk" items="${reqlist}">
                <tr class="success">
                    <td><c:out value="${techTalk.id}" /></td>
                    <td><c:out value="${techTalk.date}" /></td>
                    <td><c:out value="${techTalk.title}" /></td>
                    <td><c:out value="${techTalk.description}" /></td>
                    <td><c:out value="${techTalk.presenter}" /></td>
                    <td>
                    	<a href="aaccept?id=<c:out value='${techTalk.id}' />"><button type="submit" class="btn btn-success">
				                 Accept
			               </button></a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="adecline?id=<c:out value='${techTalk.id}' />"><button type="submit" class="btn btn-danger">
				                 Decline
			               </button></a>                    	
                    </td>
                </tr>
            </c:forEach>
				</tbody>
			</table>
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