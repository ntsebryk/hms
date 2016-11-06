(function(){
	var app = angular.module('serverProp', [])
	.controller('ServerPath', function($scope, $http){
		$scope.path;
		$http.get('/hospital/getPath')
		.success(function(data){
			$scope.path = data.path;
		})
	})
})()
