<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Atmecs </title>
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
<h3>Hi <%=userName %>,</h3>
<form action="<%=response.encodeURL("LogoutServlet") %>" method="post">
<input type="submit" value="Logout" >
</form>
	<center>
		<h1>TechTalks</h1>
        <h2>
        	<a href="unew">Request a TechTalk</a>
        	&nbsp;&nbsp;&nbsp;
            <a href="ulist">List of TechTalk</a>
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of TechTalks</h2></caption>
            <tr>
                <th>ID</th>
                <th>Date</th>
                <th>Title</th>
                <th>Description</th>
                <th>Presentor</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="techTalk" items="${listBook}">
                <tr>
                    <td><c:out value="${techTalk.id}" /></td>
                    <td><c:out value="${techTalk.date}" /></td>
                    <td><c:out value="${techTalk.title}" /></td>
                    <td><c:out value="${techTalk.description}" /></td>
                    <td><c:out value="${techTalk.presenter}" /></td>
                    <td>
                    	<a href="uregister?id=<c:out value='${techTalk.id}' />&username=<%=userName %>">Register</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	                	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
