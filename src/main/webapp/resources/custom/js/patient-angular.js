(function(){
	var app = angular.module('patient', ['ui.bootstrap', 'ngTable']);
	
	app.controller('UserControl', function($scope, $http){		
		$http.get('/hospital/patient/user').success(function(data){
			$scope.user = data;
		});
	});

	app.controller('CardRecordController', function($scope, $modal, $http, ngTableParams){
		var data = [];
		$http.get('/hospital/patient/cardrecord').success(function(response){
			$scope.listCardRecord = response;
			data = response;
//			alert("cardRecord "+$scope.listCardRecord);
			$scope.tableParams = new ngTableParams({
				page : 1, // show first page
				count : 10, // count per page
			}, {
				total : data.length, // length of data
				getData : function($defer, params) {					
			        $defer.resolve(data.slice((params.page() - 1) * params.count(), params.page() * params.count()));
			        params.total(data.length);
				}
			})
		});
		$scope.openmodalcardrecord = function(cardrecord) {
			var modalInstance = $modal.open({
				templateUrl: 'modalCardRec.html',
				controller: 'ModalCardRecCtrl',
				resolve: {
					cardRecord: function () {
						return cardrecord;
					}
				}
			});
		}
	});
	
	app.controller('ModalCardRecCtrl', function($scope, $modalInstance, $http, cardRecord, ngTableParams) {
		$scope.cardr = cardRecord;
		$http.post('/hospital/patient/getcardrecordsym', cardRecord.id).success(function(data){
			$scope.listSymptomsByCardRec = data;
		})
		$scope.ok = function () {
		    $modalInstance.close();
		};
	});
	
	app.controller('TreatmentController', function($scope, $http, $modal, ngTableParams){
		var data = [];
		$http.get('/hospital/patient/treatment').success(function(response){
			$scope.listTreatment = response;
			data = response;
			$scope.tableTrParams = new ngTableParams({
				page : 1, // show first page
				count : 10, // count per page
			}, {
				total : data.length, // length of data
				getData : function($defer, params) {					
			        $defer.resolve(data.slice((params.page() - 1) * params.count(), params.page() * params.count()));
			        params.total(data.length);
				}
			})
//			alert("treatment " + $scope.listTreatment);
		});
		
		$scope.opentreatmentdesc = function(treatment) {
			var modalInstance = $modal.open({				
				templateUrl: 'modalTreatment.html',
				controller: 'ModalTreatmentCtrl',
				resolve: {
					treat: function() {
						return treatment;
					}
				}
			});
		};
	});	
	
	app.controller('ModalTreatmentCtrl', function($scope, $modalInstance, $http, treat, ngTableParams) {
		$scope.treatment = treat;
		
		$http.post('/hospital/patient/gettreatmentdrugs', treat.id).success(function(data){
			$scope.listTreatmentDrug = data;
		})
		
		$scope.ok = function () {
		    $modalInstance.close();
		};
	});
	

})();
