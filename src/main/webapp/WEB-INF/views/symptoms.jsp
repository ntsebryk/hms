<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="<c:url value="/resources/custom/js/symptoms/symptoms-ang.js"/>"></script>
<script src="<c:url value="/resources/libs/js/angular-file-upload.js"/>"></script>
<script src="<c:url value="/resources/libs/js/es5-sham.js"/>"></script>
<script src="<c:url value="/resources/libs/js/es5-shim.js"/>"></script>
<style>
div.toprow-btns {
    padding-left: 15px;
    padding-right: 15px;
}
div.bottomrow-btns{
	margin-top: 20px;
	margin-bottom: 20px;
}
div.bottomtext{
	margin-top: 26px;
	margin-bottom: 26px;
}
a.remove-selected{
    text-decoration: none;
}
a.cancel-x{
    margin-left: 10px;
    margin-right: 5px;
}

.panel-body{
    max-height: 300px;
    overflow-y: auto;
}
</style>
<div ng-app="symptomsPage" ng-controller="SymptomCtrl">
	<h1 style="color: #428BCA; margin-left: 20px;">
		<i class="fa fa-stethoscope fa-fw"></i> Symptoms page
	</h1>
	<div  class="col-md-12" align="left" style='float: right; margin-top: 20px;'>
		<div class="row toprow-btns">
			<div class="btn-group col-lg-9" style="margin-top: 10px; padding-left: 0px;">
				<a href="#deleteConfirmation" role="button" data-toggle="modal" 
				ng-class="{disabled: deleteListIds.length == 0}" class="btn btn-default" style="background-color: #F5F5F5">
					<span class="glyphicon glyphicon-minus-sign" style="color: #428BCA;"></span>
				</a>
				<a href="#myModalSymptoms" role="button" class="btn btn-default"
					style="background-color: #F5F5F5" data-toggle="modal"><span
					class="glyphicon glyphicon-plus-sign" style="color: #428BCA;"></span></a>
				<button ng-click="changeOrderAsc()" class="btn btn-default" style="background-color: #F5F5F5">
					<span class="fa fa-sort-alpha-asc" style="color: #428BCA;"></span>
				</button>
				<button ng-click="changeOrderDesc()" class="btn btn-default" style="background-color: #F5F5F5">
					<span class="fa fa-sort-alpha-desc" style="color: #428BCA;"></span>
				</button>
				<!-- <button ng-click="check(deleteListSymptoms)" class="btn btn-default" style="background-color: #F5F5F5">
                    <span class="fa fa-check" style="color: #428BCA;"></span>
                </button> -->
			</div>
			<div class="form-group col-lg-3">
				<form class="navbar-form navbar-left" role="search">
					<div class="btn-group">
						<input ng-model="asyncSelected" type="text" class="form-control" placeholder="Search" 
						typeahead="symptom.name for symptom in findSymptomsByMatch($viewValue)" style="width: 200px;"
						typeahead-wait-ms="500" typeahead-on-select="selectSearch($item, $model, $label)">
					</div>
				</form>
			</div>
		</div>
		<!-- <div ng-app="app">
    <div ng-controller="AppController">
        <input type="file" nv-file-select uploader="uploader" multiple /><br/>
        <ul>
            <li ng-repeat="item in uploader.queue">
                Name: <span> {{item.file.name}}</span><br/>
                
            </li>
        </ul>
        <button ng-click="uploader.uploadAll()">upload</button>
    </div>
</div> -->
		<div>
			<table class="table table-bordered table-hover">
			<thead>
				<tr style="background-color: #F5F5F5">
					<th colspan="2"></th>
					<th> Symptoms </th>
					<th> Complaining details </th>
					<th> Body part </th>
				</tr>
					</thead>
				<tr ng-repeat="symptom in pageContent">
					<td><input id="{{symptom.id}}" ng-model="checked" ng-click="addForDelete(symptom, checked)" type="checkbox"></td>
					<td ng-model="symptom"><a ng-click="fillForm(symptom)" href="#edit" data-toggle="modal"> <i class="fa fa-pencil-square-o"></i></a></td>
					<td>{{symptom.name}}</td>
					<td><i>{{symptom.description}}</i></td>
					<td><i>{{symptom.bodyPart}}</i></td>
				</tr>
			</table>
			<div class="col-lg-3">
				<div class="btn-group bottomrow-btns">
					<button ng-click="rowsPicker(10)" ng-class="{active: itemsPerPage == 10}" class="btn btn-default"> 10 </button>
					<button ng-click="rowsPicker(25)" ng-class="{active: itemsPerPage == 25}" class="btn btn-default"> 25 </button>
					<button ng-click="rowsPicker(50)" ng-class="{active: itemsPerPage == 50}" class="btn btn-default"> 50 </button>
					<button ng-click="rowsPicker(100)" ng-class="{active: itemsPerPage == 100}" class="btn btn-default"> 100 </button>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="bottomtext">
					<i><strong>{{itemsPerPage*currentPage - itemsPerPage + 1}} - {{itemsPerPage*currentPage - itemsPerPage + numberOfElements}}</strong> of <strong>{{totalItems}}</strong> symptoms are shown<i>
				</div>
			</div>
			<div class="col-lg-5">
				<pagination boundary-links="true" total-items="totalItems" max-size="5" ng-model="currentPage"
				ng-change="pageChanged()" items-per-page="itemsPerPage" class="pagination pull-right" previous-text="&lsaquo;"
				next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"></pagination>
			</div>
		</div>
	</div>
	<div id="myModalSymptoms" class="modal fade" tabindex="-1" role="dialog" hidden="true">
		<div class="modal-dialog"
			style="width: 40%; position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px;">
			<div class="modal-content" style="overflov: auto">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h3 class="modal-title" style="color: #428BCA;">Add symptom</h3>
				</div>
				<form novalidate name="addSymptom">
					<div class="modal-body">
							<div class="form-group">
								<label> Symptom
								</label> <input ng-model="symptom.name" class="form-control" placeholder="Enter symptom" required />
							</div>
							<div class="form-group">
								<label> Complaining details
								</label>
								<textarea ng-model="symptom.description" class="form-control" rows="3"></textarea>
							</div>
							<div class="form-group">
							<label> Select bodypart</label>
								<select class="form-control" ng-model="symptom.bodyPart"
								ng-options="bodyPart for bodyPart in bodyParts" required>
								</select>
							</div>
					</div>
					</form>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button ng-click="add(symptom)" ng-disabled="addSymptom.$invalid" class="btn btn-primary" data-dismiss="modal">Add</button>
					</div>
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<div class="modal fade" id="edit" role="dialog" hidden="true">
        <div class="modal-dialog"
            style="width: 40%; position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px;">
            <div class="modal-content" style="overflov: auto">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                    <h3 class="modal-title" style="color: #428BCA;">
                        Edit symptom
                    </h3>
                </div>
                <form novalidate name="editSymptom">
                <div class="modal-body">
                    <div>
                        <div class="form-group">
                            <label> Symptom
                            </label> <input ng-model="nameForEdit" value="{{nameForEdit}}" class="form-control" required />
                        </div>
                        <div class="form-group">
                            <label> Complaining details
                            </label>
                            <textarea ng-model="descriptionForEdit" class="form-control" rows="3">{{descriptionForEdit}}</textarea>
                        </div>
                        <div class="form-group">
                            <label> Select bodypart</label>
                            <select class="form-control" ng-model="bodyPartForEdit"
                            ng-options="bodyPart for bodyPart in bodyParts" required>
                            </select>
                        </div>
                    </div>
                </div>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close
                    </button>
                    <button class="btn btn-primary" ng-click="update()" ng-disabled="editSymptom.$invalid" data-dismiss="modal">
                        Save
                    </button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <div id="deleteConfirmation" class="modal fade" tabindex="-1"
        role="dialog" hidden="true">
        <div class="modal-dialog"
            style="width: 40%; position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                    <h3 class="modal-title" style="color: #428BCA;"> Delete confirmation </h3>
                </div>
                    <div class="modal-body">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="panel-title">You selected:</h3></div>
                            <div class="panel-body">
                                <span ng-repeat="symptom in deleteListSymptoms track by symptom.id">
                                    <a ng-click="removeFromDeleteList(symptom)" class="remove-selected cancel-x" href="#"><span class="fa fa-times"></span></a> {{symptom.name}};<br>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button ng-click="deleteCheked()" class="btn btn-primary" data-dismiss="modal" ng-disabled="deleteListSymptoms.length === 0">Delete</button>
                    </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</div>