(function() {
	'use strict';
	
    var app = angular.module('docTreatmentPage', ['ui.bootstrap', 'ngResource','ngTable','nvd3ChartDirectives', 'angular-loading-bar']);
    var idCard = null;
    
    //$scope.getAllTreatments = null;
    
    app.controller('DoctorTreatment', function($scope, $http, $filter, $modal, ngTableParams) {
    	var data = [];
    	
    	$scope.getAllTreatments = function() {
            return $http.get('/hospital/docTreatments/Id')
            .success(function(treatmentMap){
                $scope.Map = treatmentMap;
            	$scope.record = treatmentMap["patient"];
            	$scope.treatment = treatmentMap["treatments"];
            	$scope.symptoms = treatmentMap["symptoms"];
            	$scope.treatmentDrug = treatmentMap["treatmentDrug"];
            	$scope.treatmentTest = treatmentMap["treatmentTest"];
            	idCard = $scope.record.id; 
            	            	
            });
            

        };
        $scope.getAllTreatments();
        
        $scope.openNewTreatment = function() {
    		    		
    		
    		$http.get('/hospital/docSetTreatment/Id', {params: {idCard: idCard}})
    		.then(function(){
    			$scope.getAllTreatments();
    			
        	});
    		
    	}
        
        $scope.closeTreatment = function(idt) {

    		$http.get('/hospital/docCloseTreatment/Id', {params: {idCard: idCard, idt: idt}})
    		.then(function(){
    			$scope.getAllTreatments();
    			
        	});
    		
    	}
        
        $scope.closeRecord = function() {
        	console.log("546546456   ");
    		$http.get('/hospital/docCloseRecord/Id', {params: {idCard: idCard}})
    		.then(function(){
    			$scope.getAllTreatments();
    			console.log("546546456   ");
        	});
    		
    	}
                
        $scope.add = function(action) {
        	console.log("---> action: " + action);
        	console.log("---> : " + JSON.stringify($scope.treatment));//$scope.treatment Map
        	
        	var modalInstance = $modal.open({
        		templateUrl: '/hospital/resources/custom/js/docRecord/addModal.html',
        		controller: 'ModalInstanceCtrl',
        		resolve: {
        			Action: function () { return action; },
        	        Treatment: function() { return $scope.treatment; }
        	
        			
        		}       		
        	});
        } 
        
    });
    
    app.controller('ModalInstanceCtrl',function($rootScope, $scope, $timeout, $log, $filter, $http, ngTableParams, $modalInstance, $window, Action, Treatment ){
    	
   	   var obj = angular.copy(Treatment);
   	   $scope.treatment2 = obj;
   	   $scope.treatmentID = obj[0].id;
   	   $scope.patient = obj[0].cardRecord.card.patient.fullName;
   	   
    	switch(Action) {
        case "Appoint":
            $scope.DrugModalTitle = "Appoint Tests";
            $scope.ActBtn = "Appoint";
            $scope.labelCategory = "Tests";
            /*$scope.editableInput = 'false';*/
            break;
        case "Prescribe":
            $scope.DrugModalTitle = "Prescribe drugs";
            $scope.ActBtn = "Prescribe";
            $scope.labelCategory = "Drugs";
            /*$scope.editableInput = 'false';*/
            break;      
        default:;  
    	}
    	

    	
    	$scope.cancel = function () {
            console.log("---> Cancel:");
 	        $modalInstance.dismiss('cancel');
    	};    	
    	
    });
    
 // -----------ADD DIAGNOSIS--------------------------------------------
    
    app.controller('AddDiagnosis', function($scope, $modal, $log, $http) {

    	$scope.openAddDiagnosisModal = function(size) {
    		var modalInstance = $modal.open({
    			templateUrl : 'AddDiagn.html',
    			controller : 'ModalAddDiagnCtrl',
    			size : size,
    			resolve : {},
    			scope: $scope
    		});
    		
    		modalInstance.result.then(function() {
    		}, function() {
    			$log.info('Modal dismissed at: ' + new Date());
    		});
    	};
    });
    
    app.controller('ModalAddDiagnCtrl', function($scope, $rootScope, $http, $filter, $modalInstance, ngTableParams) {
    	
    	var data = null;
    	
    	$http.get('/hospital/docTreatments/diseases').success(function(listDis) {
    		data = listDis;
    		$scope.data1 = data;
    		
    		$scope.tableParams = new ngTableParams({
    	        page: 1,            // show first page
    	        count: 5,          // count per page
    	        filter: {
    	            name: ''       // initial filter
    	        },
    	        sorting: {
    	            name: 'asc'     // initial sorting
    	        }
    	        
    	    }, {
    	    	counts: [5, 10, 20],
    	        total: data.length, // length of data
    	        getData: function($defer, params) {
    	            // use build-in angular filter
    	            var filteredData = params.filter() ?
    	                    $filter('filter')(data, params.filter()) :
    	                    data;
    	            var orderedData = params.sorting() ?
    	                    $filter('orderBy')(filteredData, params.orderBy()) :
    	                    data;
    	            params.total(orderedData.length); // set total for recalc pagination
    	            $defer.resolve(orderedData.slice((params.page() - 1) * params.count(), params.page() * params.count()));
    	        }
    	    });
    		
    		
    	});
    	
    	$scope.setDiagnos = function(disease) {
    		$scope.idd = disease.id;
    		
    		
    		$http.get('/hospital/docSetDisease/Id', {params: {idd: $scope.idd, idCard: idCard}})
    		.then(function(){
    			$scope.getAllTreatments();
    			console.log("222222   "+$scope.record.disease);
        	});
    		
    		
    		$modalInstance.close();
    		
    	}
    	
    	$scope.cancel = function() {
    		$modalInstance.dismiss('cancel');
    	};
    	
    	
    });
    
 // -----------ADD TREATMENT---------------------------------------------
   
    /*app.controller('addTreatment', function($scope, $modal, $log, $http) {

    	$scope.openNewTreatmentModal = function(size) {
    		var modalInstance = $modal.open({
    			templateUrl : 'AddTreat.html',
    			controller : 'ModalAddTratCtrl',
    			size : size,
    			resolve : {},
    			scope: $scope
    		});
    		
    		modalInstance.result.then(function() {
    		}, function() {
    			$log.info('Modal dismissed at: ' + new Date());
    		});
    	};
    	
    	$scope.date = new Date();
    });
    
    
    app.controller('ModalAddTratCtrl', function($scope, $rootScope, $http, $filter, $modalInstance, ngTableParams) {
    	
    	
    	
    	$scope.cancel = function() {
    		$modalInstance.dismiss('cancel');
    	};
    	
    	
    });*/
    
})();