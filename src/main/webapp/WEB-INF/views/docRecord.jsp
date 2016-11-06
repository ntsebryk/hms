<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="<c:url value="/resources/custom/js/docRecord/docRecord-ang.js"/>"></script>

<script src="<c:url value="/resources/custom/js/docRecord/angularjs-nvd3-directives.js"/>"></script>

<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/custom/js/docRecord/resource.js"/>"></script>

<link rel="stylesheet" href="<c:url value="/resources/custom/css/docRecord/division.css"/>">

<div ng-app="docRecordPage" ng-controller="DoctorController as docContr">
    
    
    <div>
        <div class="panel-body"> Doctor:   {{user.fullName}} </div>  
    </div> 
    
    
    <h1 style="color: #428BCA; margin-left: 20px;">
		<i class="fa fa-wheelchair fa-fw"></i> Patients
	</h1>
	
	<!-- <p><strong>Filter:</strong> {{tableParams.filter()|json}}  -->
	
	<!-- <div class="form-group col-lg-3">
		<form class="navbar-form navbar-left" role="search">
			<div class="btn-group">
				<input ng-model="asyncSelected" type="text" class="form-control" placeholder="Search" 
				    typeahead="cardRecord.card.patient.fullName for symptom in findPatientsByMatch($viewValue)" style="width: 200px;"
					typeahead-wait-ms="500" typeahead-on-select="selectSearch($item, $model, $label)">
			</div>
		</form>
	</div> -->
	
	<div class="panel-body">
        <table ng-table="tableParams" template-pagination="custom/pager"  class="table ng-table-rowselected">
            <thead>
                <th class="sortable col-sm-3"
                    ng-class="{
                        'sort-asc': tableParams.isSortBy('card.patient.fullName', 'asc'),
                        'sort-desc': tableParams.isSortBy('card.patient.fullName', 'desc')
                        }"
                    ng-click="tableParams.sorting({'card.patient.fullName' : tableParams.isSortBy('card.patient.fullName', 'asc') ? 'desc' : 'asc'})">
                    <div><i class="fa fa-wheelchair fa-fw text-info"></i> Patient</th></div>
                <th class="sortable col-sm-3"
                    ng-class="{
                        'sort-asc': tableParams.isSortBy('disease.name', 'asc'),
                        'sort-desc': tableParams.isSortBy('disease.name', 'desc')
                        }"
                    ng-click="tableParams.sorting({'disease.name' : tableParams.isSortBy('disease.name', 'asc') ? 'desc' : 'asc'})">
                    <div><i class="fa fa-eyedropper fa-fw  text-info"></i> Disease</th></div>
                <th class="sortable col-sm-4"
                    ng-class="{
                        'sort-asc': tableParams.isSortBy('startDate', 'asc'),
                        'sort-desc': tableParams.isSortBy('startDate', 'desc')
                        }"
                    ng-click="tableParams.sorting({'startDate' : tableParams.isSortBy('startDate', 'asc') ? 'desc' : 'asc'})">
                    <div><i class="fa fa-calendar fa-fw text-info"></i> Start Date </th></div>
                <th class="sortable col-sm-2"
                    ng-class="{
                        'sort-asc': tableParams.isSortBy('endDate', 'asc'),
                        'sort-desc': tableParams.isSortBy('endDate', 'desc')
                        }"
                    ng-click="tableParams.sorting({'endDate' : tableParams.isSortBy('endDate', 'asc') ? 'desc' : 'asc'})">
                    <div><i class="fa fa-calendar fa-fw text-info"></i> End Date</th></div>
                <th>Details</th>
            </thead>
            <tbody>
                
                <tr ng-repeat="cardRecord in $data"
                                        
                    data-ng-click="goto_detail(cardRecord.id)"
                    
                    bgcolor="{{cardRecord.endDate === null ?
						     (cardRecord.disease === null ? '#FFA500' : '#FFEC8B') :
						     (cardRecord.disease === null ? '#FFA500' : '#FFFFFF')}}">
					
                    <td data-title="'Patient'" sortable="'card.patient.fullName'" filter="{ 'card.patient.fullName': 'text' }">
                        {{cardRecord.card.patient.fullName}}
                    </td>
                    <td data-title="'Disease'" sortable="'disease.name'">
                        {{cardRecord.disease.name}}
                    </td>
                    <td data-title="'Disease'" sortable="'startDate'">
                        {{cardRecord.startDate}}
                    </td>
                    <td data-title="'Disease'" sortable="'endDate'">
                        {{cardRecord.endDate}}
                    </td>
                    <td>
 						<!--<a href="{{cardRecord.id}}" ng-click="treatment(cardRecord)" > 
 							<i class="fa fa-pencil-square-o"></i> 
						</a> -->
						
						<a href="docRecord/{{cardRecord.id}}" > 
 							<i class="fa fa-pencil-square-o"></i> 
						</a>
							<!-- <span class="fa fa-pencil-square-o" ng-click="treatment(cardRecord)"></span>  -->
					</td>
                    
                </tr>
            </tbody>
        </table>
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