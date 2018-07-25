<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- <link rel="stylesheet" href="resources/css/screen.css" type="text/css"
	media="screen, projection"/> -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/pepper-ginder-custom.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jtable.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.toast.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/set1.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.Jcrop.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui-1.10.0.custom.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.ui.timepicker.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<%-- 	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css_new/style.css" /> --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login-form-style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/loading.css" />

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/alert.css"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/default/theme.css"/>
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-ui.multidatespicker.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>

	<script
	src="${pageContext.request.contextPath}/resources/js/alert.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<%-- <script
	src="${pageContext.request.contextPath}/resources/js/jquery.jtable.js"></script> --%>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js"></script>
	<script
	src="${pageContext.request.contextPath}/resources/js/dataTables.rowsGroup.js"></script>
	
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/additional-methods.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.autocomplete.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.tabletoCSV.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.toast.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.ui.core.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.ui.position.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.ui.tabs.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.min.js"></script>
 <script
	src="${pageContext.request.contextPath}/resources/js/jquery.ui.timepicker.js"></script> 
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.cropit.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.Jcrop.js"></script>
	<script
	src="${pageContext.request.contextPath}/resources/js/jquery.loading.js"></script>
	<script
	src="${pageContext.request.contextPath}/resources/js/loading.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/vrcommon.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script type="text/javascript">
	function noBack() {
		window.history.forward();
	}
	noBack();
	window.onload = noBack;
	window.onpageshow = function(evt) {
		if (evt.persisted)
			noBack();
	}
	window.onunload = function() {
		void (0);
	}
</script>
<script type="text/javascript">
	document.onmousedown = disableclick;
	status = "Due to Security Concerns Right Click is Disabled";
	function disableclick(event) {
		if (event.button == 2) {
			alert(status);
			return false;
		}
	}
</script>

<script>
	document.onkeypress = function(event) {
		event = (event || window.event);
		if (event.keyCode == 123) {
			//alert("Due to Security Concerns F12 is Disabled");
			return false;
		}
	}
	
	document.onkeydown = function(event) {
		event = (event || window.event);
		if (event.keyCode == 123) {
			alert("Due to Security Concerns F12 is Disabled")
			return false;
		}
	}
</script>
<script>
function disableF5(e) { if ((e.which || e.keyCode) == 116) e.preventDefault(); };

$(document).ready(function(){
$(document).on("keydown", disableF5);
});
	  
	  
	  
	  //==========To Disable Back Space============//
	window.history.pushState(null, "", window.location.href);        
	window.onpopstate = function() {
	    window.history.pushState(null, "", window.location.href);
	}
	//======End Code to disable back space========//

</script>
<script type="text/javascript">
$().ready(function() {
/*  $(function() {
  $(":button").keypress(check_submit).each(function() {
    check_submit();
  });
}); 

 function check_submit() {
  if ($(this).val().length == 0) {
    $(":submit").attr("disabled", true);
  } else {
    $(":submit").removeAttr("disabled");
  }
} */ 
	});
	</script>