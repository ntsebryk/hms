(function() {
	var app = angular.module('pharmacist', [ 'ui.bootstrap', 'prescription' ]);
	
	app.controller('PharmacistCtrl', [ '$rootScope', '$scope', '$http', function ($rootScope, $scope, $http) {
		var pstate = 'NEW';

		var selectedPage = null;
		$scope.prescriptions = [];
		
		$scope.maxSize = 5;
		$scope.totalPages = null;
		$scope.bigTotalItems = null;
		$scope.bigCurrentPage = null;

		var getPage = function() {
			$http.get('getPageOfPrescriptions', {params: {page : selectedPage, prescriptionState: pstate}}).
				success(function(response) {
					$scope.prescriptions = response.content;
					$scope.bigTotalItems = response.totalElements;
					$scope.bigCurrentPage = response.number + 1;
					$scope.totalPages = response.totalPages;
				});
		}
		
		getPage();

		// Use this function to refresh page from outter scope
		$rootScope.refreshPage = function(state, page) {
			pstate = state;
			selectedPage = page;
			getPage();
		}
		
		$rootScope.refreshPagenWithoutParameters = function() {
			getPage();
		}
		
		$scope.pageChanged = function() {
			selectedPage = $scope.bigCurrentPage - 1;
			getPage();
		};
		
		$scope.filterPresc = function(user, role) {
			$rootScope.filterPrescription(user, role);
		}
		
	}]);
		
	app.controller('TypeaheadCtrl', ['$rootScope', '$scope', '$http', function($rootScope, $scope, $http) {
		
		$scope.asyncSelectedPatient = null;
		$scope.asyncSelectedDoctor = null;
		
		$scope.listOfUsersByRole = [];
		$scope.patientRole = "ROLE_PATIENT";
		$scope.doctorRole = "ROLE_DOCTOR";
		
		var currentRole = null;
		
		$scope.getUserByRole = function(user, userRole) {
			userRole == $scope.patientRole ? $scope.asyncSelectedDoctor = null : $scope.asyncSelectedPatient = null;
		    return $http.get('getUsersByRole', { params: {user: user, userRole: userRole} }).
		    	then(function(response){
		    		currentRole = userRole;
		    		return $scope.listOfUsersByRole = response.data.content;
		    	});
		};

		$scope.onSelect = function(user) {
			$rootScope.filterPrescription(user, currentRole);
		};
		
		$scope.clear = function() {
			$scope.asyncSelectedPatient = null;
			$scope.asyncSelectedDoctor = null;
			$rootScope.getCurrentTab == 1 ? $rootScope.refreshPage('NEW', null) : $rootScope.refreshPage('DELIVERED', null);
		};
		
	} ]);
	
	app.controller('TabsPrescriptionStateCtrl', ['$rootScope', '$scope', function($rootScope, $scope) {
		$scope.newPrescriptions = function() {
			$rootScope.refreshPage('NEW', null);
		}
		
		$scope.deliveredPrescriptions = function() {
			$rootScope.refreshPage('DELIVERED', null);
		}
		
		var tab = 1;
		
		$rootScope.getCurrentTab = function() {
			return tab;
		}
		
		$scope.selectTab = function(setTab) {
			tab = setTab;
		}
		
		$scope.isSelected = function(checkTab) {
			return tab === checkTab;
		}
		
	} ]);
	
	app.controller('ModalForPrescription', ['$scope', '$modal', '$log', function($scope, $modal, $log) {
		
		$scope.open = function (size, prescriptionId, treatmentId, patientName) {
		    var modalInstance = $modal.open({
		      templateUrl: 'resources/custom/js/pharmacist/prescription-modal.html',
		      controller: 'ModalWindow',
		      size: size,
		      keyboard: true,
		      windowClass: 'custom-modal-width',
		      resolve: {
		    	  selectedPrescriptionId: function() {return prescriptionId},
		    	  matchingTreatmentId: function() {return treatmentId},
		    	  selectedPatientName: function() {return patientName},
		    	  }
		    });
		    
		    modalInstance.result.then(function (success) {
		    	$scope.success();
		      }, function (error) {
		    	$log.info(error);
		      });
		};
		
		$scope.success = function () {
			var modalSuccess = $modal.open({
			      templateUrl: 'resources/custom/js/pharmacist/giveout-success.html',
			      controller: 'ModalSuccess',
			      size: 'sm',
			      keyboard: true,
			      windowClass: 'custom-modal-background'
			    });
			
			modalSuccess.result.then(function (success) {}, function (error) {$log.info('Second modal DON\'T work !!!')});
		}
	} ]);
	
	app.controller('ModalWindow', ['$rootScope', '$scope', '$modalInstance', '$http', 'selectedPrescriptionId', 'matchingTreatmentId', 'selectedPatientName',
	                               function ($rootScope, $scope, $modalInstance, $http, selectedPrescriptionId, matchingTreatmentId, selectedPatientName) {
		
		$scope.patientName = selectedPatientName;		// Patient name in selected prescription
		$scope.checkAll = false;						// Checkbox in table header disabled by default
		$scope.allowToGiveOut = true;					// "Give Out" button disabled by default
		$scope.drugs = [];
		var countSelected = 0;
		var unGivedOutDrugs = 0;						// Quantity of unselected drugs
		
		// Get list of drugs for selected prescription
		$scope.getListOfDrugs = function() {
			$http.get('drugsOfPrescription', {params: {treatmentId : matchingTreatmentId}}).
				success(function(response) {
					$scope.drugs = response;
					countDrugSize();
				});
		}

		$scope.getListOfDrugs();
		
		// Count quantity of unselected drugs
		var countDrugSize = function() {
			angular.forEach($scope.drugs, function(drug) {
				if(drug.checkOutDate == null) {
					unGivedOutDrugs++;
				}
			})
		}
		
		// Select/unselect all checkboxes with condition to enable/disable "Give Out" button
		$scope.checkItAll = function(value) {
			angular.forEach($scope.drugs, function(drug) {
				if(value == true && drug.checkOutDate == null) {
					drug.drugState = "GIVEDOUT";
					countSelected++;
					$scope.allowToGiveOut = false;
				}
				
				if(value == false && drug.checkOutDate == null) {
					drug.drugState = null;
					countSelected = 0;
					$scope.allowToGiveOut = true;
				}
			})
		}
		
		// Select/unselect checkboxes with condition to enable/disable "Give Out" button
		$scope.activateButton = function (value) {
			if(value == "GIVEDOUT") {
				countSelected = countSelected + 1;
				$scope.allowToGiveOut = false;
				if(countSelected == unGivedOutDrugs) {
					$scope.checkAll = true;
				}
			} else {
				countSelected = countSelected - 1;
				$scope.checkAll = false;
				if(countSelected == 0) {
					$scope.allowToGiveOut = true;
				}
			}
		}
		
		// Action when clicking "Give Out" button
		$scope.ok = function () {
			var selectedDrugs = [];
			
			angular.forEach($scope.drugs, function(drug) {
				if(drug.drugState == "GIVEDOUT" && drug.checkOutDate == null) {
					selectedDrugs.push(drug.drug.id);
				}
			});
			
			var putObject = {
								prescriptionId: selectedPrescriptionId,
								treatmentId: matchingTreatmentId,
								listDrugs: selectedDrugs,
							}
					
			
			$http.put('giveOutPrescription', putObject). 
				success(function(data, status, headers, config) {
					$modalInstance.close(data);
					$rootScope.filterPrescriptionWithoutParameters();
					$rootScope.refreshPagenWithoutParameters();
				}).
				error(function(data, status, headers, config) {
					$modalInstance.dismiss('Error on server');
				})
		};

		// Action when clicking "Cancel" button
		$scope.cancel = function () {
			$modalInstance.dismiss('Close modal');
		}
	  
	} ]);
	
	app.controller('ModalSuccess', ['$scope', '$modalInstance', function($scope, $modalInstance) {
		$scope.closeNotification = function () {
			$modalInstance.close();
		}
	}])

})();