/**
 * Created by DaNiEJIb on 25.10.2014.
 */
var app = angular.module('diseasedrugangular', ['ngTable','ui.bootstrap']);

app.directive('ddTable', function () {
    return {
        restrict: 'E',
        templateUrl: '/hospital/resources/custom/js/disease-drug/dd-table.html'
    }
});

app.controller('ddTableCtrl',function($rootScope,$scope, $timeout, $log, $filter, $http, ngTableParams, $modal, $window) {
    $rootScope.data = [];
    $scope.selected = {};
    $scope.onlychecked = [];


    $http.get('/hospital/getDrugsForDisease', {
        params: {
            diseaseId: $window.diseaseId
        }
    }).success(function(dataResp, status) {
        $scope.drawTable(dataResp);
    });

    $rootScope.$on('reloadTable', function (event, data) {
        $scope.cleanTable();
        $scope.reloadData();
    });

    $scope.getChecked = function(){
        angular.forEach($scope.selected, function(value, key) {
             if(angular.equals(value, true)) {
                 this.push(key);
             }
        }, $scope.onlychecked);
        $scope.selected = {};
    };
    $scope.cleanTable = function(){
        $scope.onlychecked = [];
        $scope.selected = {};

    }


    $scope.reloadData = function () {
        $http.get('/hospital/getDrugsForDisease',{
            params: {
                diseaseId: $window.diseaseId
            }
        }).success(function (dataResp, status) {
            $log.log(dataResp.length);
            $rootScope.data = dataResp;
            //$scope.tableParams.total($scope.data.length);
            $scope.tableParams.reload();
        });
    }

    $scope.deleteDrugs = function()
    {
        $scope.getChecked();
        $http({
            method: "delete",
            url: "/hospital/deleteselecteddrug",
            data: $scope.onlychecked,
            headers: {'Content-Type': 'application/json'}
        }).success(function(dataResp, status) {
            //do stuff with response
            $scope.cleanTable();
            $scope.reloadData();
        });

    }


    $scope.drawTable = function(dataResp)
    {
        $rootScope.data = dataResp;
        $scope.tableParams = new ngTableParams({
            page: 1,            // show first page
            count: 10           // count per page
        }, {
            total: $rootScope.data.length, // length of data
            getData: function ($defer, params) {
                var filteredData = $filter('filter')($rootScope.data, $scope.filter);
                var orderedData = params.sorting() ?
                    $filter('orderBy')(filteredData, params.orderBy()) :
                    $rootScope.data;
                params.total($rootScope.data.length);
                $defer.resolve(orderedData.slice((params.page() - 1) * params.count(), params.page() * params.count()));
            }
        });
    }

    $scope.open = function (size) {
        var modalInstance = $modal.open({
            templateUrl: '/hospital/resources/custom/js/disease-drug/modalDrug.html',
            size: 'lg',
            controller: 'ddModalCtrl'
        });
    }
        $scope.$watch("filter.$", function () {
            if( $scope.tableParams != undefined) {
            $scope.tableParams.reload();
            }

        });
});


app.controller('ddModalCtrl',function($rootScope, $scope, $timeout, $log, $filter, $http, ngTableParams, $modalInstance, $window ){
    $rootScope.warningmessage = '';

    $scope.drugData = [];
    $scope.betterDrugData = [];
    $scope.drugId = 0;

    this.showInfo = false;
    this.drugAmount = 0;
    this.drugEfficiency  = 30;


    $scope.filterDrugs =function() {
        $scope.betterDrugData = [];
        angular.forEach($scope.drugData, function(drugD, key){
            var b = true;
            angular.forEach($rootScope.data, function(dataD, key){
                if (angular.equals(dataD.drug.id, drugD.id)) {
                    b = false;
                }
            });
            if (b)  $scope.betterDrugData.push(drugD);
        });
        $scope.drugData = $scope.betterDrugData;
    }

    $scope.closeModal = function () {
        $modalInstance.close();
    }

    $http.get('/hospital/getAllDrugs').success(function(dataResp, status) {
        $scope.drugData = dataResp;
        $scope.filterDrugs();
        $scope.drawModalTable();
        $log.log($scope.drugData)

    });

    $scope.changeHide = function(){
        this.showInfo = !this.showInfo;
    }

    $scope.drawModalTable = function()
    {
        var data = $scope.drugData;
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

    $scope.changeRadio = function(id){
        $scope.drugId = id;
    }

    $scope.$watch("filter.$", function () {
        if( $scope.tableParamsDrug != undefined) {
            $scope.tableParamsDrug.reload();
        }
    });

    $scope.regexText = function(str) {
        var patt = /^\d{1,2}$/;
        return patt.test(str);

    }

    $scope.addDrug = function() {

        if ($scope.drugId == 0) {
            $rootScope.warningmessage = 'Choose a drug please.';
            return;
        } else if (this.drugAmount == undefined || !$scope.regexText(this.drugAmount)
            || this.drugEfficiency == undefined || !$scope.regexText(this.drugEfficiency)) {
            $rootScope.warningmessage = 'Incorrect Data! Read FAQ.';
            return;
        }

        $http({
            method: "post",
            url: "/hospital/adddrug",
            data: JSON.stringify({diseaseId: $window.diseaseId,  drugId: $scope.drugId, dEfficiency: this.drugEfficiency, dAmount: this.drugAmount }),
            headers: {'Content-Type': 'application/json'}
        }).success(function (dataResp, status) {
            //do stuff with response
            $scope.closeModal();
            $rootScope.$emit('reloadTable', 'Hello');
        });
    }
});

//    $scope.checkDD = function(){
//        angular.forEach($rootScope.data, function(value, key){
//            $rootScope.ddinD.push(value.drug.id);
//        });
//    }

//    $scope.getDrugData = function() {
//        $log.log($scope.drugId)
//    }

//    $scope.isInteger = function(n) {
//        return n === +n && n === (n|0);
//    }

//    function(objects, criteria){
//        var filterResult = new Array();
////        if(angular.equals(criteria, true)) {
////            this.push(key);
////        }
//
//        for(var objectV = 0; objectV <= objects; objectV++){
//            var b = true;
//            for (var dataV = 0; dataV <= $rootScope.data.length; dataV++) {
//                if(angular.equals($rootScope.data[dataV].drug.id,objects[objectV].id)){
//                    var b = false;
//                }
//                if(b) filterResult.push(objects[objectV])
//            }
//        }
//
////        angular.forEach($rootScope.data, function(dataValue, key) {
////            angular.forEach(objects, function (drugValue, index) {
////
////            });
////            if (angular.equals(value, true)) {
////                this.push(key);
////            }
////        });
////
////        for(index in objects) {
////            if(objects[index].auth.name.indexOf(criteria) != -1) // filter by name only
////                filterResult.push(objects[index]);
////        }
////        console.log(filterResult);
//        return filterResult;
//    }


//controller('DemoCtrl', function($scope, ngTableParams) {
//    var data = [{name: "Moroni", age: 50},
//        {name: "Tiancum", age: 43},
//        {name: "Jacob", age: 27},
//        {name: "Enos", age: 34}];
//
//    $scope.tableParams = new ngTableParams({
//        page: 1,            // show first page
//        count: 10           // count per page
//    }, {
//        total: data.length, // length of data
//        getData: function($defer, params) {
//            $defer.resolve(data.slice((params.page() - 1) * params.count(), params.page() * params.count()));
//        }
//    });
//});
//
//
//$http.get('/hospital/getAllTests').success(
//    function(dataResp, status) {
//        data = dataResp;
//
//        $scope.tableParams = new ngTableParams({
//            page : 1, // show first page
//            count : 5, // count per page
//            filter : {
//                name : '',
//                description : '',
//                testCategory : ''
//            }
//        }, {
//            total : data.length, // length of data
//            getData : function($defer, params) {
//                // use build-in angular filter
//                var orderedData = params.filter() ? $filter('filter')(
//                    data, params.filter()) : data;
//
//                $scope.tests = orderedData.slice((params.page() - 1)
//                    * params.count(), params.page()
//                    * params.count());
//
//                params.total(orderedData.length); // set total for
//                // recalc pagination
//                $defer.resolve($scope.tests);
//            }
//        });
//
//    });

//    $scope.table1 = function(){
//        $scope.tableParams = {reload:function(){},settings:function(){return {}}};
//        $scope.drawTable($scope.data);
//    }

//        $http.post("/hospital//deleteselecteddrug", JSON.stringify($scope.onlychecked), {
//            headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
//            transformRequest: transform
//        }).success(function(dataResp, status) {
//            //do stuff with response
//            $scope.drawTable(dataResp);
//        });

//        $http.post('/hospital//deleteselecteddrug',JSON.stringify($scope.onlychecked)).success(function (dataResp, status) {
//            $scope.drawTable(dataResp);
//        });

