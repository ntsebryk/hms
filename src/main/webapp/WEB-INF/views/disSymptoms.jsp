<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="<c:url value = "/resources/custom/css/ds.css"/>"
	rel="stylesheet">
<link href="<c:url value = "/resources/libs/css/bootstrap-table.css"/>"
	rel="stylesheet">
<script src="<c:url value="/resources/libs/js/bootstrap-table.js"/>"></script>
<script src="<c:url value="/resources/custom/js/ds.js"/>"></script>

<!-- Content Column -->
<div>
	<script type="text/javascript">
		<c:set value="${disease.id}" var="diseaseId"/>
		var diseaseId = '<c:out value="${disease.id}"/>'
	</script>
	<!-- DISEASE IMAGE -->

	<div id="dis-image">
		<img alt="Responsive image" class="img-rounded"
			src="<c:url value="/resources/custom/images/tubic.jpg"/>">
	</div>

	<!-- DISEASE PANEL -->

	<div id="dis-panel" class="panel panel-default">
		<div class="panel-heading">
			<h3>${disease.name}</h3>
		</div>
		<div class="panel-body">${disease.description}</div>
	</div>

	<div class="col-md-12" align="left">

		<!--BUTTONS-->

		<div class="btn-group">
			<button id="picminus" class="btn btn-default">
				<span class="glyphicon glyphicon-minus-sign"></span>
			</button>
			<button id="picplus" class="btn btn-default" data-toggle="modal">
				<span class="glyphicon glyphicon-plus-sign"></span>
			</button>
		</div>

		<!-- TABLE DISEASE-SYMPTOMS  -->

		<table id="disease-symptoms" class="table table-condensed"
			data-height="400" data-pagination="true">
			<thead>
				<tr>
					<th data-field="state" data-checkbox="true"></th>
					<th data-field="num" data-align="center">Num</th>
					<th data-field="sympName" data-sortable="true">Symptom name</th>
					<th data-field="sympDescr">Description</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
</div>

<!-- SYMPTOMS MODAL -->

<div class="modal fade" id="myModalSymptoms" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h3 class="modal-title">SYMPTOMS</h3>
			</div>
			<div class="modal-body">
				<div id="sympt-table-div">
					<table id="symptoms" class="table table-condensed"
						data-height="300" data-show-columns="true" data-search="true"
						data-pagination="true">
						<thead>
							<tr>
								<th data-field="state" data-checkbox="true"></th>
								<th data-field="num" data-align="center">Num</th>
								<th data-field="sympName" data-sortable="true">Symptom name</th>
								<th data-field="sympDescr" data-sortable="true">Description</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary"
					onclick="addSelected()">ADD</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->


