<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <script src="<c:url value="/resources/js/pharmacist.js"/>"></script> --%>
<%-- <script src="<c:url value="/resources/js/pharmacistHelper.js"/>"></script> --%>
<script src="<c:url value="/resources/custom/js/pharmacist/particular-prescriptions.js"/>"></script>
<script src="<c:url value="/resources/custom/js/pharmacist/pharmacist-angular.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.js"/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/custom/css/pharmacist/pharmacist.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/libs/css/jquery-ui.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/libs/css/jquery-ui.theme.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/libs/css/jquery-ui.structure.css"/>"/>

<div ng-app="pharmacist">

	<!-- 	First row -->
	<div class="row">
		<div class="col-md-6">
			<div class="widget">col1-1</div>
		</div>
		<div class="col-md-6">
			<div class="widget">col1-2</div>
		</div>
	</div>
		
	<!-- 	Second row -->
	<div class="row">
		<div class="col-md-6">
			<div class="widget">
				<div class="input-fields">
					<div class="row">
						<div ng-controller="TypeaheadCtrl">
							<div class="col-md-12">
									<div class="col-sm-4">
										<div class="form-group">
											<label class="control-label" for="formGroupBarcode">Barcode</label>
											<input class="form-control" type="text" id="formGroupBarcode" placeholder="Scan ..."/>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group has-feedback">
											<label class="control-label" for="formGroupPatient">Patient</label>
											<input class="form-control" type="text" id="formGroupPatient" placeholder="Search by ..."
												ng-model="asyncSelectedPatient" typeahead="user for user in getUserByRole($viewValue, patientRole)"
												typeahead-loading="loadingUserByRole" typeahead-editable="false"
												typeahead-min-length=2 typeahead-wait-ms=500 typeahead-on-select="onSelect($model)"/>
											<span class="form-control-feedback" ng-show="asyncSelectedPatient" ng-click="clear()">
												<button type="button" class="close">
													<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
												</button>
											</span>
											<i ng-show="loadingUserByRole" class="glyphicon glyphicon-refresh"></i>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group has-feedback">
											<label class="control-label" for="formGroupDoctor">Doctor</label>
											<input class="form-control" type="text" id="formGroupDoctor" placeholder="Search by ..."
												ng-model="asyncSelectedDoctor" typeahead="user for user in getUserByRole($viewValue, doctorRole)"
												typeahead-loading="loadingUserByDoctor" typeahead-editable="false"
												typeahead-min-length=2 typeahead-wait-ms=500 typeahead-on-select="onSelect($model)"/>
											<span class="glyphicon glyphicon-remove form-control-feedback" ng-show="asyncSelectedDoctor" ng-click="clear()">
												<button type="button" class="close">
													<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
												</button>
											</span>
											<i ng-show="loadingUserByDoctor" class="glyphicon glyphicon-refresh"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				<div ng-controller="TabsPrescriptionStateCtrl">
					<tabset>
						<tab select="newPrescriptions()" active="isSelected(1)" ng-click="selectTab(1)">
							<tab-heading>
						        <i class="glyphicon glyphicon-ok-circle"><strong class="tab">New</strong></i>
					      	</tab-heading>
					    </tab>
					    <tab select="deliveredPrescriptions()" active="isSelected(2)" ng-click="selectTab(2)">
							<tab-heading>
						        <i class="glyphicon glyphicon-remove-circle"><strong class="tab">Delivered</strong></i>
					      	</tab-heading>
					    </tab>
					 </tabset>
					 
					<div ng-controller="PharmacistCtrl">
						<div ng-show="isSelected(1)">
							<div class="row table-header">
								<div class="col-md-1"><p class="text-center"><strong>Id</strong></p></div>
								<div class="col-md-3"><p class="text-center"><strong>Patient</strong></p></div>
								<div class="col-md-3"><p class="text-center"><strong>Doctor</strong></p></div>
								<div class="col-md-5">
									<div class="row">
										<div class="col-md-6"><p class="text-center"><strong>Prescribed</strong></p></div>
										<div class="col-md-6"><p class="text-center"><strong>Give out</strong></p></div>
									</div>	
								</div>		
							</div>
							<div class="row table-body-row" ng-repeat="prescription in prescriptions">
								<div class="col-md-1">{{prescription.id}}</div>
								<div class="col-md-3 selec" ng-click="filterPresc(prescription.patient.fullName,'ROLE_PATIENT')">{{prescription.patient.fullName}}</div>
								<div class="col-md-3 selec" ng-click="filterPresc(prescription.doctor.fullName,'ROLE_DOCTOR')"">{{prescription.doctor.fullName}}</div>
								<div class="col-md-5">
									<div class="row">
										<div class="col-md-6"><p class="text-center">{{prescription.createdDate}}</p></div>
										<div class="col-md-6">
											<div ng-controller="ModalForPrescription">
												<button type="button" class="btn btn-default"
													ng-click="open('sm', prescription.id, prescription.treatment.id, prescription.patient.fullName)">Give out
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="table-summary">
								<p class="text-left">Total elements: {{bigTotalItems}}</p>
								<p class="text-left">Page {{bigCurrentPage}} in {{totalPages}} page(s)</p>
							</div>
							<pagination class="pagination pagination-sm" ng-change="pageChanged()" boundary-links="true" total-items="bigTotalItems"
								max-size="maxSize" ng-model="bigCurrentPage" previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;"
								last-text="&raquo;">
							</pagination>
						</div>
						<div ng-show="isSelected(2)">	
							<div class="row table-header">
								<div class="col-md-1"><p class="text-center"><strong>Id</strong></p></div>
								<div class="col-md-3"><p class="text-center"><strong>Patient</strong></p></div>
								<div class="col-md-3"><p class="text-center"><strong>Doctor</strong></p></div>
								<div class="col-md-5">
									<div class="row">
										<div class="col-md-6"><p class="text-center"><strong>Prescribed</strong></p></div>
										<div class="col-md-6"><p class="text-center"><strong>Gived out</strong></p></div>
									</div>	
								</div>		
							</div>
							<div class="row table-body-row" ng-repeat="prescription in prescriptions">
								<div class="col-md-1">{{prescription.id}}</div>
								<div class="col-md-3">{{prescription.patient.fullName}}</div>
								<div class="col-md-3">{{prescription.doctor.fullName}}</div>
								<div class="col-md-5">
									<div class="row">
										<div class="col-md-6">{{prescription.createdDate}}</div>
										<div class="col-md-6">{{prescription.checkOutDate}}</div>
									</div>
								</div>
							</div>
							<div class="table-summary">
								<p class="text-left">Total elements: {{bigTotalItems}}</p>
								<p class="text-left">Page {{bigCurrentPage}} in {{totalPages}} page(s)</p>
							</div>
							<pagination class="pagination pagination-sm" ng-change="pageChanged()" boundary-links="true" total-items="bigTotalItems"
								max-size="maxSize" ng-model="bigCurrentPage" previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;"
								last-text="&raquo;">
							</pagination>
						</div>
					</div>	
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="widget">
				<filtered-data><p class="bg-warning">If you read this text than there are somewhere an error!!!!</p></filtered-data>
			</div>
		</div>
	</div>
</div>