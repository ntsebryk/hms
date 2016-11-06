angular.module('doctorMain', []).controller('docMainCtrl', function($scope, $http) {
    $scope.today = function() {
	$scope.dt = new Date();
    };

    $scope.today();

    $scope.clear = function() {
	$scope.dt = null;
    };

    $scope.disabled = function(date, mode) {
	return (mode === 'day' && (date.getDay() === 0 || date.getDay() === 6));
    };

    $scope.toggleMin = function() {
	$scope.minDate = $scope.minDate ? null : new Date();
    };
    $scope.toggleMin();

    $scope.open = function($event) {
	$event.preventDefault();
	$event.stopPropagation();
    }

    $scope.opened = true;

    $scope.dateOptions = {
	formatYear : 'yy',
	startingDay : 1
    };

    $scope.formats = [ 'dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate' ];
    $scope.format = $scope.formats[0];
    
    $scope.sendDate = function(){
    	console.log("!!!!")
    	$http.post("/hospital/symptoms/dateTest", $scope.dt)
    	.then(function(response){
    		console.log($scope.dt);
    	})
    }
});