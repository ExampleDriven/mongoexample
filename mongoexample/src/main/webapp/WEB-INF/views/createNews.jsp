<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
	<form:form action="createNews.html" commandName="news">
		<table align="center">
			<tr>
				<td>Id</td>
				<td><form:input path="_id" disabled="true" /></td>
			</tr>
			<tr>
				<td>Title</td>
				<td><form:input path="title" /></td>
			</tr>
			<tr>
				<td>Text</td>
				<td><form:textarea path="text" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
<a href="listNews.html">&lt; back</a>
</html>