
angular.module('DrugPageModule', ['ui.bootstrap', 'ngTable', 'angular-loading-bar']);

angular.module('DrugPageModule').controller('AddNewDrugModal', function ($scope, $modal, $http, $log, ngTableParams) {
	
    $scope.items = [{value: 10, name: '10'}, {value: 25, name: '25'}, {value: 50, name: '50'}, {value: 100, name: '100'}];
    $scope.selectedItem = $scope.items[0];
    
    checked = [];
    
	loadPage = function (pageNumber, itemsPerPage) {		
        $http.get('drugs/getpage', {params: { pageNumber : pageNumber, itemsPerPage : itemsPerPage } })
        .success(function(page) {
  	    	$scope.myTotalItems = page.totalElements;
  	    	$scope.myItemsPerPage = page.numberOfElements;
  	    	$scope.myCurrentPage = page.number + 1;
  	    	$scope.myPageSize = page.size;
  	    	$scope.drugList = page.content;
  	    	console.log("refreashed page");
    	}).error(function(data, status, headers, config) {
  	    	console.log(" cannot access to drugs/getall :-((( ");
  	    });	      
	 };
	 
	 getDrugCategories = function () {
	     $http.get('drugs/getcategories')
	        .success(function(categories) {
	        	//$scope.cat = categories;
	        	$scope.Kategory = categories;
	        	//kat = categories;       	
	    	}).error(function(data, status, headers, config) {
	  	    	//console alert(" cannot access to drugs/getall :-((( ");
	  	    });			 		 
	 };	 
	 	
    loadPage(0, 10);
    getDrugCategories();    
         
    // [10 - 25 - 50 - 100]:
    $scope.change = function() {
    	$scope.myPageSize = $scope.selectedItem.value;
    	loadPage(0, $scope.selectedItem.value);       
     };
     
   	         
  $scope.openAddNewDrugModal = function (action, obj) {
	  if (obj != null) { }
	  else { }
      var modalInstance = $modal.open({
          templateUrl: 'AddNewDrugModalContent',
          controller: 'ModalInstanceCtrl',
          resolve: {
              Categories: function () { return $scope.Kategory; },
              Action: function () { return action; },
              Obj: function () { return obj; },
              CurrentPage : function () { return $scope.myCurrentPage; },
              ItemsPerPage : function () { return $scope.myPageSize; }
         }
      });
    
    modalInstance.result.then(function (List, Categories, Action) {
      //$scope.drugList = List;
      //$scope.selected2 = Categories;
      //console.log("@#$%");
      //loadPage(3,13);
      
    });  
  };
  
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
    	 loadPage($scope.myCurrentPage-1, $scope.selectedItem.value);
         console.log('Page changed to: ' + $scope.myCurrentPage);
     };

/*    $scope.$watch('myCurrentPage', function(newPage){
   });*/    
     
/*    $scope.pageChanged = function(page) {
        $scope.callbackPage = page;
        $scope.watchPage = newPage;
      };*/
     
     
/*     $scope.choose = function() {
    	 alert("[x]");

     }*/
     
     $scope.chooseDrug = function(drug) {

         //alert("[x] - " + "drug="+JSON.stringify(drug));
         //alert(isChecked);
         checked.push(1);
         console.log(checked);
     }
     
});



angular.module('DrugPageModule').controller('ModalInstanceCtrl', function ($scope, $http, $modalInstance, Categories, Action, Obj, CurrentPage, ItemsPerPage) {//}, Drugs, Categories) {
  //$scope.drugList = Drugs; // drugs list in ng-table ng-repeat
  $scope.Kategory = Categories;
  //$scope.Action = Action;


  obj2 = angular.copy(Obj);
  var drug, action="", meth="";
  console.log("===========================================");
  console.log("Modal:");
  console.log("Obj=" + JSON.stringify(Obj));
  console.log("obj2=" + JSON.stringify(obj2));  
  console.log("drug="+JSON.stringify($scope.drug));
  
  addDrug = function () {
  	  
  };
  
  editDrug = function () {

  };
  
  switch (Action) {
      case "Add":
          $scope.DrugModalTitle = "Add new drug";
          $scope.ActBtn = "Add";
          $scope.editableInput = 'false';
          action = "add";
          meth = "POST";
          break;
      case "Edit":  
          $scope.DrugModalTitle = "Edit drug";
          $scope.ActBtn = "Edit";
          $scope.editableInput = 'false'; 
          $scope.drug = obj2;        
/*          $scope.drug.name = Obj.name;
          $scope.drug.drugCategory = Obj.drugCategory;
          $scope.drug.hazardRatio = Obj.hazardRatio;
          $scope.drug.dosage = Obj.dosage;
          $scope.drug.description = Obj.description; */       
          action = "update";
          meth = "PUT";          
          break;
      case "View":
          $scope.DrugModalTitle = "View";
          $scope.ActBtn = "Ok";
          $scope.editableInput = 'true';            
          $scope.drug = Obj;
          break;
      default:;     
    } 
   
    $scope.addNewDrug = function () {  	
    	$http({
    	    url: 'drugs/' + action,
    	    method: meth,
    	    data: { "id" : $scope.drug.id,
    	    	    "name" : $scope.drug.name,
    	    	    "drugCategory" : $scope.drug.drugCategory,
	    	        "hazardRatio" : $scope.drug.hazardRatio,
	    	        "dosage" : $scope.drug.dosage,
	    	        "description" : $scope.drug.description } 
    	}).success(function(data, status, headers, config) {
    		console.log("msg : "+data.msg);
    		console.log("request " + 'drugs/' + action + "." + meth + " sent successfully :)");
    		loadPage(CurrentPage-1, ItemsPerPage);
    	}).error(function(data, status, headers, config) {
    		console.log("request " + 'drugs/' + action + "." + meth + " failed :(");
    	});
    	
/*        $http.post('drugs/add', $scope.drug )
	    .success(function(data, status, headers, config) {
	      })
	    .error(function(data, status, headers, config) {
	    	  alert(data.toString());
	      });*/

    	console.log("\nAdd:");
    	console.log("Obj="+JSON.stringify(Obj));
    	console.log("obj2="+JSON.stringify(obj2));
	    console.log("drug="+JSON.stringify($scope.drug));  
	    	    
	  //$scope.drugList=Drugs;
	  //populateDrugsTable('add');
      $modalInstance.close();//$scope.drugList, $scope.tableParams);
  };

  $scope.cancel = function () {
	  console.log("\nCancel:");
  	  console.log("Obj="+JSON.stringify(Obj));
	  console.log("obj2="+JSON.stringify(obj2));
      console.log("drug="+JSON.stringify($scope.drug));  
	  	    
	  if(Action=="Edit") { $scope.drug = Obj; console.log("\t$scope.drug="+JSON.stringify($scope.drug)); }
      $modalInstance.dismiss('cancel');
  };
});



















//=============================================================================================================

/*(function() {
app = angular.module('DrugPageModule', ['ui.bootstrap', 'ngTable', 'angular-loading-bar']);

app.module('DrugPageModule').controller('AddNewDrugModal', function ($scope, $modal, $log, ngTableParams) {

	items111 = ['DrugQ', 'DrugW', 'DrugE', 'DrugR', 'DrugT', 'DrugY'];
	items222 = ['cAtEgOrY','cat1', 'cat2', 'cat3'];

	populateDrugsTable = function (str) { 
	    $scope.drugList = items111;
	 };

    populateDrugsTable('0');    
	    
    $scope.openAddNewDrugModal = function () {
        var modalInstance = $modal.open({
            templateUrl: 'AddNewDrugModalContent',
            controller: 'ModalInstanceCtrl',
            resolve: {
                Drugs: function () { return items111; },
                Categories: function () { return items222; }      
            }
         });

         modalInstance.result.then(function (List, Categories) {
             $scope.drugList = List;
             $scope.selected2 = Categories;
         });  
     }; 
});

app.module('DrugPageModule').controller('ModalInstanceCtrl', function ($scope, $modalInstance, Drugs, Categories) {

    $scope.drugList = Drugs; // drugs list in ng-table ng-repeat
    $scope.selected2 = Categories;

    $scope.addNewDrug = function () {
	    Drugs[Drugs.length] = Math.random();
	    $scope.drugList = Drugs;
	    populateDrugsTable('add');
        $modalInstance.close($scope.drugList);
    };

    $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
    };
});

})();
*/