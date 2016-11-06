<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="<c:url value = "/resources/libs/css/ng-loading-bar.css"/>" rel="stylesheet">

<script src="<c:url value="/resources/libs/js/angular.js"/>"></script>
<script	src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-loading-bar.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<%-- <script src="<c:url value="/resources/libs/js/ng-map.js"/>"></script> --%>
<script src="<c:url value="/resources/custom/js/drug.js"/>"></script>



<style>
.DrugCatalogHeader {
    font-size: 2em;
    color: #428BCA;
    margin-left: 1px;
}
</style>

<style>
.DrugsTable{
    display:table;
    width:90%;
    border-collapse: collapse;

	box-shadow: 3px 3px 5px #888888;
	border:1px solid #CCC;    
}
.heading{
     font-weight: bold;
     font-style: italic;
     display: table-row;
     background-color: #eee; /* aad4ff  E0E0E0*/
     text-align: center;
     line-height: 25px;
     font-size: 14px;
     font-family: georgia;
     color: #0000ff; 
     border:1px solid #CCC;      
}
.hcol{
display:table-cell;
border: 0px solid #CCC;
}
.table-row{  
     display:table-row;
     text-align: left;
     vertical-align:middle;     
}
.table-row:nth-child(odd) {
    background: #F2F2F2; /* F5F9FA   e0e0e0 D7F3FA D8EBF0*/
}
.col{
display:table-cell;
border: 0px solid #CCC;
/* padding:7px; */
/*      padding: 0;
     margin-left: 20px; */
/*      margin:1000px; */
/*      padding:10px; */
}
.footer{
    display: table-footer-group;
    vertical-align: middle;
}
</style>



<div class="DrugCatalogHeader">Catalog of Medicine Drugs</div>

<div ng-app="DrugPageModule">
    <div ng-controller="AddNewDrugModal">


        <a class="btn btn-default" href ng-click="#"><i class="glyphicon glyphicon-minus-sign" style="color:#428BCA;"  title="Delete chosen drug(s)"></i></a>
        <a class="btn btn-default" href ng-click="openAddNewDrugModal('Add',null)"><i class="fa fa-plus-circle" style="color:#428BCA;" title="Add new drug"></i></a>
        					
    
        <script type="text/ng-template" id="AddNewDrugModalContent">
            <div class="modal-header">
		        <button type="button" class="close" ng-click="cancel()" data-dismiss="modal" aria-hidden="true">&times;</button>
				<div class="modal-title" style="font-size:100%;color:#428BCA;font-style:italic;">{{DrugModalTitle}}</div>
            </div>
            <div class="modal-body">
					<form:form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="name" class="col-sm-4 control-label">Drug name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="name" ng-model="drug.name" ng-readonly="{{editableInput}}" placeholder="Type drug name"><!--  -->
							</div>
						</div>
						<div class="form-group">
							<label for="drugCategory" class="col-sm-4 control-label">Category</label>
							<div class="col-sm-8">
                                <select class="form-control" ng-model="drug.drugCategory" id="drugCategory" ng-options="o as o for o in Kategory" ng-disabled="{{editableInput}}"></select>
							</div>
						</div>
						<div class="form-group">
							<label for="hazardRatio" class="col-sm-4 control-label">Hazard Ratio</label>
							<div class="col-sm-2">
								<input type="number" class="form-control" id="hazardRatio" ng-model="drug.hazardRatio" ng-readonly="{{editableInput}}">
							</div>
						</div>
						<div class="form-group">
							<label for="dosage" class="col-sm-4 control-label">Dosage</label>
							<div class="col-sm-2">
								<input type="number" class="form-control" id="dosage" ng-model="drug.dosage" ng-readonly="{{editableInput}}">
							</div>
						</div>
						<div class="form-group">
                            <label for="description" class="col-sm-4 control-label">Description</label>
                            <div class="col-sm-8">
                                 <textarea rows="4" cols="50" class="form-control" id="description"  ng-model="drug.description" ng-readonly="{{editableInput}}" value="uy"></textarea><!-- placeholder="type a description" -->
                            </div>
						</div>
					</form:form>

            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" data-dismiss="modal" ng-click="addNewDrug()">{{ActBtn}}</button>
                <button class="btn btn-default" data-dismiss="modal" ng-click="cancel()">Cancel</button>
            </div>
        </script>
        
        <br><br>           
					<div class="btn-group" style="margin-bottom: 0px;">
						<input id="searchField" type="text" class="form-control input-sm" style="width: 200px;" placeholder="Search"><!--  -->
					</div>	    
	    <div class="DrugsTable" ng-table="tableParams" style="clear: both; width: 600px;">
		    <div class="heading">
			    <div class="hcol" style="clear:both;width:30px;">#</div>
			    <div class="hcol" style="clear:both;width:30px;font-size:75%;"><i class="glyphicon glyphicon-trash"></i></div>
			    <div class="hcol" style="clear:both;width:30px;font-size:70%;text-align:center;"></div>
			    <div class="hcol">Drug name</div>
			    <div class="hcol" style="clear:both;width:140px;">Category</div>
		    </div>
		    <div class="table-row" ng-repeat="drug in drugList">
			    <div class="col" style="font-size:90%;text-align:left;color:#428BCA;"><a href ng-click="openAddNewDrugModal('View', drug)" title="view {{drug.name}}">{{(myCurrentPage-1)*myPageSize + ($index + 1)}}</a></div>
			    <div class="col" style="font-size:70%;color:#428BCA;text-align:center;"><input type="checkbox" ng-click="choose()" ng-model="isChecked" ng-change="chooseDrug(drug)" ng-true-value="'YES'" ng-false-value="'NO'"></div>
			    <div class="col" style="font-size:70%;color:#428BCA;text-align:center;"><a href ng-click="openAddNewDrugModal('Edit', drug)" title="edit {{drug.name}}"> <i class="fa fa-pencil-square-o"></i></a></div>
			    <div class="col" style="font-size:110%;color:#428BCA;font-style:italic;"><a href ng-click="openAddNewDrugModal('View', drug)" title="view {{drug.name}}">{{drug.name}}</a></div>
			    <div class="col" style="font-size:85%;text-align:center;"><a  title="read about {{drug.drugCategory | lowercase}}">{{drug.drugCategory | lowercase}}</a></div>
		    </div>								
	    </div> 
	    
	    items per page:<select id="s1" ng-model="selectedItem" ng-change="change()" ng-options="item as item.value for item in items"></select>  
        <pagination class="pagination-sm" ng-model="myCurrentPage" total-items="myTotalItems" items-per-page="myPageSize" max-size="myMaxSize" rotate="true" direction-links="true" previous-text="{{myPreviousText}}" next-text="{{myNextText}}" boundary-links="true" first-text="{{myFirstText}}" last-text="{{myLastText}}" ng-change="changed()"></pagination>	
        <div ng-show="drugList">{{myItemsPerPage}}/{{myTotalItems}}</div>
	    	    		                           
    </div>
</div>

<hr/>
 









































