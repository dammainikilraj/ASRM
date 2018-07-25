<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="middle-section">

	<div class="panel panel-info">
		<div class="panel-heading">
			<h4>
				<label><strong>View Student Assignments</strong></label>
			</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<table class="table table-bordered" id="studentTable">
					<thead class="holidayList">
						<tr>	
						<th><label><strong>Id</strong></label></th>
							<th><label><strong>Student Name</strong></label></th>
							<th><label><strong>Year</strong></label></th>
							<th><label><strong>Semester</strong></label></th>
							<th><label><strong>Subject</strong></label></th>

						</tr>

					</thead>
				</table>
				
			</div>
		</div>
	</div>
</div>
<!-- <script>


	 function getRowHandOver(obj){
	 var row =obj.parentNode.parentNode;
	 var cell = row.cells[0];
	 var texturl = "${pageContext.request.contextPath}/HandOverAsset/?assetId="+ cell.innerHTML;
	 obj.href = texturl;
	 var classn = obj.id = "handOver-asset";
	 } 
</script> -->
<script type="text/javascript">
	$(document)
	.ready(
			function() {
						var data = eval('${studentAssgList}');
						var table = $('#studentTable').removeAttr('width').DataTable(
										{
											
											"aaData" : data,
									        "scrollY":        "200px",
									        "scrollCollapse": true,
									        "paging":         false,
											"aoColumns" : [
												
													{
														"mData" : "id"
													},
													{
														"mData" : "studentName"
													},
													{
														"mData" : "year"
													},
													{
														"mData" : "semester"
													},
													{
														"mData" : "subject"
													},
										
											
													/* {
														"mData" : null,
														"sDefaultContent" : '<a href=""  class="emp-id-edit-details" role="button" onclick="getRow(this)"  title="view project details"><i class="fa fa-file-text" aria-hidden="true"></i></a>'
														
														                    
													} */
											

											],
										});
			});
										</script>