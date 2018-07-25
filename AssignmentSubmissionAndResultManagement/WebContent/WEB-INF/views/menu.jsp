<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<style>
li { display: inline }
	nav.sidebar a{
			padding-right: 54px;
			color:white;
		}
</style>
<aside class="lexicon_left_block">
<nav class="navbar navbar-inverse sidebar  lms-side-bar"  role="navigation">
    <div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
				<%-- <div class="profile-pic-img">
  <img  class="" src="${profileImagePath}" alt="" style="">
 <!--  <P class="profile-pic-img-label"><i class="fa fa-camera" aria-hidden="true"></i> <span><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">change pic</button></span></P> -->
</div> --%>
   
		</div>
		<!-- <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1" > -->
	<ul class="nav navbar-nav" id="ss" style="overflow-y:auto;height:583px; ">
        <c:if test="${userName eq 'admin' }">
         <li><a type="button" class="btn icon-btn" id="" href="${pageContext.request.contextPath}/addEvaluator.html">Add Evaluator</a></li>
        <li><a type="button" class="btn icon-btn" id="" href="${pageContext.request.contextPath}/addStudentAssgDetails.html">Add Student Assg Details</a></li>
		</c:if>
		<li><a type="button" class="btn icon-btn" id="" href="${pageContext.request.contextPath}/viewStudentAssgDetails.html">View Assignments</a></li>
	</ul>
		
		</div>
		
	<!-- </div> -->
</nav> 
</aside>

    <script>
    
    $(function(){
        $("#CropSource").Jcrop({
            aspectRatio: 1,
            setSelect:   [50, 0, 300,300],
            allowResize: false
        });
    });
    
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#cropped').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#profile_pic_id").change(function(){
        readURL(this);
    });
    
    
    
    $(function(){

    	$("#cropped").load(function(){
            $('#cropped').Jcrop({
            	aspectRatio: 1,
                onChange: updateCoords,
                onSelect: updateCoords
            });
  });
    	
    	
   /*  	$('#cropped').Jcrop({
    	aspectRatio: 1,
    	onSelect: updateCoords
    	}); */

    	});

    	function updateCoords(c)
    	{
    	$('#x').val(c.x);
    	$('#y').val(c.y);
    	$('#w').val(c.w);
    	$('#h').val(c.h);
    	};

    	function checkCoords()
    	{
    	if (parseInt($('#w').val())) return true;
    	alert('Please select a crop region then press submit.');
    	return false;
    	};
    
    

    
    
    
      $(function() {
    /* 	  $(".rotate-cw").click(
    		function(){
    			$("#profile_pic_id").val();
    	    	  
    	    	  alert($("#profile_pic_id").val());
    		}	  
    	  ); */
    	  
        $('.image-editor').cropit({
          imageState: {
            src: 'http://lorempixel.com/500/400/',
          },
        });

        $('.rotate-cw').click(function() {
          $('.image-editor').cropit('rotateCW');
        });
        $('.rotate-ccw').click(function() {
          $('.image-editor').cropit('rotateCCW');
        });
        $(".resetimg").click(function(){
        	 $(".cropit-preview-image").replaceWith( '<img class="cropit-preview-image" >'); 
        	$("#profile_pic_id").replaceWith($("#profile_pic_id").val('').clone(true));
        }
        		);
        $('.exportimg').click(function() {
            var imageData = $('.image-editor').cropit('export');
             window.open(imageData); 
          });
        $('.export').click(function() {
          var imageData = $('.image-editor').cropit('export');
          $(".cropit-preview-image").replaceWith( '<img class="cropit-preview-image"  src="'+imageData+'">');
        /*   document.querySelector('.cropit-preview-image-container').innerHTML += '<img class="cropit-preview-image" src="'+imageData+'">'; */
          /* window.open(imageData); */
        });
      });
 
    </script>