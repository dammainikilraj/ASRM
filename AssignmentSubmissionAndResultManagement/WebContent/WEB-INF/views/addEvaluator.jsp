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
				<b> <label> <strong>Add Evaluator</strong>
				</label></b>
			</h4>
		</div>

		<div class="panel-body">
			<form:form id="student_assg_details_form"
				commandName="addEvaluator" method="POST">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label> <strong>User Name:</strong>
							</label>
							<form:input path="userName" cssClass="form-control" id=""
								maxlength="45" />
						</div>

					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label> <strong>Password:</strong>
							</label>
							<form:input path="password" cssClass="form-control" id=""
								maxlength="15"/>
						</div>

					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label> <strong>Email Id:</strong>
							</label>
							<form:input path="emailId" cssClass="form-control" id=""
								maxlength="45" />
						</div>

					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label> <strong>Phone Number:</strong>
							</label>
							<form:input path="phoneNumber" cssClass="form-control" id=""
								maxlength="10" />
						</div>

					</div>
				
					</div>
					<div class="row">
						<div class="col-md-3">
						<div class="form-group">
							<label> <strong>Gender:</strong>
							</label>
							<div class="row">
							<div class="col-md-12">
								<div class="checkbox-field">
									<form:radiobutton path="gender" value="M" label=" Male"
										id="lms_new_user_m_gender" />
								</div>
								<div class="checkbox-field">
									<form:radiobutton path="gender" value="F" label=" Female"
										id="lms_new_user_f_gender" />
								</div>
							</div>
							</div>
						</div>

					</div>
						<div class="col-md-3">
						<div class="form-group">
							<label> <strong>Branch:</strong>
							</label>
							<form:input path="branch" cssClass="form-control" id=""
								maxlength="45"/>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label> <strong>College:</strong>
							</label>
							<form:input path="college" cssClass="form-control" id=""
								maxlength="45"/>
						</div>
					</div>
				</div>
				<div class="row">
				<div class="col-md-2">
					<div class="form-group">
						<button type="submit" id="sbmtBtn" class="btn btn-primary">Submit</button>
					</div>
				</div>
				</div>
			</form:form>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	
	$("#phoneNumber").val(null);
	
	$("#student_assg_details_form").validate({
		rules : {

			year : {
				userName : true,
				minlength:3,
				maxlength:45

			},
			password : {
				required : true,
				minlengh:5,
				maxlength:15,
			},
			emailId : {
				required : true,
			},

			phoneNumber : {
				required : true,
				minlength:10,
				maxlength:10,
			},
			gender : {
				required : true,
			},
			college : {
				required : true,
			},

		},
		messages : {

			userName : {
				required : "Please Enter User Name",
				minlength:"Please Enter Minimum 3 Characters",
				maxlength:"Please Enter Maximum 45 Characters",

			},
			password:{
				required:"Please Enter Password",
				minlength:"Please Enter Minimum 3 Characters",
				maxlength:"Please Enter Maximum 15 Characters",
			},

			emailId : {
				required : "Please Enter Email Id",
			},
			phoneNumber : {
				required : "Please Enter Phone Number subject",
				minlength:"Please Enter Minimum 10 Characters",
				maxlength:"Please Enter Maximum 10 Characters",

			},
			gender : {
				required : "Please Select Gender",
			},
			college : {
				required : "Please Enter College Name",
				minlength: "Please Enter Minimum 3 Characters",
			},

		}
	});
})



</script>
