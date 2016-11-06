(function() {
    'use strict';

    var app = angular.module('admin-manager',['ui.bootstrap','ngResource','ngTable','nvd3ChartDirectives']);
    app.constant("MAX_NUMBER_OF_ROLES", 2);
    app.controller('UserController', function($scope, $http) {
        $scope.fetchUser = function() {
            $http.get('/hospital/admin-manager/showMyInfo').success(function(user){
                $scope.user = user;
            });
        };
        $scope.fetchUser();
    });

    app.directive('newDoctors',function(){
        return {
            restrict        : 'E',
            templateUrl     : 'resources/custom/js/admin-manager/new-users.html',
            controller      : 'PendingUsersController',
            scope           : {
                role : "@"
            }
        };
    });

    app.directive('loading',   ['$http' ,function ($http)
    {
        return {
            restrict: 'A',
            link: function (scope, elm, attrs)
            {
                scope.isLoading = function () {
                    return $http.pendingRequests.length > 0;
                };

                scope.$watch(scope.isLoading, function (v)
                {
                    if(v){
                        elm.show();
                    }else{
                        elm.hide();
                    }
                });
            }
        };

    }]);

    app.directive('findUserTypeahead',function(){
        return {
            restrict        : 'E',
            templateUrl     : 'resources/custom/js/admin-manager/find-by-name.html',
            scope           : {
                requestRole     :   '@'
            },
            controller      : [
                '$scope','$element','$attrs','$modal','$http','$log',
                function($scope,$element,$attrs,$modal,$http,$log){
                    $scope.roles = {
                        patient:    {assigned: false ,status: 'REJECTED'},
                        doctor:     {assigned: false ,status: 'REJECTED'},
                        labmanager: {assigned: false ,status: 'REJECTED'},
                        pharmacist: {assigned: false ,status: 'REJECTED'}
                    };
                    $scope.rolesCount = 0;

                    var resetRoles = function() {
                        $scope.thisRoles = angular.copy($scope.roles);
                        $scope.rolesCount = 0;
                    };

                    $scope.getUsers = function(val) {
                        return $http.get('/hospital/admin-manager/users/byName', {
                            params: {
                                name: val
                            }
                        }).then(function(response){
                            return response.data;
                        });
                    };


                    $scope.onSelect = function ($item, $model, $label) {
                        $scope.$item = $item;
                        $scope.$model = $model;
                        $scope.$label = $label;
                        resetRoles();
                        $scope.findedUser = $item;
                        $http.get('/hospital/admin-manager/users/rolesByName', {params:{id: $scope.findedUser.id}})
                                     .success(function(response){
                                         angular.forEach(response, function(value){
                                            var roleName = value.role.split('_')[1].toLowerCase();
                                             $scope.thisRoles[roleName].assigned = true;
                                             $scope.thisRoles[roleName].status = value.status;
                                             if (value.status != 'REJECTED') {
                                                $scope.rolesCount += 1;
                                             }
                                                
                                         })
                                     });
                    };

                    $scope.setRoleForUser = function(usr,roleName) {
                        return $http.put('/hospital/admin-manager/users/setRoleForUser',
                            {id         : usr.id,
                            role        : roleName,
                            status      : 'Approved'},
                            {   headers: {
                                'Accept'        :   'application/json',
                                'Content-Type'  :   'application/json'
                            }}
                            )
                            .success(function(response){
                                if(!$scope.thisRoles[roleName].assigned) {
                                    $scope.thisRoles[roleName].assigned = true;
                                }
                                if($scope.thisRoles[roleName].status == 'REJECTED') {
                                    $scope.rolesCount += 1;
                                } else if (response.status == 'REJECTED' && $scope.rolesCount > 0) {
                                    $scope.rolesCount -= 1;
                                }
                                
                                $scope.thisRoles[roleName].status = response.status;
                                
                                $log.info('Count ' + $scope.rolesCount + '; Role ' + roleName + ';');
                                $log.info('RStatus ' + response.status + '; ThisStatus ' + $scope.thisRoles[roleName].status);
                                
                            })
                    };

                    $scope.closeWell = function() {
                        $scope.finded = null;
                        $scope.findedUser = null;
                    };

                    $scope.role = $attrs.role;
                    $scope.isPatient = false;

                    $scope.registrationForm = {
                      birthday: new Date(),
                      registrationDate: new Date()
                    };

                    $scope.open = function (size) {
                        var modalInstance = $modal.open({
                            templateUrl: 'resources/custom/html/registration-content.html',
                            controller: 'RegistrationInstanceController',
                            size: size,
                            resolve: {
                                registrationForm: function () {
                                    return $scope.registrationForm;
                                }
                            }
                        });
                    };

            }]
        };
    });

    app.controller('RegistrationInstanceController', function ($rootScope, $scope, $modalInstance, $http, $log, registrationForm) {
      $scope.registrationForm = registrationForm;
      $scope.testData = {
        fullName: 'qwe'
      }
      $scope.dateSettings = {
        format: 'dd.MM.yyyy',
        options: {
          formatYear: 'yy',
          startingDay: 1
        },
        open: function ($event) {
          $event.preventDefault();
          $event.stopPropagation();
          $scope.dateSettings.opened = true;
        }
      };

      $scope.ok = function () {
        $scope.formSending = true;

        $http.post('', $scope.registrationForm).
          success(function (data, status, headers, config) {
            $log.info("REGISTRATION_SUCCESS: ", data, status, headers, config);
            $rootScope.$emit('showFeedback', data);
            $modalInstance.dismiss('cancel');
            $scope.formSending = false;
          }).
          error(function (data, status, headers, config) {
            $log.error("REGISTRATION_ERROR: ", data, status, headers, config);
            $rootScope.$emit('showFeedback', data);
            $scope.formSending = false;
          });
      };

      $scope.onPassChanged = function() {
        $scope.passwordRetype = '';
      };

      $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
      };
    });

    app.controller('PendingUsersController', function($scope,$http){
        $scope.pageSize = 7;
        $scope.currentPage = 0;
        $scope.requestedPage = 0;
        $scope.totalItems = 0;
        $scope.maxSize = 3;
        $scope.newUsers = [];


        $scope.getPendingUsersList = function() {
            return $http.get('/hospital/admin-manager/newUsers/byRoleAndStatus', {
                params:{    role: $scope.role,
                requestedPage: $scope.requestedPage,
                pageSize: $scope.pageSize}})
                .success(function(page){
                    $scope.currentFirst = page.number * page.size + 1;
                    $scope.currentLast  = (page.number + 1) * page.size > page.totalElements ? page.totalElements : (page.number + 1) * page.size;
                    $scope.totalElements = page.totalElements;
                    $scope.newUsers = page.content;
                });
            };

            $scope.pageChanged = function() {
                $scope.requestedPage = $scope.currentPage - 1;
                $scope.getPendingUsersList();
            };

            $scope.getPendingUsersList();
        });

    app.controller('FindAllCardRecords',function($scope,$http,$filter,$log,$modal,ngTableParams){
        var data = [];
        var selectedCardRecords = [];
        $scope.needDoctor = false;

        $scope.getAllCardRecordsList = function() {
            return $http.get('/hospital/admin-manager/cardRecs/getCardRecords')
            .then(function(response){
                data = response.data;
                $scope.tableParams.reload();
            });
        };

        $scope.tableParams = new ngTableParams({
            page: 1,
            count: 10
        }, {
            getData: function($defer, params) {
                var recNeedDoc = [];
                $scope.needDoctor
                ? angular.forEach(data,function(value) {if(!value.isDoctorNeeded) {this.push(value)}},recNeedDoc)
                : angular.forEach(data,function(value) {if(value.isDoctorNeeded) {this.push(value)}},recNeedDoc) ;
                var filteredData = $filter('filter')(recNeedDoc, $scope.filter);
                params.total(filteredData.length);
                var orderedData = params.sorting() ? $filter('orderBy')(filteredData, params.orderBy()) : filteredData;
                $defer.resolve(orderedData.slice((params.page() - 1) * params.count(), params.page() * params.count()));
            },
            $scope: $scope
        });

        $scope.needDocSwitch = function() {
            $scope.needDoctor = !$scope.needDoctor;
            $scope.tableParams.reload();
            $scope.tableParams.page(1);
        };

        $scope.$watch("filter.$", function () {
      		$scope.tableParams.reload();
            $scope.tableParams.page(1);
      	});

        $scope.checkboxes = { 'checked': false, items: {} };

        $scope.updateTable = function(){
            $scope.getAllCardRecordsList();
            $scope.checkboxes = { 'checked': false, items: {} };
            selectedCardRecords = [];
            $scope.tableParams.reload();
        };

        $scope.changeSelection = function(val) {
            var index = selectedCardRecords.indexOf(val);
            if (index > -1) {
                selectedCardRecords.splice(index,1);
            } else {
                selectedCardRecords.push(val);
            }
        };

        $scope.openListOfAvailableDoctors = function() {
            var modalInstance = $modal.open({
                templateUrl: 'myModalContent.html',
                controller: 'AvailableDoctorsModalController',
                size: 'lg',
                scope: $scope,
                resolve: {
                    data: function() {
                        var doctorsLoads = [];
                        return $http.get('/hospital/admin-manager/cardRecs/showDoctors')
                        .then(function(response) {
                            angular.forEach(response.data,function(value) {
                                this.push(
                                    {
                                        doctor  : value[0],
                                        load    : value[1]
                                    }
                                )
                            }, doctorsLoads);
                            return doctorsLoads;
                        })
                    },
                    cardsToAssign: function() {
                        return selectedCardRecords;
                    }
                }
            });

            modalInstance.result.then(function (selectedItem) {
                $scope.selected = selectedItem;
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });

        }

        $scope.getAllCardRecordsList();
    });

    app.controller('AvailableDoctorsModalController', function($scope,$http,$log,$filter,$modalInstance,ngTableParams,data,cardsToAssign){
        $scope.usersToAprove = angular.copy(cardsToAssign);

        var cardRecordsIds = [];

        angular.forEach(cardsToAssign, function(cr) {this.push(cr.id)}, cardRecordsIds);
        $log.info(cardRecordsIds);

        $scope.tableDocsLoads = new ngTableParams({
            page: 1,
            count: 10
        }, {
            total: data.length,
            getData: function($defer, params) {
                var orderedData = params.sorting() ? $filter('orderBy')(data, params.orderBy()) : data;
                $defer.resolve(orderedData.slice((params.page() - 1) * params.count(), params.page() * params.count()));
            }
        });

        var selectedDoctor = null;

        $scope.selectDoctor = function(doc) {
            if (selectedDoctor) {
                selectedDoctor.$selected = false;
            }
            selectedDoctor = doc;
        }

        $scope.ok = function () {
            $http.put('/hospital/admin-manager/cardRecs/assignDoctor',
            {   doctorId             :   selectedDoctor.doctor.id,
                cardRecordIds        :   cardRecordsIds},
            {   headers: {
                'Accept'        :   'application/json',
                'Content-Type'  :   'application/json'
            }})
            .success(function(result) {
                $scope.updateTable();
            });
            $modalInstance.close($scope.selected);
        };

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };
    });

    app.controller('ChangeUserStatus', function($scope,$http){
        $scope.alerts = [];
        $scope.setStatus = function(userRole,value,role) {
            $http.put('/hospital/admin-manager/changeStatus',
                {   id              :   userRole.id,
                    status          :   value},
                {   headers: {
                    'Accept'        :   'application/json',
                    'Content-Type'  :   'application/json'
                }})
                .success(function(response){
                    switch(role) {
                        case 'doctor':
                            $scope.updatedUser = response;
                            $scope.addAlert();
                            $scope.getPendingUsersList();
                            break;
                        case 'pharmacist':
                            $scope.updatedUser = response;
                            $scope.addAlert();
                            $scope.getPendingPharmacistList();
                            break;
                        case 'labmanager':
                            $scope.updatedUser = response;
                            $scope.addAlert();
                            $scope.getPendingLabmanagerList();
                            break;
                        default:
                            $scope.updatedUser = response;
                            $scope.getPendingUsersList();
                        }
                    })
                    .error(function(error){alert(error)});
                };

        $scope.addAlert = function() {
            $scope.alerts.push({msg: 'User ' + $scope.updatedUser.user.fullName + ' updated with status ' + $scope.updatedUser.status});
        };

        $scope.closeAlert = function(index) {
            $scope.alerts.splice(index, 1);
        };
    });

    app.controller('ChartController',function($scope,$http,$filter,$window) {
        $scope.monthNames = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec' ];
        $scope.months = [];
        var count = 0;
        $scope.getMonthIllness = function() {
            return $http.get('/hospital/admin-manager/chart/getMothIllNess')
            .success(function(page){
                angular.forEach(page,function(value,key) {
                    var innerMap = []
                    var innerCounter = 0
                    angular.forEach(value,function(v,k){this[innerCounter++] = new Array($scope.monthNames[k - 1],v)},innerMap)
                    this[count++] = {
                        "key"       : key,
                        "values"    : innerMap}

                    },$scope.months);

                    var temp = $scope.months[0];
                    $scope.months[0] = $scope.months[1];
                    $scope.months[1] = $scope.months[2];
                    $scope.months[2] = temp;

                    $scope.exampleData = $scope.months;
                    $scope.exampleData2 = $scope.months;
                });
            };

            $scope.getMonthIllness();
        });

    app.controller("TestChartCtrl", function ($scope,$http) {

        $scope.tabs = [
            { title:'By Disease'},
            { title:'By Date'}            
        ];

        $scope.radioModel = $scope.tabs[0].title;

        $scope.findedDis = null;
        $scope.findedY = null;

        $scope.years = [];
        $scope.title = 'Select year';

        var barChartTitle = 'Users addresses for all time'

        $scope.getDiseases = function(val) {
            return $http.get('/hospital/admin-manager/disease/byName', {
                params: {
                    name: val
                }
            }).then(function(response){
                return response.data;
            });
        };

        $scope.getYears = function() {
            $http.get('/hospital/admin-manager/chart/getYears')
            .success(function(response) {            
                $scope.years =  response;                
            })
        };

        $scope.onSelectYear = function ($item, $model, $label) {
                        $scope.$item = $item;
                        $scope.$model = $model;
                        $scope.$label = $label;                        
                        $scope.findedYear = $item;                        
                        getMonthIllness($item);                   
                    };

        $scope.clearFinYear = function() {
            $scope.title = 'Select year';
            $scope.getMonthIllness();            
        }

        $scope.openStartDate = function($event) {
            $event.preventDefault();
            $event.stopPropagation();

            $scope.openedStart = true;
        };

        $scope.openEndDate = function($event) {
            $event.preventDefault();
            $event.stopPropagation();

            $scope.openedEnd = true;
        };        

        $scope.clearFinDis = function() {
            $scope.findedDisease = null;
            $scope.findedDis = null;
        }

        $scope.monthNames = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec' ];
        
        google.load('visualization', '1', { 'packages': ['corechart','geochart', 'table'] });

        function drawChart(dataPool) {

            var data = google.visualization.arrayToDataTable(
                dataPool
            );

            var options = {
                width: 556,
                height: 300,
                title: barChartTitle,
                // vAxis: {title: 'Month',  titleTextStyle: {color: 'red'}}               
            };

            var chart = new google.visualization.ColumnChart(document.getElementById('ColumnChart'));
            chart.draw(data, options);
        };       

        var currentRegion;
        var dataFromServer = [['Country', 'Patients']];

        $scope.drawRegionsMap = function(dataPool) {
            var data = google.visualization.arrayToDataTable(
                dataPool
            );  

            var view = new google.visualization.DataView(data)
            view.setColumns([0, 1])     
     
            var chart = new google.visualization.GeoChart(                
                document.getElementById('chart_div'));
            chart.draw(data, options);            
     
            var geochart = new google.visualization.GeoChart(
                document.getElementById('chart_div'));
                var options = { 
                    width: 556,
                    height: 300,
                    colorAxis: {colors: ['#acb2b9', '#2f3f4f']} // Map Colors 
                };
     
            google.visualization.events.addListener(geochart,'regionClick', function (eventData) {
                // maybe you want to change the data table here...
                currentRegion = eventData.region;
                options['region'] = eventData.region;
                options['resolution'] = 'provinces'; 
                getCountDisByRegion(242,currentRegion);                
                
                var data = google.visualization.arrayToDataTable([
                  // var data = [
                   ['State', 'Views'],
                   ['Lima', 1],
                   ['Cajamarca', 1],
                ]);                
                    // options['displayMode'] = 'markers';        
                    // var data = google.visualization.arrayToDataTable([
                    //     // Add Results for Individual State
                    //     // Format needs to match what is below so that it locates the correct position
                    //     // Additional information can be added to array
                    //     // Uses first value in 2nd column to determine scale for markers
                    //     ['City', 'Views', ],
                    //     ['Charlotte, NC', 300 ],
                    //     ['Raleigh, NC', 400],
                    //     ['Monroe, NC', 400],
                    //     ['Rock-Hill, SC', 400],
                    // ]);    
                
                geochart.draw(data, options);                
            });
            geochart.draw(data, options);            
        }

        var getCountDisByCountries = function(diseaseId) {
            if (!angular.isUndefined(diseaseId)) {
                $http.get('/hospital/admin-manager/chart/getCountDisByCountries',{params: {diseaseId: diseaseId}})
                    .success(function(data) {
                        angular.forEach(data,function(val){
                            this.push([val[0].name, val[1]])
                        },dataFromServer); 
                        $scope.drawRegionsMap(dataFromServer);                  
                    });   
                } else {
                    $scope.drawRegionsMap(dataFromServer);
                }
        };

        var getCountDisByRegion = function(diseaseId, countryISO3) {
            var dataFormatted = [['State', 'Views']];
            return $http.get('/hospital/admin-manager/chart/getCountDisByRegion',{params: {diseaseId: diseaseId, countryISO3: countryISO3}})
                .then(function(response) {
                    angular.forEach(response.data,function(val){
                        this.push([val[0].name, val[1]])
                    },dataFormatted);
                    return dataFormatted;                  
                });   
        };

        $scope.getMonthIllness = function(year) {               
                var innerData = [['Month', 'Patients']]
                if (angular.isUndefined(year)) {
                    $http.get('/hospital/admin-manager/chart/getMothIllNess')
                    .success(function(page){
                        angular.forEach(page, function(value,key) {
                            this.push([$scope.monthNames[key], parseInt(value)])
                        },innerData);                        
                        drawChart(innerData);
                    })
                } else {
                    $scope.title = year;
                    $http.get('/hospital/admin-manager/chart/getMothIllNessForYear',{params:{year:year}})
                    .success(function(page){
                        angular.forEach(page, function(value,key) {
                            this.push([$scope.monthNames[key], parseInt(value)])
                        },innerData);
                        drawChart(innerData);
                    }) 
                }
                
            };
        $scope.getYears();
        $scope.getMonthIllness();
        getCountDisByCountries();
     });

    app.controller('TabsCtrl', function ($scope) {
        $scope.tabs = [
            { title:'Doctors'},
            { title:'Pharmacists'},
            { title:'Labmanagers'}
        ];
    });

})();
