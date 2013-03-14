<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
	<th width="175px">Id</th>
	<td><c:out value="${news._id}" /></td>
</tr>
<tr>
	<th width="175px">Title</th>
	<td><c:out value="${news.title}" /></td>
</tr>
<tr>
	<th width="175px">Text</th>
	<td><c:out value="${news.text}" /></td>
</tr>
<tr>
	<th width="175px">Created</th>
	<td><c:out value="${news.created}" /></td>
</tr>
</table>
</body>
</html>