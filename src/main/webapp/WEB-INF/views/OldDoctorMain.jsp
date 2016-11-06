<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="<c:url value="/resources/custom/js/docRecord/angularjs-nvd3-directives.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>

<script src="<c:url value="/resources/custom/js/docRecord/docRecord-ang.js"/>"></script>
<script src="<c:url value="/resources/custom/js/doctor-main/doc-main.js"/>"></script>
<script src="<c:url value="/resources/custom/js/docRecord/resource.js"/>"></script>


<link rel="stylesheet" href="<c:url value="/resources/custom/css/docRecord/division.css"/>">
<style>
.ui-datepicker td {
	border-collapse: collapse;
	padding: 0;
}
</style>


<div ng-app="docRecordPage">
  <div class="row">
    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
      <div class="well">
        <div ng-controller="UserController as user">
          <div class="row">
            <div class="col-sm-12">
              <div class="row">
                <div class="col-sm-3 avatarContainer">
                  <div class="profile-pic">
                    <img src="<c:url value="/resources/custom/images/dr.jpg"/>" />
                  </div>
                  <div class="profile-pic-chg">
                    <button type="button" class="btn btn-primary btn-xs">My Profile</button>
                  </div>
                </div>
                <div class="col-sm-9">
                  <h3>
                    {{user.fullName}} <br> <small>Doctor: {{user.department.name}}</small>
                  </h3>
                  <ul class="list-unstyled">
                    <li>
                      <p class="text-muted">
                        <i class="fa fa-map-marker"></i> {{user.adress}}
                      </p>
                    </li>
                    <li>
                      <p class="text-muted">
                        <i class="fa fa-phone"></i> {{user.phone}}
                      </p>
                    </li>
                    <li>
                      <p class="text-muted">
                        <i class="fa fa-envelope"></i> {{user.email}}
                      </p>
                    </li>
                    <li>
                      <p class="text-muted">
                        <i class="fa fa-calendar"></i> {{user.birthday | date:'mediumDate'}}
                      </p>
                    </li>

                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
      <div ng-controller="docMainCtrl" style="margin-top: 20px">
        <tabset> <tab heading="Scedule">
        <div style="display: inline-block; min-height: 280px;">
          <datepicker ng-model="dt" min-date="minDate" show-weeks="true" class="well well-sm ui-datepicker"></datepicker>
        </div>
        </tab> <tab heading="Patients">Static content</tab> </tabset>
      </div>
    </div>
  </div>


  <div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

      <div ng-controller="DoctorController as docContr">


        <h4 style="color: #428BCA; margin-left: 20px;">
          <i class="fa fa-wheelchair fa-fw"></i> Patients
        </h4>

        <div class="panel-body">
          <table ng-table="tableParams" template-pagination="custom/pager" class="table ng-table-rowselected">
            <thead style="font-syze: 5px">
              <th class="sortable col-sm-3"
                ng-class="{
			                        'sort-asc': tableParams.isSortBy('card.patient.fullName', 'asc'),
			                        'sort-desc': tableParams.isSortBy('card.patient.fullName', 'desc')
			                        }"
                ng-click="tableParams.sorting({'card.patient.fullName' : tableParams.isSortBy('card.patient.fullName', 'asc') ? 'desc' : 'asc'})">
                <div>
                  <i class="fa fa-wheelchair fa-fw text-info"></i> Patient
              </th>
              </div>
              <th class="sortable col-sm-3"
                ng-class="{
			                        'sort-asc': tableParams.isSortBy('disease.name', 'asc'),
			                        'sort-desc': tableParams.isSortBy('disease.name', 'desc')
			                        }"
                ng-click="tableParams.sorting({'disease.name' : tableParams.isSortBy('disease.name', 'asc') ? 'desc' : 'asc'})">
                <div>
                  <i class="fa fa-eyedropper fa-fw  text-info"></i> Disease
              </th>
              </div>
              <th class="sortable col-sm-4"
                ng-class="{
			                        'sort-asc': tableParams.isSortBy('startDate', 'asc'),
			                        'sort-desc': tableParams.isSortBy('startDate', 'desc')
			                        }"
                ng-click="tableParams.sorting({'startDate' : tableParams.isSortBy('startDate', 'asc') ? 'desc' : 'asc'})">
                <div>
                  <i class="fa fa-calendar fa-fw text-info"></i> Start Date
              </th>
              </div>
              <th class="sortable col-sm-2"
                ng-class="{
			                        'sort-asc': tableParams.isSortBy('endDate', 'asc'),
			                        'sort-desc': tableParams.isSortBy('endDate', 'desc')
			                        }"
                ng-click="tableParams.sorting({'endDate' : tableParams.isSortBy('endDate', 'asc') ? 'desc' : 'asc'})">
                <div>
                  <i class="fa fa-calendar fa-fw text-info"></i> End Date
              </th>
              </div>
              <th>Details</th>
            </thead>
            <tbody>

              <tr ng-repeat="cardRecord in $data" data-ng-click="goto_detail(cardRecord.id)"
                bgcolor="{{cardRecord.endDate === null ?
									     (cardRecord.disease === null ? '#FFA500' : '#FFEC8B') :
									     (cardRecord.disease === null ? '#FFA500' : '#FFFFFF')}}">

                <td data-title="'Patient'" sortable="'card.patient.fullName'"
                  filter="{ 'card.patient.fullName': 'text' }">{{cardRecord.card.patient.fullName}}</td>
                <td data-title="'Disease'" sortable="'disease.name'">{{cardRecord.disease.name}}</td>
                <td data-title="'Disease'" sortable="'startDate'">{{cardRecord.startDate}}</td>
                <td data-title="'Disease'" sortable="'endDate'">{{cardRecord.endDate}}</td>
                <td><a href="docRecord/{{cardRecord.id}}"> <i class="fa fa-pencil-square-o"></i>
                </a></td>

              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/ng-template" id="custom/pager">
            <div class="row ng-cloak ng-table-pager ">
                <div class="col-sm-5">
                    <p class="text-muted pageInfo">
                        <i>Results <span class="txt-color-darken"><b>{{(params.page() - 1) * params.count() + 1}}</b></span> to <span class="txt-color-darken"><b>{{params.page() * params.count()}}</b></span> from <span class="txt-color-blue"><b>{{params.total()}}</b></span> total.</i>
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
        </div>
	
	
		</div>
            
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Patients treatment requests.
                    </h3>
                </div>
                <div class="panel-body">                  
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
