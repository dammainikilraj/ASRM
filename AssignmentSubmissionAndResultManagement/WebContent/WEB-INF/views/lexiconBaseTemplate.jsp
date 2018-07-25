<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<tiles:insertAttribute name="head" />
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/symbol.png"></link>
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body oncontextmenu="return false">
	<div id="" class="container-fluid body-container ">
		<div class="row">
			
				<tiles:insertAttribute name="header" />
			
		</div>
		<div class="row">
 			 <div class="col-md-2">
			<div class="row">
		<tiles:insertAttribute name="menu"  />
				
				</div>
	
			</div> 
 
			<div class="col-md-10">
			
				<tiles:insertAttribute name="body" />

			</div>

		</div>
		
		<div class="row">
			<tiles:insertAttribute name="footer" />
		</div>


	</div>
</body>
</html>