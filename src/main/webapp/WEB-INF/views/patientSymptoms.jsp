<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- 
<script src="<c:url value="/resources/custom/js/patient.js"/>"></script>
 -->
<script src="<c:url value="/resources/libs/js/angular.min.js"/>"></script>
<script src="<c:url value="/resources/custom/js/patientsymptoms-angular.js"/>"></script>
<script src="<c:url value="/resources/custom/js/patient/patient-treatment-controller.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>

<div ng-app="patientsymptoms" ng-controller="DiseaseController">
<div>
<div class="row">
    <div class="col-lg-6">
        <H1>Name of Disease</i></H1>

        <div class="partselector">
            Select part of body:
                <select ng-model="modelBodyPart" ng-options="bodypart for bodypart in bodyparts" ng-change = "choosebodypart()">
                    <option value = "">ALL</option>
                </select>
        </div>
        <br>
        <div class="symptomselector">
            Select symptom:
                <select id = "sympsel" ng-model = "ngModel" ng-options="symptom.name for symptom in allsymptoms">
                    <option value="" disabled = true>Choose symptom here</option>
                </select>
            <button ng-click="addsymptom()" id='buttonsymp' type="button" class="pull-right">add symptom</button>
        </div>
        <br>
    </div>
</div>

<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Symptoms 
                    <button ng-click ="putsymptoms()" type="button" id = "buttonrec" class="pull-right">create new record</button>
                </h3>
            </div>
            <div class="panel-body">
            <accordion close-others="oneAtATime" id = "symplistid">
                <accordion-group ng-repeat="symptom in symptoms">
                    <accordion-heading>
                    {{symptom.name}}
                    <!-- <a type = "button" ng-click = "isCollapsed = !isCollapsed">{{symptom.name}}</a> -->
                    <a href="" class="pull-right" ng-click ="deletesymptom(symptom)">Delete</a>
                    </accordion-heading>
                    {{symptom.description}}
                </accordion-group>
            </accordion>
            </div>
        </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Probability
                </h3>
            </div>
            <div class="panel-body" >
            <script type="text/ng-template" id="modalDisease.html">
                                <div class="modal-header">
                                     Description:  {{disease.description}}<br><br>
                                     List of symptoms in disease {{disease.id}}:
                                </div>
                                <div class="modal-body">
                                    <table ng-table class="table table-striped table-bordered">
                                        <tr ng-repeat="symptdis in listsymptomsofdisease">
                                            <td class="table-data" data-tittle="ID">{{symptdis.symptom.id}}</td>
                                            <td class="table-data" data-tittle="Name">{{symptdis.symptom.name}}</td>
                                            <td class="table-data" data-tittle="Description">{{symptdis.symptom.description}}</td>
                                            <td class="table-data" data-tittle="BodyPart">{{symptdis.symptom.bodyPart}}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-primary" ng-click="ok()">OK</button>
                                </div>
                </script>
                <ul>
                    <li class = "form-control" ng-repeat="mapd in mapDisease">
                    <a class = "col-xs-5" href ="" ng-click="openmodaldisease(mapd[0])">{{mapd[0].name}}</a>
                    <p class = "col-xs-3">{{mapd[1]| number:2}} %</p>
                    <a href="" class="col-xs-4 pull-right" ng-click="openTreatment(mapd[0])">Add AutoCardRecord</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
</div>