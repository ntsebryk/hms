<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="<c:url value = "/resources/libs/css/ng-loading-bar.css"/>" rel="stylesheet">

<script src="<c:url value="/resources/libs/js/angular.js"/>"></script>
<script	src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-loading-bar.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/custom/js/test.js"/>"></script>

    
    
    
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

<div ng-app="TestPageModule" style="z-index:10;">
    <div ng-controller="TestPageCtrl">
    

    <div class="DrugCatalogHeader">Medical Tests Log
    <a class="btn btn-default" href="#AppointTests" data-toggle="modal" title="Appoint Test(s)"><i class="fa fa-plus-circle" style="color:#428BCA;" title="Appoint Test(s)"></i></a>
    </div>
	    <div class="DrugsTable" ng-table="tableParams" style="clear:both;"> <!-- width:600px; -->
		    <div class="heading">
			    <div class="hcol">#</div>
			    <div class="hcol">Appointment Date</div>
			    <div class="hcol">Patient</div>
			    <!-- <div class="hcol">Patient2</div> -->
			    <div class="hcol">Test</div>
			    <div class="hcol">TestCat.</div>
			    <div class="hcol">Doctor</div>
			    <div class="hcol">Laboratory</div>
			    <div class="hcol">Date of Test</div>
			    <div class="hcol">Result</div>
		    </div>
		    <div class="table-row" ng-repeat="test in testsList">
			    <div class="col">{{$index + 1}}</div>
			    <div class="col">{{test.appointmentDate}}</div>
			    <div class="col">{{test.treatment.cardRecord.card.patient.fullName}}</div>
			    <!-- <div class="col">{{test.user.fullName}}</div> -->
			    <div class="col">{{test.test.name}}</div>
			    <div class="col">{{test.test.testCategory}}</div>
			    <div class="col">{{test.treatment.cardRecord.doctor.fullName}}</div>
			    <div class="col">{{test.laboratory.name}}</div>
			    <div class="col">{{test.testDate}}</div>
			    <div class="col">if</div>
		    </div>								
	    </div>  
	  
        items per page:<select id="s1" ng-model="selectedItems" ng-change="change()" ng-options="o as o for o in itemsList"></select> <pagination class="pagination-sm" ng-model="myCurrentPage" total-items="myTotalItems" items-per-page="myPageSize" max-size="myMaxSize" rotate="true" direction-links="true" previous-text="{{myPreviousText}}" next-text="{{myNextText}}" boundary-links="true" first-text="{{myFirstText}}" last-text="{{myLastText}}" ng-change="changed()"></pagination>	  
	   
	   <br><br>
	
<!-- ===============+++++++++++++++===================== -->	
<!-- #################################################################################################33 -->		
<style type="text/css">
.panel
{
	width: 60%;
	margin-right: 20%;
	margin-left: 20%;
	background-color: #39393d!important;
	border-color: #e2e2e2;
	border: 1px solid transparent;
	height: 320px;
	color:white;
}
.action-checkbox
{
	padding-left: 0%;
	padding-top: 10px;
	margin-top: 50px;
	margin-bottom: 30px;
	line-height: 10px;
	display: inline;
	
}
.check-box-panel
{
	width: 350px;
	float: left;
	display: inline;
	margin-top: 0px;
	margin-left: 0px;
	/*border-style: dotted;*/
	padding-top: 10px;
	padding-bottom: 0px;
	
}
.selected-items-panel
{
	margin-left: 10px;
	margin-top: 17%;
	margin-right:10px;
	color:#ffaa00;
}
.selected-item
{
	display:inline;
	margin-right:10px;
	font-size:16px;
	color:turquoise;
	font-family:Trebuchet MS;
}

input[type=checkbox] { display:none; } /* to hide the checkbox itself */
input[type=checkbox] + label:before {
  font-family: FontAwesome;
  display: inline-block;
}

input[type=checkbox] + label:before { content: "\f096"; } /* unchecked icon */
input[type=checkbox] + label:before { letter-spacing: 10px; } /* space between checkbox and label */

input[type=checkbox]:checked + label:before { content: "\f046";color:#008080; } /* checked icon */
input[type=checkbox]:checked + label:before { letter-spacing: 10px;} /* allow space for check mark */
</style>	
	
<style>
	.AppointFormTable {
		width:90%;
		height:100%;
		border:1px solid #C0C0C0;
		border-collapse:collapse;
		padding:0px;
		align:right;
	}
	.AppointFormTable th {
		border:1px solid #C0C0C0;
		padding:0px;
	}
	.AppointFormTable td {
		border:1px solid #C0C0C0;
		padding:0px;
	}
</style>




<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11 -->
<!-- <br><br><br><br>

<hr/>

<div>
<select id="s1" ng-model="selectedCategory" ng-change="change()" ng-options="key as key for (key, value) in Kategory"></select>
<div class="check-box-panel">
    <div ng-repeat="test in CategoryTests">
        <div class="action-checkbox">
            <input id="{{test.name}}" type="checkbox" value="{{test.name}}"/>  
            <label for="{{test.name}}"></label>
            {{test.name}}      
        </div>
    </div>
</div>
</div>

<hr/>

 -->
 
 <!-- <div>	   
    <select id="s1" ng-model="selectedCategory" ng-change="change()" ng-options="key as key for (key, value) in Kategory"></select>
    <select id="s2" style="width:300px;" ng-model="selectedTest" ng-change="selectedTests()" ng-options="var as var.name for var in CategoryTests"></select>
</div> -->



<!--         <select id="s1" ng-model="selectedCategory" ng-change="change()" ng-options="key as key for (key, value) in Kategory"></select>

        <div class="check-box-panel">
           <div ng-repeat="test in CategoryTests">
               <div class="action-checkbox">
                   <input id="{{test.name}}" type="checkbox" value="{{test.name}}"/>  
                   <label for="{{test.name}}"></label>{{test.name}}      
               </div>
            </div>
        </div>     -->
 
 
 <!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11 -->



<!-- <div>	   
<select id="s1" ng-model="selectedCategory" ng-change="change()" ng-options="key as key for (key, value) in Kategory"></select>
<select id="s2" style="width:300px;" ng-model="selectedTests" ng-change="changed123()" ng-options="var as var.name for var in CategoryTests"></select>

<br>tests:<br>
<div ng-repeat="(key, value) in Kategory">
<select id="s1" ng-model="selectedItems" ng-change="change()" ng-options="v as v.name for v in value"></select>
</div>
</div> -->

<!-- <div style="font-size:100%" ng-repeat="(key, value) in Kategory">
<div ng-repeat="v in value">
{{v.name}}
</div>   
</div>    -->


<!-- <div style="font-size:100%" ng-repeat="(key, value) in Kategory">
{{key}} :
<div ng-repeat="v in value">
{{v.name}}
</div>
<br>
</div> 	  -->  
	   
	   
<!-- 	   
	1234567:   
	<select id="s1" ng-model="selectedCategory" ng-change="change()" ng-options="key as key for (key, value) in Kategory"></select>   
	<select id="s1" ng-model="selectedItems" ng-change="change123()" ng-options="value.name as value for value in Kategory"></select>
	   
	 -->   
	  <!--  ng-options="item as item.value for item in items" -->
	   
	   
	   
	    <!-- {{value[0].name}} -->
	   
	   
	   
	    	    
    </div>
    




    
    <br><br><hr/>
    
<div ng-controller="AppTestModalCtrl">
    
    
<!-- <a class="btn btn-default" href="#AppointTests" data-toggle="modal" title="Appoint Test(s)"><i class="fa fa-plus-circle" style="color:#428BCA;" title="Appoint Test(s)"></i></a> -->
	<!-- Modal Dialog -->
	<div id="AppointTests" class="modal fade" tabindex="-1" role="dialog" hidden="true">
		<div class="modal-dialog" style="width:50%; position:fixed; top:0px; left:0px; right:0px; bottom:0px; z-index:1020;">
			<div class="modal-content" style="overflov:auto; z-index:1025;">    
            <!--<script type="text/ng-template" id="AddNewDrugModalContent"> -->
            <div class="modal-header">
		        <button type="button" class="close" ng-click="close()" data-dismiss="modal" aria-hidden="true">&times;</button>
				<div class="modal-title" style="font-size:100%;color:#428BCA;font-style:italic;">Appoint Tests</div>
            </div>
            <div class="modal-body">
					<form:form class="form-horizontal" role="form">                       
 						<div class="form-group">			
                            <table class="AppointFormTable" align="right">
	                            <tbody>
	                                <tr>
	                                    <td align="right" weight="200">ID. Treatment</td>   
	                                    <td>
	                                        <div>
	                                             <select id="s1" class="form-control" ng-model="selectedTreatment" ng-change="chooseTreatment()"
	                                                     ng-options="'('+value.id + ') -- patient: ' + value.cardRecord.card.patient.fullName + ' -- disease: ' + value.cardRecord.disease.name for value in Treatments">
	                                             </select><!-- value as value.id for value in Treatments -->
	                                        </div>	                                                                                                                                                                                   
	                                    </td>	
	                                </tr>
	                                <tr>
	                                    <td align="right">Patient</td>
	                                    <td>
	                                        <div class="col-sm-7"><input type="text" class="col-sm-5 form-control" id="name" ng-model="patient" ng-readonly="'true'"></div>
	                                    </td>	
	                                 </tr>
	                                     <td align="right">Date</td>
	                                     <td>{{Date | date:'yyyy-MM-dd'}}</td>	
	                                 </tr>
	                                 <tr>
		                                 <td align="right">Test Category</td>
		                                 <td>
		                                     <div class="col-sm-7">
		                                         <select id="{{key}}" class="col-sm-4 form-control" ng-model="selectedCategory" ng-change="change()"
		                                                 ng-options="key as key for (key, value) in Kategory"></select>
		                                     </div>
		                                  </td>
	                                 </tr>
	                                 <tr>
		                                 <td>
		                                 
		                                 		          		                                 
		                                 </td>
		                                 <td>
		                                     <div class="check-box-panel">
                                                 <div ng-repeat="test in CategoryTests">
                                                     <div class="action-checkbox">
                                                         <input id="{{test.name}}" type="checkbox" ng-model="isSelected" ng-click="selectTest(test, isSelected)"  value="{{test.name}}"/>  
                                                         <label for="{{test.name}}"></label>{{test.name}}      
                                                    </div>
                                                 </div>
                                            </div>
                                         </td>
	                                 </tr>
	                          </tbody>
                          </table>							
				    </div>
			    </form:form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" data-dismiss="modal" ng-click="appointTests()">Add</button>
                <button class="btn btn-default" data-dismiss="modal" ng-click="close()">Cancel</button>
            </div>
            <!--</script> -->
             </div>
          </div>
        </div><!-- Modal Dialog -->







    </div>
    	    
</div>





