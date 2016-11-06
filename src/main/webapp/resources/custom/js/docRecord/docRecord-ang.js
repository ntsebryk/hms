(function() {
    'use strict';

    var app = angular.module('docRecordPage',['ui.bootstrap','ngResource','ngTable','nvd3ChartDirectives']);
    
    app.controller('DoctorController',function($scope,$http,$filter,$modal, $location, ngTableParams){
        var data = [];
        var selectedCardRecords = [];
        $scope.getAllCardRecordsList = function() {
            return $http.get('/hospital/docRecord/getPage')
            .success(function(docPage){
            	$scope.user = docPage["doctor"];
            	data = docPage["patients"];
            	
                $scope.tableParams = new ngTableParams({
                    page: 1,
                    count: 5
                }, {
                    counts: [2, 5, 10, 20],
                    total: data.length,
                    getData: function($defer, params) {
                        var orderedData = params.sorting() ?
                                    $filter('orderBy')(data, params.orderBy()) :
                                    data;
                        $defer.resolve(orderedData.slice((params.page()-1) * params.count(), params.page() * params.count()));
                    }
                });
                
                /*$scope.goto_detail = function(id) {
                	//var hash = '/docRecord/' + id;
                	//console.log("function called!!!"+hash);
                	//$location.url(hash);
                	window.location.url='http://localhost:8080/hospital/docRecord/'+ id;
                };*/
            });
            
        };

        $scope.changeSelection = function(val) {
            selectedCardRecords.push(val);
        }

        $scope.getAllCardRecordsList();
        
        
        /*$scope.treatment = function(cardRecord){
        	
    		$scope.idp = cardRecord.id; 
    		console.log("function called!!!"+$scope.idp);
    		
    		 
    			console.log("function called!!!"+$scope.idp);
    			return $http.get('/hospital/docTreatments2/Id', {params: {idp: $scope.idp}});
    		
    	};*/
        
        
        
        
    });
    
    app.controller('UserController', function($scope, $http) {
        $scope.fetchUser = function() {
            $http.get('/hospital/docRecord/showMyInfo').success(function(user){
                $scope.user = user;
            });
        };
        $scope.fetchUser();
    });
    
})();