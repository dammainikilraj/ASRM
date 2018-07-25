<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<script type="text/javascript">
function noBack(){window.history.forward();}
noBack();
window.onload=noBack;
window.onpageshow=function(evt){if(evt.persisted)noBack();}
window.onunload=function(){void(0);} 
</script>

<script type="text/javascript">
 document.onmousedown=disableclick;
status="Due to Security Concerns Right Click is Disabled";
function disableclick(event)
{
  if(event.button==2)
   {
     alert(status);
     return false;    
   }
} 

</script>


</head>
<body oncontextmenu="return false">
<div class="lms-navbar">

<ul class="lms-navbar-ul">
 

      
      
</ul>
</div>
</body>
</html>