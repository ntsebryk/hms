<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="<c:url value="/resources/libs/js/angularjs-nvd3-directives.js"/>"></script>
<script src="<c:url value="/resources/libs/js/d3.js"/>"  charset="utf-8"></script>
<script src="<c:url value="/resources/libs/js/nv.d3.js"/>"  charset="utf-8"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/libs/js/resource.js"/>"></script>
<script src="<c:url value="/resources/custom/js/admin-manager/app.js"/>"></script>
<script src="<c:url value="/resources/libs/js/dropdowns-enhancement.js"/>"></script>


<%-- <link href="<c:url value = "/resources/libs/css/ng-table.css"/>" rel="stylesheet"> --%>
<link href="<c:url value = "/resources/libs/css/dropdowns-enhancement.css"/>" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/custom/css/admin-manager/nv.d3.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/custom/css/admin-manager/division.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/custom/css/admin-manager/onoffswitch.css"/>">
<meta charset="utf-8">
<div ng-app="admin-manager">
    <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
            <div class="well">
                  <div ng-controller="UserController as user">
                    <div class="row">
                      <div class="col-sm-12">
                        <div class="row">
                          <div class="col-sm-3 avatarContainer">
                            <div class="profile-pic">
                              <img src="<c:url value="/resources/custom/images/admin-manager/avatar.jpg"/>"/>                              
                            </div>
                            <button type="submit" class="btn btn-sm changeAvatar"><i class="fa fa-photo fa-fw text-muted"></i> Change avatar</button>

                          </div>
                          <div class="col-sm-9">
                            <h3>
                              {{user.fullName}}
                              <br>
                              <small>Administrator</small>
                            </h3>
                            <ul class="list-unstyled">
                              <li>
                                <p class="text-muted"><i class="fa fa-map-marker"></i> {{user.adress}}</p>
                              </li>
                              <li>
                                <p  class="text-muted"><i class="fa fa-phone"></i> {{user.phone}}</p>
                              </li>
                              <li>
                                <p  class="text-muted"><i class="fa fa-envelope"></i> {{user.email}}</p>
                              </li>
                              <li>
                                <p  class="text-muted"><i class="fa fa-calendar"></i> {{user.birthday | date:'mediumDate'}}</p>
                              </li>                            
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div ng-controller="ChangeUserStatus">
                    <alert ng-repeat="alert in alerts" type="success" close="closeAlert($index)">{{alert.msg}}</alert>
                </div>
                <div class="well">
                    <div ng-controller="TabsCtrl">
                        <tabset>
                            <tab heading="{{tabs[0].title}}" active="tabs[0].active" disabled="tabs[0].disabled">
                                <find-user-typeahead request-role="Doctor"></find-user-typeahead>
                                <new-doctors role='Doctor' ng-show="tabs[0].active" ></new-doctors>
                            </tab>
                            <tab heading="{{tabs[1].title}}" active="tabs[1].active" disabled="tabs[1].disabled">
                                <find-user-typeahead request-role="Pharmacist"></find-user-typeahead>
                                <new-doctors ng-show="tabs[1].active" role='Pharmacist'></new-doctors>
                            </tab>
                            <tab heading="{{tabs[2].title}}" active="tabs[2].active" disabled="tabs[2].disabled">
                                <find-user-typeahead request-role="Labmanager"></find-user-typeahead>
                                <new-doctors ng-show="tabs[2].active" role='Labmanager'></new-doctors>
                            </tab>
                        </tabset>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                <div class="panel panel-default chartPanel" ng-controller="TestChartCtrl">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="hTitle">
                                    <i class="fa fa-bar-chart fa-fw fa-lg text-info"></i> Users addresses per month by year
                                </div>  
                            </div>
                            <div class="col-sm-7 im-righted">                        
                                <div class="btn-group">
                                    <button class="btn tabBtn" ng-model="radioModel" btn-radio="tabs[0].title">{{tabs[0].title}}</label>
                                    <button class="btn tabBtn" ng-model="radioModel" btn-radio="tabs[1].title">{{tabs[1].title}}</label>                                    
                                </div>                              
                            </div>                            
                        </div>
                    </div>                    
                    <div  class="panel-body">
                        <div class="row">
                            <div class="col-sm-8 chartRendered">
                                <div ng-show="radioModel == tabs[0].title" id="chart_div"></div>  
                                <div ng-show="radioModel == tabs[1].title" id="ColumnChart"></div> 
                            </div>
                            <div class="col-sm-4 chartControl">                               
                                <div ng-show="radioModel == tabs[0].title">
                                    <div class="input-group input-group-sm">
                                        <span class="input-group-addon">
                                            <i class="fa fa-search fa-fw text-info"></i>
                                        </span>
                                        <input  type="text" 
                                                ng-model="findedDis"
                                                placeholder="Search disease ..."
                                                typeahead="disease.name for disease in getDiseases($viewValue)"
                                                typeahead-loading="loadingDiseases"
                                                typeahead-on-select='onSelect($item, $model, $label)'
                                                class="form-control" >
                                        <i ng-show="loadingDiseases" class="glyphicon glyphicon-refresh"></i>                            
                                    </div>
                                    <div class="selectedDis" ng-show="findedDis">
                                        <span class="text-info">Selected:</span><span class="text-muted"> {{findedDisease.name}} <span class="fa fa-close fa-fw text-muted faButton" ng-click="clearFinDis()"></span></span>
                                    </div>
                                </div>
                                 <div ng-show="radioModel == tabs[1].title">
                                    <div class="row"> 
                                        <div class="btn-group" dropdown is-open="status.isopen">
                                            <button type="button" class="btn btn-primary btn-sm dropdown-toggle charCtrlDrpDwn" 
                                                    ng-disabled="disabled">
                                                    <span class="fa fa-calendar fa-fw"></span>
                                            {{title}} <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li ng-repeat="year in years">
                                                    <a  ng-click="getMonthIllness(year)" 
                                                        href>
                                                        {{year}}
                                                    </a>
                                                </li>
                                                <li class="divider"></li>
                                                <li><a  ng-click="clearFinYear()" 
                                                        href>All years</a></li>                                              
                                            </ul>
                                        </div>                                                                                                                             
                                    </div>                            
                                  
                                    <div class="row">
                                        <div class="input-group">
                                            <input  type="text" 
                                                    class="form-control barChartSearch" 
                                                    datepicker-popup="{{format}}" 
                                                    ng-model="dt2" 
                                                    is-open="openedEnd" 
                                                    min-date="minDate" 
                                                    max-date="'2015-06-22'" 
                                                    datepicker-options="dateOptions" 
                                                    date-disabled="disabled(date, mode)" 
                                                    ng-required="true" 
                                                    close-text="Close" 
                                                    ng-focus="openEndDate($event)"/>                                          
                                        </div>
                                    </div>                                        
                                </div>  
                            </div>                            
                        </div>
                                                        
                    </div>
                </div>
            </div>
        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
            <div class="panel panel-default cardRecordsPanHead" ng-controller="FindAllCardRecords as facr">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-sm-6">
                            <i class="fa fa-database fa-fw fa-lg text-info"></i> Patients treatment requests.
                        </div>
                        <div class="col-sm-6 im-righted">
                             <button ng-disabled="!needDoctor" ng-click="openListOfAvailableDoctors()" type="submit" class="btn btn-primary showModalBtn">
                                <i class="fa fa-hospital-o fa-fw fa-lg "></i>
                            </button>
                        </div>
                    </div>
                </div>                
                <div class="panel-body">
                    <div class="row filterCardRecords" >
                        <div class="col-sm-6">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">
                                    <i class="fa fa-filter fa-fw text-info"></i>
                                </span>
                                <input type="text" class="form-control" ng-model="filter.$" placeholder="Filter data ...">
                            </div>
                        </div>
                        <div class="col-sm-4">

                        </div>
                        <div class="col-sm-2 pull-right">
                            <div class="pull-right">
                                <div class="onoffswitch">
                                    <input  type="checkbox"
                                            name="onoffswitch"
                                            class="onoffswitch-checkbox"
                                            ng-click="needDocSwitch()"
                                            id="myonoffswitch"
                                            checked>
                                    <label class="onoffswitch-label" for="myonoffswitch">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table ng-table="tableParams" template-pagination="custom/pager"  class="table ng-table-rowselected allCardRecords">
                        <thead>
                            <th class="cols-sm-1">
                            </th>
                            <th class="sortable col-sm-3"
                                ng-class="{
                                    'sort-asc': tableParams.isSortBy('card.patient.fullName', 'asc'),
                                    'sort-desc': tableParams.isSortBy('card.patient.fullName', 'desc')
                                    }"
                                ng-click="tableParams.sorting({'card.patient.fullName' : tableParams.isSortBy('card.patient.fullName', 'asc') ? 'desc' : 'asc'})">
                                <div><i class="fa fa-user fa-fw text-info"></i> Patient</div>
                            </th>
                            <th class="sortable col-sm-3"
                                ng-class="{
                                    'sort-asc': tableParams.isSortBy('doctor.fullName', 'asc'),
                                    'sort-desc': tableParams.isSortBy('doctor.fullName', 'desc')
                                    }"
                                ng-click="tableParams.sorting({'doctor.fullName' : tableParams.isSortBy('doctor.fullName', 'asc') ? 'desc' : 'asc'})">
                                <div><i class="fa fa-user-md fa-fw  text-info"></i> Doctor</div>
                            </th>
                            <th class="sortable col-sm-3"
                                ng-class="{
                                    'sort-asc': tableParams.isSortBy('disease.name', 'asc'),
                                    'sort-desc': tableParams.isSortBy('disease.name', 'desc')
                                    }"
                                ng-click="tableParams.sorting({'disease.name' : tableParams.isSortBy('disease.name', 'asc') ? 'desc' : 'asc'})">
                                <div><i class="fa fa-wheelchair fa-fw text-info"></i> Disease</div></th>
                            <th class="sortable col-sm-2"
                                ng-class="{
                                    'sort-asc': tableParams.isSortBy('startDate', 'asc'),
                                    'sort-desc': tableParams.isSortBy('startDate', 'desc')
                                    }"
                                ng-click="tableParams.sorting({'startDate' : tableParams.isSortBy('startDate', 'asc') ? 'desc' : 'asc'})">
                                <div><i class="fa fa-calendar fa-fw text-info"></i> StartDate</div></th>
                        </thead>
                        <tbody>
                            <tr ng-repeat="cardRecord in $data"
                                ng-class="">
                                <td >
                                    <div class="im-centered crCheckBox">
                                        <input  type="checkbox"
                                                id="sCRs{{cardRecord.id}}"
                                                ng-model="checkboxes.items[cardRecord.id]"
                                                ng-click="changeSelection(cardRecord)"/>
                                        <label for="sCRs{{cardRecord.id}}"></label>
                                    </div>
                                </td>
                                <td data-title="'Patient'" sortable="'card.patient.fullName'">
                                    {{cardRecord.card.patient.fullName}}
                                </td>
                                <td data-title="'Doctor'" sortable="'doctor.fullName'">
                                    {{cardRecord.doctor.fullName}}
                                </td>
                                <td data-title="'Disease'" sortable="'disease.name'">
                                    {{cardRecord.disease.name+' '+cardRecord.isDoctorNeeded}}
                                </td>
                                <td data-title="'StartDate'" sortable="'startDate'" class="im-centered">
                                    {{cardRecord.startDate}}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <script type="text/ng-template" id="ng-table/headers/checkbox.html">
                        <input type="checkbox" ng-model="checkboxes.checked" id="select_all" name="filter-checkbox" value="" />
                    </script>
                    <script type="text/ng-template" id="custom/pager">
                        <div class="row ng-cloak ng-table-pager ">
                            <div class="col-sm-5">
                                <p class="text-muted pageInfo">
                                    <i>Results <span class="txt-color-darken"><b>{{(params.page() - 1) * params.count() + 1}}</b></span> to <span class="txt-color-darken"><b>{{params.page() * params.count() < params.total() ? params.page() * params.count() : params.total()}}</b></span> from <span class="txt-color-blue"><b>{{params.total()}}</b></span> total.</i>
                                </p>
                            </div>
                            <div class="col-sm-7 im-righted">
                                <ul class="pagination pagination-sm ng-table-pagination">
                                    <li ng-class="{'disabled': !page.active}" ng-repeat="page in pages" ng-switch="page.type">
                                        <a ng-switch-when="first" ng-click="params.page(page.number)" href="">&laquo;</a>
                                        <a ng-switch-when="page" ng-click="params.page(page.number)" href=""><span ng-bind="page.number"></span></a>
                                        <a ng-switch-when="last" ng-click="params.page(page.number)" href="">&raquo;</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </script>
                    <script type="text/ng-template" id="myModalContent.html">
                        <div class="modal-header">
                            <h3 class="modal-title">Available doctors</h3>
                        </div>
                        <div class="modal-body availDocsBody">
                            <div class="row">
                                <div class="col-sm-4 im-centered">
                                    <h4>Patients</h4>
                                </div>
                                <div class="col-sm-8 im-centered">
                                    <h4>Available doctors</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="list-group usersToAprove">
                                        <li ng-repeat="cardRec in usersToAprove" class="list-group-item" >{{cardRec.card.patient.fullName}}</li>
                                    </ul>
                                </div>
                                <div class="col-sm-8 tableDocsLoadsWrapper">
                                    <table ng-table="tableDocsLoads" template-pagination="custom/pager"  class="table ng-table-rowselected">
                                        <thead>
                                            <th class="sortable col-sm-8"
                                                ng-class="{
                                                    'sort-asc': tableDocsLoads.isSortBy('doctor.fullName', 'asc'),
                                                    'sort-desc': tableDocsLoads.isSortBy('doctor.fullName', 'desc')
                                                    }"
                                                ng-click="tableDocsLoads.sorting({'doctor.fullName' : tableDocsLoads.isSortBy('doctor.fullName', 'asc') ? 'desc' : 'asc'})">
                                                <div><i class="fa fa-user fa-fw text-info"></i> Doctor</div>
                                            </th>
                                            <th class="sortable col-sm-4"
                                                ng-class="{
                                                    'sort-asc': tableDocsLoads.isSortBy('load', 'asc'),
                                                    'sort-desc': tableDocsLoads.isSortBy('load', 'desc')
                                                    }"
                                                ng-click="tableDocsLoads.sorting({'load' : tableDocsLoads.isSortBy('load', 'asc') ? 'desc' : 'asc'})">
                                                <div><i class="fa fa-user-md fa-fw  text-info"></i> Load</div>
                                            </th>
                                        </thead>
                                        <tbody>
                                            <tr ng-repeat="docLoad in $data"
                                                ng-class="{'success': docLoad.$selected}"
                                                ng-click="docLoad.$selected = !docLoad.$selected; selectDoctor(docLoad)">
                                                <td data-title="'Patient'" sortable="'doctor.fullName'">
                                                    {{docLoad.doctor.fullName}}
                                                </td>
                                                <td data-title="'Doctor'" sortable="'load'" class=" im-centered">
                                                    {{docLoad.load}}
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-sm btn-primary" ng-click="ok()">Assign</button>
                            <button class="btn btn-sm btn-warning" ng-click="cancel()">Cancel</button>
                        </div>
                        <script type="text/ng-template" id="custom/pager">
                            <div class="row ng-cloak ng-table-pager ">
                                <div class="col-sm-8">
                                    <p class="text-muted pageInfo">
                                        <i>Results <span class="txt-color-darken"><b>{{(params.page() - 1) * params.count() + 1}}</b></span> to <span class="txt-color-darken"><b>{{params.page() * params.count() > params.total() ? params.total() : params.page() * params.count()}}</b></span> from <span class="txt-color-blue"><b>{{params.total()}}</b></span> total.</i>
                                    </p>
                                </div>
                                <div class="col-sm-4 im-righted">
                                    <ul class="pagination pagination-sm ng-table-pagination">
                                        <li ng-class="{'disabled': !page.active}" ng-repeat="page in pages" ng-switch="page.type">
                                            <a ng-switch-when="prev" ng-click="params.page(page.number)" href="">&laquo;</a>
                                            <a ng-switch-when="next" ng-click="params.page(page.number)" href="">&raquo;</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </script>
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Generated markup by the plugin -->
<div class="tooltip top" role="tooltip">
    <div class="tooltip-arrow"></div>
    <div class="tooltip-inner">
        Some tooltip text!
    </div>
</div>

<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>

