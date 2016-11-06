(function() {
var app = angular.module('symptomsPage', ['ui.bootstrap', 'angularFileUpload']);
app.factory ('tableFactory', function(){
	
})
app.controller('SymptomCtrl', function($scope, $http){
	$scope.currentPage = 1;
	$scope.itemsPerPage = 10;
	$scope.isSorted = true;
	$scope.order = "asc";
	$scope.search = null;
	$scope.deleteListIds = [];
    $scope.deleteListSymptoms = [];
    
	$scope.uncheck = function(data){
    	$('#' + data).prop('checked', false);
    }
    
    $scope.check = function(symptoms){
    	for(i = 0; i < symptoms.length; i++){
    		$('#' + symptoms[i].id).prop('checked', true);
    	}
    }
    
    
	$scope.getAll = function(){
		$http.get('/hospital/symptoms/getSymptoms', {params: 
		{page: $scope.currentPage, rows: $scope.itemsPerPage, isSorted: $scope.isSorted, sort: $scope.order, search: $scope.search}})
		.then(function(response){
			$scope.numberOfElements = response.data.numberOfElements;
			$scope.pageContent = response.data.content;
			$scope.totalItems = response.data.totalElements;
		});
	};
	
	$scope.getAll();
	
	$scope.setPage = function (pageNo) {
	    $scope.currentPage = pageNo;
	};
	  
	$scope.pageChanged = function(){
		$scope.getAll();
	}
	
	$scope.getBodyParts = function(){
		$http.get('/hospital/symptoms/getBodyParts')
		.then(function(response){
		$scope.bodyParts = response.data;
	});
	}
	
	$scope.getBodyParts();
	
	$scope.rowsPicker = function(value){
		$scope.itemsPerPage = value;
		$scope.getAll();
	}
	
	$scope.findSymptomsByMatch = function(viewValue){
		$scope.search = viewValue;
		return $http.get('/hospital/symptoms/filter', {params: 
		{page: $scope.currentPage, rows: $scope.itemsPerPage, isSorted: $scope.isSorted, sort: $scope.order, search: $scope.search}})
		.then(function(response){
			$scope.pageContent = response.data.page.content;
			$scope.totalItems = response.data.totalElements;
			return response.data.matched;
		});
	}
	
	$scope.selectSearch = function($item, $model, $label){
		$scope.$item = $item;
	    $scope.$model = $model;
	    $scope.$label = $label;
		$scope.search = $item.name;
		$scope.getAll();
	}
	
	$scope.$watch('asyncSelected', function(newValue){
		if(newValue === ""){
			$scope.search = null;
			$scope.getAll();
		}
	})
	
	$scope.changeOrderAsc = function(){
		$scope.order = "asc";
		$scope.getAll();
	}
	
	$scope.changeOrderDesc = function(){
		$scope.order = "desc";
		$scope.getAll();
	}
	
	$scope.fillForm = function(symptom){
		$scope.nameForEdit = symptom.name;
		$scope.descriptionForEdit = symptom.description;
		$scope.bodyPartForEdit = symptom.bodyPart;
		$scope.oldName = symptom.name;
	}

	$scope.update = function(){
		$http.put('/hospital/symptoms/editSymptom', 
				{oldName: $scope.oldName, newDescription: $scope.descriptionForEdit, newName: $scope.nameForEdit, newBodyPart: $scope.bodyPartForEdit})
			.success(function(data){
			$scope.getAll();
		});
	}
	
	$scope.add = function(symptom) {
    	$http.post('/hospital/symptoms/addSymptom', symptom)
    	.success(function(data){
			symptom.name = "";
			symptom.description = "";
			$scope.getAll();
    	});
    };
    
    
    
    $scope.addForDelete = function(symptom, checked){
    	if(checked === true){
    		$scope.deleteListIds.push(symptom.id);
    		$scope.deleteListSymptoms.push(symptom)
    		}
    	else {
    		var index = $scope.deleteListIds.indexOf(symptom.id);
    		$scope.deleteListIds.splice(index, 1);
    		$scope.deleteListSymptoms.splice(index, 1);
    	}
    }
    
    $scope.removeFromDeleteList = function(symptom){
    	var index = $scope.deleteListIds.indexOf(symptom.id);
		$scope.deleteListIds.splice(index, 1);
		$scope.deleteListSymptoms.splice(index, 1);
		$scope.uncheck(symptom.id);
    }
    
    $scope.deleteCheked = function(){
    	$http.delete('/hospital/symptoms/deleteCheked',{params: {array: $scope.deleteListIds}}).
    	success(function(response){
    		$scope.getAll();
    		$scope.deleteListIds = [];
    		$scope.deleteListSymptoms = [];
    	})
    }
    
})

app.controller('AppController', function($scope, FileUploader) {
    $scope.uploader = new FileUploader({url: "/hospital/uploadImage", removeAfterUpload: true, isHTML5 : true, formData: [{folder: "users", id: 255}]});
    var uploader = $scope.uploader;
    uploader.onProgressItem = function(fileItem, progress) {
        console.info('onProgressItem', fileItem, progress);
        
    };
    uploader.onCompleteItem = function(fileItem, response, status, headers) {
        console.info('onCompleteItem', fileItem, response, status, headers);
    };
});

})();