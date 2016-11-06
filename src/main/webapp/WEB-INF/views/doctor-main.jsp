<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="<c:url value="/resources/custom/js/docRecord/angularjs-nvd3-directives.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/libs/js/calendar.js"/>"></script>
<script src="<c:url value="/resources/custom/js/doctor-main/calendar.js"/>"></script>
<script src="<c:url value="/resources/custom/js/docRecord/docRecord-ang.js"/>"></script>
<script src="<c:url value="/resources/custom/js/doctor-main/doc-main.js"/>"></script>
<script src="<c:url value="/resources/custom/js/docRecord/resource.js"/>"></script>


<link rel="stylesheet" href="<c:url value="/resources/custom/css/docRecord/division.css"/>">
<style>
.ui-datepicker td {
	border-collapse: collapse;
	padding: 0;
 }
.panel {
  padding: 15px;
  margin-bottom: 20px;
  background-color: #ffffff;
  border: 1px solid #dddddd;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}

.panel-heading {
  padding: 10px 15px;
  margin: -15px -15px 15px;
  font-size: 17.5px;
  font-weight: 500;      
  background-color: #f5f5f5;
  border-bottom: 1px solid #dddddd;
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}

.panel-footer {
  padding: 10px 15px;
  margin: 15px -15px -15px;
  background-color: #f5f5f5;
  border-top: 1px solid #dddddd;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}

.panel-primary {
  border-color: #428bca;
}

.panel-primary .panel-heading {
  color: #ffffff;
  background-color: #428bca;
  border-color: #428bca;
}

.panel-success {
  border-color: #d6e9c6;
}

.panel-success .panel-heading {
  color: #468847;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}

.panel-warning {
  border-color: #fbeed5;
}

.panel-warning .panel-heading {
  color: #c09853;
  background-color: #fcf8e3;
  border-color: #fbeed5;
}

.panel-danger {
  border-color: #eed3d7;
}

.panel-danger .panel-heading {
  color: #b94a48;
  background-color: #f2dede;
  border-color: #eed3d7;
}

.panel-info {
  border-color: #bce8f1;
}

.panel-info .panel-heading {
  color: #3a87ad;
  background-color: #d9edf7;
  border-color: #bce8f1;
} 
</style>
<div ng-app="docRecordPage" class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
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
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
    <div ng-controller="docMainCtrl" style="margin-top: 20px">
      <tabset> 
        <tab heading="Scedule">
          <div style="display: inline-block;">
          <datepicker ng-model="dt" min-date="minDate" show-weeks="true" class="well well-sm ui-datepicker"></datepicker>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">Agenda for {{dt | date:'fullDate' }}</h3>
            </div>
            <div class="panel-body">
                <div class="container">
                    <button type="button" class="btn btn-primary btn-xs" ng-click="sendDate()">Test</button>
                </div>
            </div>
          </div>
        </tab>
        <tab heading="Scedule-2">
            <div ui-calendar="uiConfig.calendar" class="span8 calendar" ng-model="eventSources"></div>
        </tab> 
        <tab heading="Symptoms">Static content</tab>
      </tabset>
    </div>
  </div>
</div>