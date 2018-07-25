<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <link href="${pageContext.request.contextPath}/resources/css_new/style.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js_new/jquery-listslider.js"></script>
    <link rel="stylesheet" href="css/build.css"/> --%>
<style>
</style>

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">


				<li><a href="#" style="cursor: default"><b> <c:if
								test="${pageTitle!=null}">
								<c:out value="${pageTitle}" />
							</c:if>
					</b></a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" style="cursor: default"> <b>Welcome <i
							class="fa fa-user" id="welcomeUser" aria-hidden="true"></i>
							${userName}
					</b></a></li>
				<li><a href="${pageContext.request.contextPath}/loginForm.html"><i
						class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
				

			</ul>
		</div>
	</div>
</nav>

<script>

</script>