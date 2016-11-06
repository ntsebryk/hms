
	var app = angular.module('patientsymptoms', ['ui.bootstrap', 'ngTable']);
	
	app.controller('DiseaseController', function($scope, $http, $modal, $rootScope){
		
		$scope.allsymptoms = [];
        $rootScope.disease = {};
		
		$scope.getdiseasec = function(){
		$scope.mapDisease = [];	
		if ($rootScope.symptomsname.length!=0) {
			$http.get("/hospital/patientsymptoms/getdisease", {params:{"listArray": $rootScope.symptomsname}}).success(function(response){	
				$scope.mapDisease = response;
	//			angular.forEach(response.data, function(value){
	//				alert(value);
	//				this.push(
	//					{
	//						disease : value[0],
	//						key		: value[1]
	//					}
	//				)
	//			}, $scope.mapDisease);
			});
		};
		};
		
		$scope.putsymptoms = function(){
			if ($rootScope.symptomsname.length!=0) {
				$http.get("/hospital/patientsymptoms/getsymptoms", {params:{"listArray": $rootScope.symptomsname}}).success(function(){});
			}
			$scope.symptoms = [];
			$rootScope.symptomsname = [];
			$scope.getdiseasec();
		}		
		
		$scope.symptoms = [];
		$rootScope.symptomsname = [];
		
		$scope.addsymptom = function() {
			if ($scope.ngModel!=undefined&&$scope.ngModel!=null){
				var flag = false;
				for(var i = 0;i < $rootScope.symptomsname.length; i++) {
					if ($rootScope.symptomsname[i] == $scope.ngModel.name) {
						var flag = true;
					}
				}
				if (flag==false) {
					$scope.symptoms.push($scope.ngModel);
					$rootScope.symptomsname.push($scope.ngModel.name);
					$scope.getdiseasec();
				}	else {alert("This symptom was already chose!")};
			}
		};
		
		$scope.allsymptomsc = function() {
			$scope.allsymptomsfromresponse = [];
			$http.get("/hospital/patientsymptoms/symptoms").success(function(response) {
				$scope.allsymptomsfromresponse = response;
				$scope.allsymptoms = response;
			})
		};
		
		$scope.allsymptomsc();
	
		$scope.bodypartc = function(){
			$http.get("/hospital/patientsymptoms/bodyparts").success(function(response) {
				$scope.bodyparts = response;
			});
		};
		
		$scope.bodypartc();


        $scope.openTreatment = function (disease) {
            $rootScope.disease = disease;
            var modalInstance = $modal.open({
                templateUrl: '/hospital/resources/custom/js/patient/patient-treatment-modal.html',
                size: 'lg',
                controller: 'PatientTreatmentCtrl'
            });
        }
		
		$scope.choosebodypart = function() {
			if ($scope.modelBodyPart==null||$scope.modelBodyPart==undefined) {
				$scope.allsymptoms = $scope.allsymptomsfromresponse;
			} else {
				$http.post('/hospital/patientsymptoms/getsymptomsbybodypart', $scope.modelBodyPart).success(function(response){
					$scope.allsymptoms = response;
				})
			}
		}
		
		$scope.openmodaldisease = function(disease) {
			var modalInstance = $modal.open({
				templateUrl: 'modalDisease.html',
				controller: 'ModalDiseaseCtrl',
				resolve: {
					disease: function () {
						return disease;
					}
				}
			});
		}
		
		$scope.deletesymptom = function(symptom) {
			$scope.symptoms.splice($scope.symptoms.indexOf(symptom), 1);
			$rootScope.symptomsname.splice($rootScope.symptomsname.indexOf(symptom.name), 1);
//			alert($scope.symptoms);
//			alert($rootScope.symptomsname);
			$scope.getdiseasec();
		}
		
		$scope.testalert=function() {
			alert("Alert!");
		}
		
		$scope.collapsectrl = function() {
			$scope.oneAtATime = true;
		}
		
		$scope.collapsectrl();

        $scope.openTreatment = function (disease) {
            $rootScope.disease = disease;
            var modalInstance = $modal.open({
                templateUrl: '/hospital/resources/custom/js/patient/patient-treatment-modal.html',

                controller: 'PatientTreatmentCtrl'
            });
        }
		
	});
	
	app.controller('ModalDiseaseCtrl', function($scope, $http, $modalInstance, disease) {
		$scope.disease = disease;
		$http.post('/hospital/patientsymptoms/getsymptomsbydisease', disease.id).success(function(data){
			$scope.listsymptomsofdisease = data;
		})
		$scope.ok = function () {
		    $modalInstance.close();
		};
	})
