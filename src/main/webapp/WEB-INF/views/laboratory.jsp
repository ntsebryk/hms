
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="<c:url value = "/resources/libs/css/ng-loading-bar.css"/>"
	https://www.google.com.ua/webhp?tab=ww&authuser=0&ei=Jp9TVKLNKs2s7AaSoIHgBw&ved=0CAcQ1S4
	rel="stylesheet">
<link href="<c:url value = "/resources/custom/css/laboratory.css"/>"
	rel="stylesheet">
<script
	src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-loading-bar.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-map.js"/>"></script>
<script src="<c:url value="/resources/custom/js/lab.js"/>"></script>

<div ng-app="laboratory">
	<div class="container col-lg-12">
		<div class="row panelN col-lg-8">


			<div class="row step">
				<div ng-controller="NewAppCtrl" class="pan col-lg-2"
					ng-click="openNewAppModal('lg')">
					<div class="notif">{{countNA}}</div>
					<span class="fa  fa-bell-o"></span>
					<p>
						<i>Doctor Appointments</i>
					</p>
				</div>
				<div ng-controller="ReservedTestCtrl" class="pan col-lg-2"
					ng-click="openReservedTestModal('lg')">
					<div class="notif">{{countRT}}</div>
					<span class="fa fa-tag "></span>
					<p>
						<i>Pending Tests</i>
					</p>
				</div>
				<div ng-controller="DoneTestsCtrl" class="pan col-lg-2"
					ng-click="openDoneTestsModal('lg')">
					<div class="notif">{{countDT}}</div>
					<span class="fa fa-check-square-o "></span>
					<p>
						<i>Done Tests</i>
					</p>
				</div>
				<div ng-controller="FinisedResultsCtrl" class="pan col-lg-2"
					ng-click="openFinishedResModal('lg')">
					<div class="notif">{{countFR}}</div>
					<span class="fa fa-thumbs-o-up "></span>
					<p>
						<i>See Results</i>
					</p>
				</div>
			</div>
		</div>

		<div div class="row">

			<!-- -------------------------NEW APPOINTMENTS--------------------------------------- -->

			<script type="text/ng-template" id="NewApp.html">
        			<div class="modal-header">
            			<h3 class="modal-title modal-head"><i>New Appointments :</i></h3>
        			</div>
        			<div class="modal-body">
							<table id="new-app" ng-table="tableNewAppParams"
							class="table table-striped" template-pagination="labCustom/pager">
								<tr ng-repeat="newTest in $data">
									<td class="table-data" data-title="'Test name'"><i><a href="" class="runjunjovyi-tooltip" 
									tooltip-placement="right" data-tooltip-html-unsafe="{{newTest.test.fullDescription}}" tooltip-trigger="focus" >
										{{newTest.test.name}}</a></i></td>
									<td class="table-data" data-title="'Date'"><i>{{newTest.appointmentDate | date}}</i></td>
									<td class="table-data" data-title="'Test Group'"><i>{{newTest.test.testCategory}}</i></td>
									<td class="table-data" data-title="'Laboratory'">
									    <select tooltip-placement="right" tooltip="Please select laboratory for this test" ng-model="newTest.selectedLab"
											ng-options="lab.name for lab in newTest.avalLabs" ng-change="changeFlag()">
					                	</select> 
									</td> 
								</tr>
							</table>
        			</div>
        			<div class="modal-footer">	
						<div class="total-rows-div"><p><i>Total <font color="#428BCA">{{count}}</font> rows</i></p></div>
						<button class="btn btn-primary" ng-show="isSelected()" ng-click="sendRequest()">Send Request</button>
            			<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        			</div>
    			</script>


			<!-- -------------------------PENDING TESTS--------------------------------------- -->

			<script type="text/ng-template" id="ResTest.html">
        			<div class="modal-header">
            			<h3 class="modal-title modal-head"><i>Reserved Tests :</i></h3>
        			</div>
        			<div class="modal-body">
							<table ng-table="tableResTestsParams"
							class="table table-striped" template-pagination="labCustom/pager">
								<tr ng-repeat="resTest in $data">
									<td class="table-data" data-title="'Test name'"><i><a href="" class="runjunjovyi-tooltip" tooltip-placement="right"
									 data-tooltip-html-unsafe="{{resTest.test.fullDescription}}" tooltip-trigger="focus" >
										{{resTest.test.name}}</a></i></td>
									<td class="table-data" data-title="'Laboratory'"><i>{{resTest.laboratory.name}}</i></td>
									<td class="table-data" data-title="'Adress'"><i>{{resTest.laboratory.description}}</i></td>
								</tr>
							</table>
        			</div>
        			<div class="modal-footer">
						<div class="total-rows-div"><p><i>Total <font color="#428BCA">{{count}}</font> rows</i></p></div>
            			<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        			</div>
    			</script>

			<!-- -------------------------DONE TESTS--------------------------------------- -->

			<script type="text/ng-template" id="DoneTests.html">
        			<div class="modal-header">
            			<h3 class="modal-title modal-head"><i>DoneTests :</i></h3>
        			</div>
        			<div class="modal-body">
							<table ng-table="tableDoneTestsParams"
							class="table table-striped" template-pagination="labCustom/pager">
								<tr ng-repeat="doneTest in $data">
									<td class="table-data" data-title="'Test name'"><i><a href="" class="runjunjovyi-tooltip" tooltip-placement="right"
									 data-tooltip-html-unsafe="{{doneTest.test.fullDescription}}" tooltip-trigger="focus" >
										{{doneTest.test.name}}</a></i></td>
									<td class="table-data" data-title="'Laboratory'"><i>{{doneTest.laboratory.name}}</i></td>
									<td class="table-data" data-title="'Date assign.'"><i>{{doneTest.appointmentDate | date}}</i></td>
									<td class="table-data" data-title="'Date of exec.'"><i>{{doneTest.testDate | date}}</i></td>
								</tr>
							</table>
        			</div>
        			<div class="modal-footer">
						<div class="total-rows-div"><p><i>Total <font color="#428BCA">{{countDT}}</font> rows</i></p></div>
            			<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        			</div>
    			</script>

			<!-- -------------------------FINISHED RESULTS--------------------------------------- -->

			<script type="text/ng-template" id="FinisedResults.html">
        			<div class="modal-header">
            			<h3 class="modal-title modal-head"><i>Tests results :</i></h3>
        			</div>
        			<div class="modal-body">
							<table id="lab-table" ng-table="tableFinishedResParams"
							class="table table-striped" template-pagination="labCustom/pager">
								<tr ng-repeat="resTest in $data">
									<td class="table-data" data-title="'Test date'"><i>{{resTest.testDate | date}}</i></td>
									<td class="table-data" data-title="'Test name'"><i><a href="" class="runjunjovyi-tooltip" tooltip-placement="right"
									 data-tooltip-html-unsafe="{{resTest.test.fullDescription}}" tooltip-trigger="focus" >
										{{resTest.test.name}}</a></i></td>
									<td class="table-data" data-title="'Test result'"><i>{{resTest.result}}</i></td>
									<td class="table-data" data-title="'Laboratory'"><i>{{resTest.laboratory.name}}</i></td>
									<td class="table-data" data-title="'Manager'"><i>{{resTest.laboratory.labManager.fullName}}</i></td>
								</tr>
							</table>
        			</div>
        			<div class="modal-footer">
						<div class="total-rows-div"><p><i>Total <font color="#428BCA">{{count}}</font> rows</i></p></div>
            			<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        			</div>
    			</script>

		</div>
		<!-- -------------------TEST GROUPS----------------------------------------------- -->
		<div class="row">
			<div class="col-lg-8">
				<div ng-controller="OurTests" class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-header-text">OUR TESTS</h4>

					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div>
							<table id="tests-table" ng-table="tableParams" show-filter="true"
								template-pagination="testsCustom/pager"
								class="table table-striped">
								<tr ng-repeat="test in $data">
									<td class="table-data name col-sm-3"
										filter="{ 'name': 'text' }"><i> <a href="#"
											class="runjunjovyi-tooltip" tooltip-placement="right"
											data-tooltip-html-unsafe="{{test.fullDescription}}"
											tooltip-trigger="focus"> {{test.name}} </a></i></td>
									<td class="table-data  descr col-sm-5"
										filter="{ 'description': 'text' }"><i>{{test.description}}</i></td>
									<td class="table-data descr col-sm-3"
										filter="{ 'testCategory': 'text' }"><i>{{test.testCategory}}</i></td>
									<td class="table-data table-button col-sm-1"><a href
										ng-click="open(test)" ng-show="true" class="ng-hide"><span
											class="glyphicon glyphicon-plus-sign picplus"></span></a></td>
								</tr>
							</table>
							<div class="total-rows-div">
								<p>
									<i>Total <font color="#428BCA">{{total}}</font> rows
									</i>
								</p>
							</div>
						</div>
						<script type="text/ng-template" id="myTests.html">
        						<div class="modal-header">
            						<h3 class="modal-title modal-head"><i>Selected test : <ins>{{currentTest.name}} </ins></i></h3>
        						</div>
        						<div class="modal-body">
									<h4 class="modal-head" ><i>Avalible in laboratories :</i></h4>
									<table id="lab-table" ng-table="labTableParams"
										class="table table-striped" show-filter="true"
										template-pagination="labCustom/pager"">
										<tr ng-repeat="lab in $data">
											<td width="30" style="text-align: left">
												<input type="radio" name="selectedlab" ng-model="selectedTest.labId"  id="{{lab.id}}" ng-value="lab.id" required/>
											</td>
											<td class="table-data" data-title="'Laboratory'" filter="{ 'name': 'text' }"><i>{{lab.name}}</i></td>
											<td class="table-data"data-title="'Adress'" filter="{ 'description': 'text' }"><i>{{lab.description}}</i></td>
										</tr>
									</table>
        						</div>
        						<div class="modal-footer">
									<div class="total-rows-div"><p><i>Total <font color="#428BCA">{{labLength}}</font> rows</i></p></div>
            						<button ng-show="isChecked()" class="btn btn-primary modal-submit" ng-click="ok()">Enroll</button>
            						<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        						</div>
    						</script>
					</div>
					<!-- /.panel-body -->
				</div>
			</div>
			<!-- /.col-lg-8 -->
			<!------------------------ OUR LABS------------------------------>
			<div class="col-lg-3">
			<div ng-controller="OurLabsCtrl" class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-header-text">OUR LABS</h4>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div>
						<table id="all-labs-table" ng-table="labTableParams"
							show-filter="true" template-pagination="testsCustom/pager"
							class="table table-striped">
							<tr ng-repeat="lab in $data">
								<td class="table-data name " filter="{ 'name': 'text' }"><i>{{lab.name}}</a></i></td>
							</tr>
						</table>
						<div class="total-rows-div">
							<p>
								<i>Total <font color="#428BCA">{{total}}</font> rows
								</i>
							</p>
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
			</div>
		</div>

	</div>
	<script type="text/ng-template" id="testsCustom/pager">
        <ul class="pager ng-cloak">
          	<li ng-repeat="page in pages"
               ng-class="{'disabled': !page.active, 'previous': page.type == 'prev', 'next': page.type == 'next'}"
               ng-show="page.type == 'prev' || page.type == 'next'" ng-switch="page.type">
            	<a ng-switch-when="prev" ng-click="params.page(page.number)" href="">&laquo; Previous</a>
            	<a ng-switch-when="next" ng-click="params.page(page.number)" href="">Next &raquo;</a>
          	</li>
            <li> 
            	<div class="btn-group">
                	<button type="button" ng-class="{'active':params.count() == 5}" ng-click="params.count(5)" class="btn btn-default">5</button>
                	<button type="button" ng-class="{'active':params.count() == 10}" ng-click="params.count(10)" class="btn btn-default">10</button>
                	<button type="button" ng-class="{'active':params.count() == 50}" ng-click="params.count(50)" class="btn btn-default">50</button>
            	</div>
             </li>
        	</ul>
    	</script>

	<script type="text/ng-template" id="labCustom/pager">
        	<ul class="pager ng-cloak">
          		<li ng-repeat="page in pages"
                	ng-class="{'disabled': !page.active, 'previous': page.type == 'prev', 'next': page.type == 'next'}"
                	ng-show="page.type == 'prev' || page.type == 'next'" ng-switch="page.type">
            		 <a ng-switch-when="prev" ng-click="params.page(page.number)" href="">&laquo; Previous</a>
            		 <a ng-switch-when="next" ng-click="params.page(page.number)" href="">Next &raquo;</a>
          		</li>
            	<li> 
            		<div class="btn-group">
                		<button type="button" ng-class="{'active':params.count() == 5}" ng-click="params.count(5)" class="btn btn-default">5</button>
                	    <button type="button" ng-class="{'active':params.count() == 10}" ng-click="params.count(10)" class="btn btn-default">10</button>
            		</div>
            	</li>
        	</ul>
    	</script>
</div>