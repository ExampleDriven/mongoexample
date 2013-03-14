<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
Saved news
<UL>
<c:forEach var="news" items="${newsList}">
<LI><a href='news.html?id=<c:out value="${news._id}" />'><c:out value="${news.title}" /></a></LI>
</c:forEach>
</UL>
<br/>
<a href="createNews.html">&lt; Create</a>
</body>
</html>