<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="<c:url value="/resources/custom/js/docRecord/docTreatment-ang.js"/>"></script>

<script src="<c:url value="/resources/custom/js/docRecord/angularjs-nvd3-directives.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-loading-bar.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>

<script src="<c:url value="/resources/libs/js/ng-map.js"/>"></script>
<script src="<c:url value="/resources/custom/js/docRecord/resource.js"/>"></script>

<script src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>

<link rel="stylesheet" href="<c:url value="/resources/custom/css/docRecord/division.css"/>">



<div ng-app="docTreatmentPage">
    <div class="row">
        <div class="col-lg-7 col-md-5 col-sm-5 col-xs-5">
            <div class="well" ng-controller="DoctorTreatment">
                  <div>
                    <div class="row">
                      
                      <div class="col-sm-12">
                        <div class="row">
                          <div class="col-sm-3 avatarContainer">
                            <div class="profile-pic">
                              <img src="<c:url value="/resources/custom/images/patient3.jpg"/>"/>
                            </div>
                          </div>
                          <div class="col-sm-9">
                            <h3>
                              {{record.card.patient.fullName}}
                              <br>
                              <small>Gender:   {{record.card.patient.gender}}</small>  
                            </h3>
                            <ul class="list-unstyled">
                              <li>
                                <p class="text-muted"><i class="fa fa-map-marker"></i> Birthday: {{record.card.patient.birthday | date:'mediumDate'}}</p>
                              </li>
                              <li>
                                <p  class="text-muted"><i class="fa fa-phone"></i> Email: {{record.card.patient.email}}</p>
                              </li>
                             
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
        <div class="col-lg-5 col-md-7 col-sm-7 col-xs-7">
            <div class="panel panel-default" ng-controller="DoctorTreatment as docTrContr" >
                <div class="panel-heading">
                	
                	<p>
                    	<font size="5">Disease:</font> 
                    	<i ng-show="record.disease"><font size="6" color="#0000FF">{{record.disease.name}}</font></i>
                    	<i ng-hide="record.disease"><font size="6" color="#FFA500">No Diagnosis</font></i>
                    </p>
                    
                    <p ng-show="record.disease">
                    	Description: <i class="text-muted">{{record.disease.description}}</i>
                    </p>
                    
                    <div class="row step" ng-hide="record.disease">
			            <div ng-controller="AddDiagnosis">
				            <button ng-click="openAddDiagnosisModal('lg')" class="btn btn-primary btn-lg btn-block" style="background-color:#FFA500; color:black">
								Diagnosis
							</button>
						</div>
			        </div>
                    
                    <br>
                    <table id="table-methods-table"
						class="table table-hover table-bordered">
						<thead>
							<tr style="background-color: #F5F5F5">
								
								<th data-field="Symptom"  data-align="left">Symptoms</th>
										
							</tr>
						</thead>
						<tbody id="tbody">
				    
							<tr ng-repeat="symp in symptoms" >
									
								<td><i>{{symp.symptom.name}}</i></td>
								
							</tr>
						</tbody>
						
					</table>
                
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        
        <div class="col-lg-12 col-md-6 col-sm-6 col-xs-6">
            <div class="panel panel-default" ng-controller="DoctorTreatment as docTrContr">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        
                        <div class="row step">
							<div>
								Treatments:<button class="btn btn-primary" ng-click="openNewTreatment()">
									New treatment
								</button>
							</div>
						</div>
                    </h3>
                </div>
                
                <div class="panel-body">
                	<div ng-show="treatment.length">
	                	<table id="table-methods-table"
							class="table table-hover table-bordered" >
							<thead>
								<tr style="background-color: #F5F5F5">
									
									<th><i class="fa fa-calendar fa-fw text-info"></i> Started Date</th>
				               		<th><i class="fa fa-calendar fa-fw text-info"></i> Ended Date</th>
									<th><i class="fa fa-calendar fa-fw text-info"></i> Drugs</th>
									<th><i class="fa fa-calendar fa-fw text-info"></i> Tests</th>		
								</tr>
							</thead>
							<tbody id="tbody">
					    
								<tr ng-repeat="treat in treatment" >
										
									<td style="text-align: center; vertical-align:middle"><i>{{treat.startedDate}}</i></td>
									<td style="text-align: center; vertical-align:middle">
										<i>{{treat.endedDate}}</i>
										
										<div class="row step" ng-hide="treat.endedDate">
								            <div>
									            <button class="btn btn-primary" ng-click="closeTreatment(treat.id)" style="color:black">
													Close treatment
												</button>
											</div>
								        </div>
									</td>
									<td>
										<table class="table table table-bordered table-hover  table-condensed" >
											<tr ng-repeat="treatDr in treatmentDrug[treat.id]" >
												<td><i>{{treatDr.drug.name}}</i></td>
											</tr>
										</table>
										<div align="right"><a href ng-click="add('Prescribe')"><i class="fa fa-plus-circle" style="color:#428BCA;" title="Prescribe drugs"></i></a></div>
									</td>
									
									<td>
										<table class="table table table-bordered table-hover  table-condensed" >
											<tr ng-repeat="treatTest in treatmentTest[treat.id]" >
												<td><i>{{treatTest.test.name}}</i></td>
											</tr>
										</table>
										<div align="right"><a href ng-click="add('Appoint')"><i class="fa fa-plus-circle" style="color:#428BCA;" title="Appoit tests"></i></a></div>
									</td>
								</tr>
							</tbody>
							
						</table>
					</div>
					
                 </div>
                <div style="text-align: right">
					<type="button" ng-click="closeRecord()" class="btn btn-primary btn-lg" style="background-color:#FFA500; color:black">
						Close Record
					</button>
				</div>
            </div>
        </div>
    </div>


		<!-- -------------------------ADD DIAGNOSIS----------------------------------------->
		
		
    <div div class="row" ng-controller="AddDiagnosis as diagnosis">

			

			<script type="text/ng-template" id="AddDiagn.html">
        			<div class="modal-header">
            			<h3 class="modal-title modal-head"><i>Diagnosis:</i></h3>
        			</div>

					
 
        			<div class="modal-body">

						
						<button ng-click="tableParams.filter({})" class="btn btn-default pull-right">Clear filter</button>
							
						<table ng-table="tableParams" show-filter="true" class="table ng-table-rowselected" >
        					<tr ng-repeat="disease in $data">

								<td data-title="'Disease'" sortable="'name'" filter="{ 'name': 'text' }">
									{{disease.name}}
								</td>
								<td data-title="'Description'">{{disease.description}}</td>
            					<td data-title="'Set diagnosis'">
									<button 
										ng-click="setDiagnos(disease)" 
										class="btn btn-primary btn-block" 
										style="background-color:#FFA500; 
										color:black" >
											Set
									</button>
								</td>
        					</tr>
        				</table>
					</div>
        			<div class="modal-footer">
						<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        			</div>
    			</script>
	</div>
	
	
	

		<!-- -------------------------ADD TREATMENT--------------------------------------- -->
		
	<!-- <div div class="row" ng-controller="addTreatment as treatment">

			<script type="text/ng-template" id="AddTreat.html">
        			<div class="modal-header">
            			<h3 class="modal-title modal-head"><i>Start treatment at {{date | date:'yyyy-MM-dd'}}</i></h3>
        			</div>

					
 
        			<div class="modal-body">

						
						
					</div>
        			<div class="modal-footer">
						<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        			</div>
    			</script>
	</div>	 -->
    
</div>



