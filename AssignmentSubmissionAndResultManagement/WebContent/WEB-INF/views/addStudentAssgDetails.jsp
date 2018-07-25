<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="middle-section">
	<c:if test="${msg!=null}">
		<font color="green"> <b> <c:out value="${msg}" />
		</b>
		</font>
	</c:if>
	<c:if test="${fail!=null}">
		<font color="red"> <b> <c:out value="${fail}" />
		</b>
		</font>
	</c:if>
	<div class="panel panel-info">

		<div class="panel-heading">
			<h4>
				<b> <label> <strong>Student Assignment Details</strong>
				</label></b>
			</h4>
		</div>

		<div class="panel-body">
			<form:form id="student_assg_details_form"
				commandName="studentAssgDetails" method="POST">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label> <strong>Student Name:</strong>
							</label>
							<form:input path="studentName" cssClass="form-control" id=""
								maxlength="45" />
						</div>

					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label><strong>Year:</strong></label>
							<form:select path="year" cssClass="form-control">
								<form:option value="" label="--Select--" selected="true"
									cssStyle="display: none;" />
								<form:options items="${yearList1}" />

							</form:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label><strong>Semester:</strong></label>
							<form:select path="semester" cssClass="form-control">
								<form:option value="" label="--Select--" selected="true"
									cssStyle="display: none;" />
								<form:options items="${semList1}" />

							</form:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label><strong>Subject:</strong></label>
							<form:select path="subject" cssClass="form-control">
								<form:option value="" label="--Select--" selected="true"
									cssStyle="display: none;" />
								<form:options items="${subjectList1}" />

							</form:select>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<button type="submit" id="sbmtBtn" class="btn btn-primary">Submit</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	
	
	$("#student_assg_details_form").validate({
		rules : {

			year : {
				required : true,

			},
			semester : {
				required : true,

			},

			subject : {
				required : true,

			},
			studentName : {
				required : true,
				minlength : 3,
				maxlength : 45,

			},

		},
		messages : {

			year : {
				required : "Please Select Year",

			},

			semester : {
				required : "Please select Semester",
			},
			subject : {
				required : "Please select subject",

			},
			studentName : {
				required : "Please Enter Student name",
				minlength : "please enter minimum 3 digits",
				maxlength : "please enter maximum 45 digits",

			},

		}
	});
})



</script>
