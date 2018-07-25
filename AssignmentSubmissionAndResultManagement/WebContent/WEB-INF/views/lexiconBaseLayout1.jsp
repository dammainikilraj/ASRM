<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<tiles:insertAttribute name="head" />
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/symbol.png"></link>
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body oncontextmenu="return false">

<tiles:insertAttribute name="body" />

</body>
</html>