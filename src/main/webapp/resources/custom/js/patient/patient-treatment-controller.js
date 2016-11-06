
    app.controller('PatientTreatmentCtrl',function($rootScope, $scope, $timeout, $log, $filter, $http, ngTableParams, $modalInstance, $window )
    {
        $scope.treatData = [];


        $http.get('/hospital/generatetreatment',{
            params: {
                diseaseId: $rootScope.disease.id
            }
        }).success(function(dataResp, status) {
            $scope.treatData = dataResp;
            $scope.drawModalTable();

        });


        $scope.drawModalTable = function()
        {
            var data = $scope.treatData;
            $scope.tableParamsDrug = new ngTableParams({
                page: 1,            // show first page
                count: 10           // count per page
            }, {
                total: data.length, // length of data
                getData: function ($defer, params1) {
                    var filteredData = $filter('filter')(data, $scope.filter);
                    var orderedData = params1.sorting() ?
                        $filter('orderBy')(filteredData, params1.orderBy()) : data;
                    $defer.resolve(orderedData.slice((params1.page() - 1) * params1.count(), params1.page() * params1.count()));
                }
            });
        }

        $scope.saveTreatment = function() {
            $http.get('/hospital/savetreatment', {
                params: {
                    diseaseId: $rootScope.disease.id,
                    symptomNames: $rootScope.symptomsname
                }
            }).success(function (dataResp, status) {
                document.location.replace("http://localhost:8080/hospital/patient");
                //$location.path("http://localhost:8080/hospital/patient");
            });
        }

        $scope.closeModal = function () {
            $modalInstance.close();
        }

    });
