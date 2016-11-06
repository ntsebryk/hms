<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<script src="<c:url value="/resources/libs/js/angular.min.js"/>"></script>
<script src="<c:url value="/resources/custom/js/patient-angular.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>

<br>
<br>
<div class ="col-lg-12">
    <a href="/hospital/patientsymptoms" type="button" class="btn btn-primary" ><h4>HELP ME!!!</h4></a>
<br>
<br>
</div>

<div ng-app="patient">
<div class="row">
    <div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
        <div ng-controller="UserControl as user" class="panel panel-default">        
            <div class="panel-heading">
                <h3 class="panel-title">
                    <i>{{user.login}}'s info:</i> 
                </h3>
            </div>
            <div class="panel-body">
	            <div class="col-sm-3 avatarContainer">
	                <div>
	                   <img src="<c:url value="/resources/custom/images/image.jpg"/>" width=92, height=113/>
	                </div>
	            </div>
	            <div class="col-sm-9">
	                {{user.fullName}}<br>
	                <i>{{user.status}}</i><br>
	                <i>{{user.gender}}</i><br>
	                <i>{{user.birthday|date}}</i><br>
	                <i>{{user.phone}}</i><br>
	                <i>{{user.email}}</i><br>
	                <i>{{user.adress}}</i><br><br>
	                <small>Registration date: {{user.registrationDate|date}}</small>
	            </div>
	        </div>
	        
        </div>
    </div>
    <div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Patients disease history
                </h3>
            </div>
                            
            <div class="panel-body">
                <div class="allCards">
                    <div id="cardsTable" ng-controller = "CardRecordController">
                        <!--<c:if test="${empty listCardRec}">
                            Congratulations!!!!!
                        </c:if>
                        <c:if test="${!empty listCardRec}">
                             -->
                             <script type="text/ng-template" id="modalCardRec.html">
                                <div class="modal-header">
                                     List of symptoms in card  {{cardr.id}}:
                                </div>
                                <div class="modal-body">
                                    <table ng-table class="table table-striped table-bordered" >
                                        <tr ng-repeat="sympt in listSymptomsByCardRec">
                                            <td class="table-data" data-tittle="ID">{{sympt.id}}</td>
                                            <td class="table-data" data-tittle="Name">{{sympt.name}}</td>
                                            <td class="table-data" data-tittle="Description">{{sympt.description}}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-primary" ng-click="ok()">OK</button>
                                </div>
                             </script>
                            
                            <table id="patient-cardrecord-table" ng-table="tableParams"
                            class="table table-striped table-bordered">
                                <tr ng-repeat="cardrecord in $data">
                                    <td class="table-data" data-title="'ID'">{{cardrecord.id}}</td>
                                    <td class="table-data" data-title="'Disease'">{{cardrecord.disease.name}}</td>
                                    <td class="table-data" data-title="'Doctor'">{{cardrecord.doctor.fullName}}</td>
                                    <td class="table-data" data-title="'Start'">{{cardrecord.startDate}}</td>
                                    <td class="table-data" data-title="'End'">{{cardrecord.endDate}}</td>
                                    <td><a id = "buttondetails" ng-click="openmodalcardrecord(cardrecord)" type="button">See details</a></td>
                                </tr>
                            </table>
                        <!--</c:if>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    My active treatments
                </h3>
            </div>
            <div class="panel-body">
                <div class="allCards" ng-controller = "TreatmentController">
                    <div id="cardsTable">
                        <!--<c:if test="${empty listTr}">
                            No active treatments!!!!!
                        </c:if>
                        <c:if test="${!empty listTr}">
                            -->
                            <script type="text/ng-template" id="modalTreatment.html">
                                <div class="modal-header">
                                     List of drugs and description to them in treatment  {{treatment.id}}:
                                </div>
                                <div class="modal-body">
                                    <table ng-table class="table table-striped table-bordered">
                                        <tr ng-repeat="treatdr in listTreatmentDrug">
                                            <td class="table-data" data-tittle="ID">{{treatdr.id}}</td>
                                            <td class="table-data" data-tittle="Name">{{treatdr.drug.name}}</td>
                                            <td class="table-data" data-tittle="Description">{{treatdr.drug.description}}</td>
                                            <td class="table-data" data-tittle="Category">{{treatdr.drug.drugCategory}}</td>
                                            <td class="table-data" data-tittle="Applying">{{treatdr.description}}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-primary" ng-click="ok()">OK</button>
                                </div>
                             </script>
                            <table id="patient-treatment-table" ng-table="tableTrParams"
                            class="table table-striped table-bordered">
                                <tr ng-repeat="treatment in listTreatment">
                                    <td class="table-data" data-title="'ID'">{{treatment.id}}</td>
                                    <td class="table-data" data-title="'cardRecord'">{{treatment.cardRecord.id}}</td>
                                    <td class="table-data" data-title="'end'">{{treatment.endedDate}}</td>
                                    <td class="table-data" data-title="'Start'">{{treatment.startedDate}}</td>
                                    <td><a id = "buttondetails" ng-click="opentreatmentdesc(treatment)" type="button">See details</a></td>
                                </tr>
                            </table>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Schedule
                </h3>
            </div>
            <div class="panel-body">
                Panel content
            </div>
        </div>
    </div>
</div>
</div>