var app = angular.module('laboratory', [ 'ui.bootstrap', 'ngTable' ]);

// -----------NEW APPOINTMENTS---------------------------------------------

app.controller('NewAppCtrl', function($scope, $modal, $log, $http, $timeout) {

	$scope.countNA = 0;
	var ping = function() {
		$http.get('/hospital/getNewAppointmentsCount').success(
				function(dataResp, status) {
					$scope.countNA = dataResp;
					$timeout(ping, 10000);
				});
	}
	ping();

	$scope.openNewAppModal = function(size) {
		var modalInstance = $modal.open({
			templateUrl : 'NewApp.html',
			controller : 'ModalNewAppCtrl',
			size : size,
			resolve : {}
		});

		modalInstance.result.then(function() {
		}, function() {
			$log.info('Modal dismissed at: ' + new Date());
		});
	};
});

app.controller('ModalNewAppCtrl', function($scope, $filter, $http,
		$modalInstance, ngTableParams) {

	var data = [];

	$http.get('/hospital/getNewAppointments').success(
			function(dataResp, status) {
				data = dataResp;
				data.forEach(function(elem, index) {
					data[index].selectedLab = null;
				});
				$scope.count = data.length;
				$scope.tableNewAppParams = new ngTableParams({
					page : 1, // show first page
					count : 5
				// count per page
				}, {
					total : data.length, // length of data
					getData : function($defer, params) {
						$defer.resolve(data.slice((params.page() - 1)
								* params.count(), params.page()
								* params.count()));
					}
				});
			});
	$scope.flag = false;

	$scope.changeFlag = function() {
		$scope.flag = true;
	}

	$scope.isSelected = function() {
		return $scope.flag;
	}

	var selectedData = [];

	$scope.counter = 0;
	$scope.sendRequest = function() {
		for (var i = 0; i < data.length; i++) {
			if (data[i].selectedLab != null) {
				selectedData.push({
					"testId" : data[i].test.id,
					"labId" : data[i].selectedLab.id,
					"date" : data[i].appointmentDate
				});
			}
		}

		$http.post('/hospital/setSelectedTests', selectedData).success(
				function() {
					alert("TESTS WAS SUCCESSFULLY ADDED!!!");
				}).error(function() {
		});

		$modalInstance.dismiss('cancel');
	}

	$scope.ok = function() {
		$modalInstance.close();
	};

	$scope.cancel = function() {
		$modalInstance.dismiss('cancel');
	};
});

// ------------------PENDING TESTS-------------------------------------

app.controller('ReservedTestCtrl', function($scope, $modal, $http, $log,
		$timeout) {

	$scope.countRT = 0;
	var ping = function() {
		$http.get('/hospital/getPendingTestsCount').success(
				function(dataResp, status) {
					$scope.countRT = dataResp;
					$timeout(ping, 10000);
				});
	}
	ping();

	$scope.openReservedTestModal = function(size) {
		var modalInstance = $modal.open({
			templateUrl : 'ResTest.html',
			controller : 'ModalResTestsCtrl',
			size : size,
			resolve : {}
		});

		modalInstance.result.then(function() {
		}, function() {
			$log.info('Modal dismissed at: ' + new Date());
		});
	};
});

app.controller('ModalResTestsCtrl', function($scope, $filter, $rootScope,
		$http, $modalInstance, ngTableParams) {

	$rootScope.userId = 1;
	var userId = $rootScope.userId;

	var data = [];

	$http.get('/hospital/getPendingTests').success(
			function(dataResp, status) {
				data = dataResp;
				$scope.count = data.length;
				$scope.tableResTestsParams = new ngTableParams({
					page : 1, // show first page
					count : 5
				// count per page
				}, {
					total : data.length, // length of data
					getData : function($defer, params) {
						$defer.resolve(data.slice((params.page() - 1)
								* params.count(), params.page()
								* params.count()));
					}
				});
			});
	$scope.ok = function() {
		$modalInstance.close();
	};

	$scope.cancel = function() {
		$modalInstance.dismiss('cancel');
	};
});

// ---------------DONE TESTS--------------------------------------------

app.controller('DoneTestsCtrl',
		function($scope, $modal, $log, $http, $timeout) {

			$scope.countDT = 0;
			var ping = function() {
				$http.get('/hospital/getDoneTestsCount').success(
						function(dataResp, status) {
							$scope.countDT = dataResp;
							$timeout(ping, 10000);
						});
			}
			ping();

			$scope.openDoneTestsModal = function(size) {
				var modalInstance = $modal.open({
					templateUrl : 'DoneTests.html',
					controller : 'ModalDoneTestsCtrl',
					size : size,
					resolve : {}
				});

				modalInstance.result.then(function() {
				}, function() {
					$log.info('Modal dismissed at: ' + new Date());
				});
			};
		});

app.controller('ModalDoneTestsCtrl', function($scope, $rootScope, $http,
		$modalInstance, ngTableParams) {
	$rootScope.userId = 1;
	var userId = $rootScope.userId;

	var data = [];

	$http.get('/hospital/getDoneTests').success(
			function(dataResp, status) {
				data = dataResp;
				$scope.countDT = data.length;
				$scope.tableDoneTestsParams = new ngTableParams({
					page : 1, // show first page
					count : 5
				// count per page
				}, {
					total : data.length, // length of data
					getData : function($defer, params) {
						$defer.resolve(data.slice((params.page() - 1)
								* params.count(), params.page()
								* params.count()));
					}
				});
			});

	$scope.ok = function() {
		$modalInstance.close();
	};

	$scope.cancel = function() {
		$modalInstance.dismiss('cancel');
	};
});

// --------------FINISHED RESULT---------------------------------------

app.controller('FinisedResultsCtrl', function($scope, $modal, $log, $http,
		$timeout) {

	$scope.countFR = 0;
	var ping = function() {
		$http.get('/hospital//getFinisedResultTestsCount').success(
				function(dataResp, status) {
					$scope.countFR = dataResp;
					$timeout(ping, 10000);
				});
	}
	ping();

	$scope.openFinishedResModal = function(size) {
		var modalInstance = $modal.open({
			templateUrl : 'FinisedResults.html',
			controller : 'ModalFinisedResultsCtrl',
			size : size,
			resolve : {}
		});

		modalInstance.result.then(function() {
		}, function() {
			$log.info('Modal dismissed at: ' + new Date());
		});
	};
});

app.controller('ModalFinisedResultsCtrl', function($rootScope, $scope, $http,
		$modalInstance, ngTableParams) {
	var data = [];

	$http.get('/hospital/getFinisedResultTests').success(
			function(dataResp, status) {
				data = dataResp;
				$scope.count = data.length;
				$scope.tableFinishedResParams = new ngTableParams({
					page : 1, // show first page
					count : 5
				// count per page
				}, {
					total : data.length, // length of data
					getData : function($defer, params) {
						$defer.resolve(data.slice((params.page() - 1)
								* params.count(), params.page()
								* params.count()));
					}
				});
			});

	$scope.ok = function() {
		$modalInstance.close();
	};

	$scope.cancel = function() {
		$modalInstance.dismiss('cancel');
	};
});

// ------------------ALL TESTS------------------------------------------

app.controller('OurTests', function($scope, $rootScope, $filter, $modal, $log,
		$http, ngTableParams) {
	var data = [];
	$http.get('/hospital/getAllTests').success(
			function(dataResp, status) {
				data = dataResp;
				$scope.total = data.length;

				$scope.tableParams = new ngTableParams({
					page : 1, // show first page
					count : 10, // count per page
					filter : {
						name : '',
						description : '',
						testCategory : ''
					}
				}, {
					total : data.length, // length of data
					getData : function($defer, params) {
						// use build-in angular filter
						var orderedData = params.filter() ? $filter('filter')(
								data, params.filter()) : data;

						$scope.tests = orderedData.slice((params.page() - 1)
								* params.count(), params.page()
								* params.count());

						params.total(orderedData.length); // set total for
						// recalc pagination
						$defer.resolve($scope.tests);
					}
				});

			});
	$scope.open = function(test) {

		var modalInstance = $modal.open({
			templateUrl : 'myTests.html',
			controller : 'ModalInstanceCtrl',
			resolve : {}
		});
		$rootScope.currentTest = test;
		modalInstance.result.then(function() {
		}, function() {
			$log.info('Modal dismissed at: ' + new Date());
		});
	};

});

app.controller('ModalInstanceCtrl', function($scope, $filter, $rootScope,
		$http, $modalInstance, ngTableParams) {

	$scope.selectedTest = {
		labId : null,
	}
	var testId = $rootScope.currentTest.id;
	var labId = null;
	var data = [];

	$http.get('/hospital/getLabsForTest/' + testId).success(
			function(dataResp, status) {
				data = dataResp;
				$scope.labLength = dataResp.length;
				$scope.labTableParams = new ngTableParams({
					page : 1, // show first page
					count : 5, // count per page
					filter : {
						name : '',
						description : ''
					}
				}, {
					total : data.length, // length of data
					getData : function($defer, params) {
						// use build-in angular filter
						var orderedData = params.filter() ? $filter('filter')(
								data, params.filter()) : data;

						$scope.labs = orderedData.slice((params.page() - 1)
								* params.count(), params.page()
								* params.count());

						params.total(orderedData.length); // set total for
						// recalc pagination
						$defer.resolve($scope.labs);
					}

				});
			});

	$scope.setCheck = function(value) {
		// alert(value);
	}

	$scope.isChecked = function() {
		if ($scope.selectedTest.labId != null)
			return true;
		else
			return false;
	}

	$scope.ok = function() {

		labId = $scope.selectedTest.labId;
		$http({
			method : 'POST',
			url : '/hospital/setSelectedTest',
			data : $.param({
				testId : testId,
				labId : labId
			}),
			headers : {
				'Content-Type' : 'application/x-www-form-urlencoded'
			}
		}).success(function() {
			alert("TEST WAS SUCCESSFULLY ADDED!!!");
		}).error(function() {
		});
		$modalInstance.close();
	};

	$scope.cancel = function() {
		$modalInstance.dismiss('cancel');
	};
});
// ------------------OUR LABS--------------------------------------

app.controller('OurLabsCtrl', function($scope,$filter,$http, ngTableParams) {
	var data = [];
	$http.get('/hospital/getAllLabs').success(
			function(dataResp, status) {
				data = dataResp;
				$scope.total = data.length;

				$scope.labTableParams = new ngTableParams({
					page : 1, // show first page
					count : 10, // count per page
					filter : {
						name : '',
						description : ''
					}
				}, {
					total : data.length, // length of data
					getData : function($defer, params) {
						// use build-in angular filter
						var orderedData = params.filter() ? $filter('filter')(
								data, params.filter()) : data;

						$scope.tests = orderedData.slice((params.page() - 1)
								* params.count(), params.page()
								* params.count());

						params.total(orderedData.length); // set total for
						// recalc pagination
						$defer.resolve($scope.tests);
					}
				});

			});

});