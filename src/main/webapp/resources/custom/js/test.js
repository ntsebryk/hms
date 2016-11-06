angular.module('TestPageModule', ['ui.bootstrap', 'ngTable', 'angular-loading-bar']);

angular.module('TestPageModule').controller('TestPageCtrl', function ($scope, $modal, $http, $log, ngTableParams) {
	
    $scope.itemsList = [5, 10, 25, 50, 100];
    $scope.selectedItems = $scope.itemsList[0];	
    $scope.CategoryTests = [];
	
	loadPage = function (pageNumber, itemsPerPage) {
        $http.get('tests/getpage', {params: { pageNumber : pageNumber, itemsPerPage : itemsPerPage } })
        .success(function(page) {
  	        $scope.myTotalItems = page.totalElements;
  	    	$scope.myItemsPerPage = page.numberOfElements;
  	    	$scope.myCurrentPage = page.number + 1;
  	    	$scope.myPageSize = page.size;
  	    	$scope.testsList = page.content;
  	    	console.log("refreashed page");
    	}).error(function(data, status, headers, config) {
  	    	console.log(" cannot access to tests/getall :-((( ");
  	    });	      
	 };
	 
	 // [10 - 25 - 50 - 100]:
	 $scope.change = function() {
	    	//$scope.myPageSize = $scope.selectedItems.value;
	    	loadPage(0, $scope.selectedItems);       
	 };	 
	 
	 loadPage(0,$scope.selectedItems);
	
	    // Pagination config.:
	    //$scope.myCurrentPage = ;
	    //$scope.myTotalItems = ;
	    //$scope.myItemsPerPage = ;
	    $scope.myMaxSize = 5;
	    $scope.myPreviousText = "<";
	    $scope.myNextText =">";
	    $scope.myFirstText="<<"
	    $scope.myLastText=">>"; 

	    // go to page:
	    $scope.changed = function() {
	    	 loadPage($scope.myCurrentPage-1, $scope.selectedItems);
	         console.log('Page changed to: ' + $scope.myCurrentPage);
	     };	
	     
	     
	     
	     
/*		var CategoryTests;
		
		loadTestsCategories = function() {
	        $http.get('tests/getcategories3')
	        .success(function(data) {
	        	console.log(":)");
	        	console.log("data="+JSON.stringify(data));
	        	CategoryTests = data;
	        	$scope.Kategory = CategoryTests;
	    	}).error(function(data, status, headers, config) {
	  	    	console.log(" cannot access to tests/getcategories3 :-((( ");
	  	    });			
		};
		
		  $scope.setTreatment = function (id) {
			  console.log(JSON.stringify(id));
			  
		        $http.get('tests/gettreatment', { params : {'id' : id} })
		        .success(function(Treatment) {
		        	console.log(":)");
		        	console.log("data="+JSON.stringify(Treatment));
		        	$scope.patient = Treatment.cardRecord.card.patient.fullName;
		    	}).error(function(data, status, headers, config) {
		  	    	console.log(" cannot access to tests/gettreatment :-((( ");
		  	    });		  		  
		  };
		  
		  loadTestsCategories();
	     
		    $scope.change = function() {
		    	$scope.CategoryTests = $scope.Kategory[$scope.selectedCategory];
		    	console.log(JSON.stringify($scope.selectedCategory) + " : " +  JSON.stringify($scope.CategoryTests));   
		     };	
		     
		     $scope.selectedTests = function() {
		    	 console.log(" Test : " + $scope.selectedTest.name + "  // " + JSON.stringify($scope.selectedCategory));
		     }
		     
*/		     
	     
	     
	     
	     
});


//=========================================================================================================

angular.module('TestPageModule').controller('AppTestModalCtrl', function ($scope, $modal, $http, $log) {	
		
	$scope.Date = new Date();
	var CategoryTests;
	var appTests = [];
	var obj2 = {'id' : '', 'name' : '', 'testCategory' : '', 'description' : '', 'enabled' : ''};
		
	
    loadTestsCategories = function() {
	     $http.get('tests/getcategories')
	     .success(function(data) {
	        	CategoryTests = data;
	        	$scope.Kategory = CategoryTests;
	      }).error(function(data, status, headers, config) {
	  	    	console.log(" cannot access to tests/getcategories :-((( ");
	  	  });			
   };	
	
	$scope.getTreatments = function() {
        $http.get('tests/gettreatments')
		.success(function(list) {
			$scope.Treatments = list;
	    }).error(function(data, status, headers, config) {
	    	console.log(" couldn't access to tests/gettreatments :-((( ");	    	  
	    })
	};
	
	$scope.appointTests = function() {
		console.log("selected treatment: " + JSON.stringify($scope.selectedTreatment.id));
		$http.post("tests/appoint/" + JSON.stringify($scope.selectedTreatment.id), appTests)
		.success(function(data, status, headers, config) {
			console.log("connected to tests/appoint :)" + data.msg);
			$scope.close();
		}).error(function(data, status, headers, config) {
	    	console.log(" couldn't access to tests/appoint :-((( ");	    	  
	    });
		
		$scope.close();
	};
		  	     
	$scope.change = function() {
        $scope.CategoryTests = $scope.Kategory[$scope.selectedCategory];
		console.log(JSON.stringify($scope.selectedCategory) + " : " +  JSON.stringify($scope.CategoryTests));   
    };	
		     
    $scope.selectTest = function(test, isSelected) {
    	var obj = {'id' : '', 'name' : '', 'testCategory' : '', 'description' : '', 'enabled' : ''};
    	
    	obj.id = test.id;
    	obj.name = test.name;
    	obj.testCategory = test.testCategory;
    	obj.description = test.description;
    	obj.enabled = test.enabled;
    	appTests.push(obj);

    	console.log("click on  " + JSON.stringify(test));
    	console.log("     obj: " + JSON.stringify(obj));
    	console.log("appTests is a" + typeof appTests);
    	console.log("appTests: " + JSON.stringify(appTests));
	}
       
    $scope.chooseTreatment = function() {
    	$scope.patient = $scope.selectedTreatment.cardRecord.card.patient.fullName;
    }    
		     
    loadTestsCategories();
	$scope.getTreatments();		     

	
	
    $scope.close = function() {
    	$scope.patient = null;
    	$scope.selectedTreatment = '';
    	$scope.selectedCategory = '';
    	appTests = [];
    }	
	

	/*
    $scope.setTreatment = function (id) {
			  //console.log(JSON.stringify(id));			  
		        $http.get('tests/gettreatment', { params : {'id' : id} })
		        .success(function(Treatment) {
		        	console.log(":)");
		        	//console.log("data="+JSON.stringify(Treatment));
		        	$scope.patient = Treatment.cardRecord.card.patient.fullName;
		    	}).error(function(data, status, headers, config) {
		  	    	console.log(" cannot access to tests/gettreatment :-((( ");
		  	    });		  		  
	}; 
	 */
	
	
	
	
	
/*
  $scope.setTreatment = function (id) {
    console.log(JSON.stringify(id));		  
    $http.get('tests/gettreatment', { params : {'id' : id} })
    .success(function(Treatment) {
        	console.log(":)");
        	//console.log("Treatment="+JSON.stringify(Treatment));
        	$scope.patient = Treatment.cardRecord.card.patient.fullName;
        	$scope.getTreatments();
     }).error(function(data, status, headers, config) {
  	    	console.log(" cannot access to tests/gettreatment :-((( ");
  	 }); 	 		  		  
  };
*/	     
	  
	  	
});