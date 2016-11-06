(function() {
	var app = angular.module('prescription', [ 'ui.bootstrap' ]);
	
	app.controller('PrescriptionCtrl', [ '$rootScope', '$scope', '$http', function ($rootScope, $scope, $http) {
		var selectedPage = null;
		var filterByUser = null;
		var currentRole = null;
		
		$scope.filteredPrescriptions = [];
		
		$scope.maxSize = 5;
		$scope.totalPages = null;
		$scope.bigTotalItems = null;
		$scope.bigCurrentPage = null;

		var isFiltered = false;
		
		$rootScope.getIsFiltered = function() {
			return isFiltered;
		}
		
		$scope.setIsFiltered = function(filtered) {
			isFiltered = filtered;
		}
		
		var getFilteredPage = function() {
			$http.get('getFilteredPrescriptions', { params: {page : selectedPage, user: filterByUser, userRole: currentRole} }).
				success(function(response) {
					$scope.filteredPrescriptions = response.content;
					$scope.bigTotalItems = response.totalElements;
					$scope.bigCurrentPage = response.number + 1;
					$scope.totalPages = response.totalPages;
				} );
		}
		
		$rootScope.filterPrescription = function(user, role) {
			isFiltered = true;
			filterByUser = user;
			currentRole = role;
			getFilteredPage();
		}
		
		$rootScope.filterPrescriptionWithoutParameters = function() {
			getFilteredPage();
		}
		
		$scope.pageChanged = function() {
			selectedPage = $scope.bigCurrentPage - 1;
			getFilteredPage();
		};
		
	}])
	
	app.directive('filteredData', function() {
		return {
			restrict: 'E',
			templateUrl: 'resources/custom/js/pharmacist/filter-table.html',
			transclude: true,
		}
	})
	
})();