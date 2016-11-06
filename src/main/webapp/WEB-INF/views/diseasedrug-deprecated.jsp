<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<script type="text/javascript"
	src="<c:url value="/resources/custom/js/disease-drug.js"/>"></script>


<%-- <script type="text/javascript"src="<c:url value="/resources/libs/js/bootstrap-table.js"/>"></script> --%>



<script type="text/javascript">
	<c:set value="${disease.id}" var="diseaseId"/>
	var diseaseId = '<c:out value="${disease.id}"/>'
</script>

<style>
.caret.caret-reversed {
	border-top-width: 0;
	border-bottom: 4px solid #000000;
}

.input-n-active {
	color: #c9c5ba
}

.c4 {
	float: left;
	width: 35%;
	height: 50%;
	background-color: #dcdcdc;
	padding-top: 4px;
	padding-right: 4px;
	padding-bottom: 4px;
	padding-left: 4px;
	width: 100%;
}

#page-wrapper {
	padding-left: 15px;
	padding-right: 15px;
}

.panel {
	border-radius: 6px;
	height: 100%
}

.panel-heading {
	border-radius: 6px 6px 0px 0px;
}

.col-lg-12 {
	padding-left: 0px;
	padding-right: 0px;
	height: 100vh;
}


.animate-show {
    line-height:20px;
    opacity:1;
    padding:10px;
    border:1px solid black;
    background:white;
    }

.animate-show.ng-hide-add.ng-hide-add-active,
.animate-show.ng-hide-remove.ng-hide-remove-active {
    -webkit-transition:all linear 0.5s;
    transition:all linear 0.5s;
    }

.animate-show.ng-hide {
    line-height:0;
    opacity:0;
    padding:0 10px;
    }
</style>

<!-- PANEL -->
<div class="c4" style="width: 100%; height: 1000px;">
	<div class="panel panel-default">


		<!--PANEL HEADER -->
		<div class="panel-heading"
			style="padding: 0px; height: 6%">

			<%--<h3 style="margin-top:0;position: relative; top: 25%">Editing drugs for diseases</h3>--%>
			<h2
				style="color: #428BCA; margin-left: 5%; margin-top: 0; position: relative; top: 25%">
				<span class="fa fa-times" id="redirect-to-disease"
					style="color: #635f5a; float: right; margin-right: 20px"></span> <i
					class="fa fa-medkit fa-fw"></i> Editing Drugs for Disease
			</h2>

		</div>

		<!-- PANEL BODY -->
		<div class="panel-body" style="margin-right: 7%; margin-left: 7%;">

			<!-- DISEASE PANEL -->
			<div class="panel panel-default" id="disease-panel"
				style="height: 200px; float: left;">
				<div class="panel-heading">
					<b>${disease.name}</b>
				</div>
				<div class="panel-body">
					<div>${disease.description}</div>
				</div>
			</div>

			<!-- DISEASE IMAGE -->
			<div>
				<div style='float: right'>
					<img alt="Responsive image" class="img-rounded"
						style="height: 200px"
						src="<c:url value="/resources/custom/images/no-image.png"/>">
				</div>
			</div>

			<!-- BUTTON GROUP -->

			<div class="btn-group" style="float: left; clear: left">
				<button class="btn btn-default btn-sm" id="remove-data"
					data-method="remove" style="background-color: #F5F5F5">
					<span class="glyphicon glyphicon-minus-sign"
						style="color: #428BCA;"></span>
				</button>
				<a href="#myModalDrugs" role="button" class="btn btn-default btn-sm"
					style="background-color: #F5F5F5" data-toggle="modal"><span
					class="glyphicon glyphicon-plus-sign" style="color: #428BCA;"></span></a>
			</div>

			<div class="col-lg-6"
				style="float: right; width: 30; padding-right: 0px; width: 26%">
				<div class="input-group">
					<input type="text" class="form-control input-sm" id="search-area">
					<span class="input-group-btn">
						<button class="btn btn-default btn-sm" type="button"
							id="search-button">Search</button>
					</span>
				</div>
				<!-- /input-group -->
			</div>
			<!-- /.col-lg-6 -->



			<!-- DISEASEDRUG TABLE -->
			<div style="height: 15px; clear: both"></div>
			<table class="table table-striped">
				<thead>
					<tr style="background-color: #F5F5F5; height: 35px">
						<th></th>
						<%--<th data-field="state" data-checkbox="true"></th>--%>
						<th data-field="id" data-align="right">id</th>
						<th class="toggle-button" data-field="name" data-align="center"
							data-sortable="true">Drug name <span></span></th>
						<th data-field="description" data-align="left">Description</th>
						<th data-field="koef" data-align="center" data-sortable="true">Coefficient</th>
					</tr>
				</thead>
				<tbody id="tbody">

				</tbody>
			</table>
			<div id='dd-quantity'></div>

		</div>
	</div>
</div>


<!-- DRUGS MODAL -->

<div class="modal fade" id="myModalDrugs" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" hidden="true">
	<div class="modal-dialog"
		style="width: 70%; position: fixed; top: 10%; left: 20%; right: 0px; bottom: 0px;">

		<!-- MODAL CONTENT -->
		<div class="modal-content" style="overflow: auto">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" id="close"
					aria-hidden="true">&times;</button>
				<h3 class="modal-title" style="color: #428BCA;">Drugs</h3>
			</div>

			<div class="modal-body">

				<div class="col-lg-6"
					style="float: left; margin-top: 12px; padding-left: 0px; width: 30%">
					<div class="input-group" style="float: left;">
						<input type="text" class="form-control input-n-active" id="coef"
							value="30"> <span class="input-group-btn">
							<button class="btn btn-default" type="button" id="add-drug">ADD</button>
						</span>

					</div>
					<!-- /input-group -->


				</div>
				<!-- /.col-lg-6 -->
				<h5 style="float: left; margin-top: 23px" class="text-danger"
					id="add-drug-error"></h5>

				<table class="table table-condensed" data-toggle="table"
					data-height="350" data-show-columns="true" data-search="true"
					data-pagination="true" id="table-methods-table">
					<thead>
						<tr style="background-color: #F5F5F5">
							<th data-align="center"></th>
							<th data-field="id" data-align="right">id</th>
							<th data-field="name" data-align="center" data-sortable="true">name</th>
							<th data-field="description" data-align="left">Description</th>
							<th data-field="koef" data-align="center" data-sortable="true">Coefficient</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${drugList}" var="drug">
							<tr id="5">
								<td><input type="radio" name="radiobutton"
									value="${drug.id}"></td>
								<td>${drug.id}</td>
								<td>${drug.name}</td>
								<td>${drug.description}</td>
								<td>${drug.hazardRatio}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
		<!-- /.modal-content-->
	</div>
	<!-- /.modal-dialog-->
</div>
<!-- /.modal-->







