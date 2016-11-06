/**
 * Created by aftor on 21.10.14.
 */
urlParam = function (name) {
  var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
  if (results == null) {
    return null;
  }
  return results[1] || 0;
};

(function () {
  var app = angular.module('WelcomeAngular', ['ui.bootstrap']);

  app.controller('BannerController', function ($scope) {
    $scope.interval = 5000;
    $scope.slides = [
      {image: _contextPath + "/resources/custom/images/banner_1.jpg", text: "A great team of doctors"},
      {image: _contextPath + "/resources/custom/images/banner_2.jpg", text: "Selection of medicines is ideal for the treatment"},
      {image: _contextPath + "/resources/custom/images/banner_3.jpg", text: "Wide range of services"},
      {image: _contextPath + "/resources/custom/images/banner_4.jpg", text: "Treatment without leaving your home"}
    ];
  });

  app.controller('NavigationController', function ($rootScope, $scope, $modal, $log) {
    $scope.loginForm = {j_username: '', j_password: '', _spring_security_remember_me: false};
    $scope.registrationForm = {
//      birthday: new Date(),
//      registrationDate: new Date(),
      idGender: 1
    };

    $scope.openLogin = function (size) {
      var modalInstance = $modal.open({
        templateUrl: 'resources/custom/html/login-content.html',
        controller: 'LoginInstanceController',
        backdrop: 'static',
        keyboard: false,
        size: size,
        resolve: {
          loginForm: function () {
            return $scope.loginForm;
          }
        }
      });
      modalInstance.result.then(function (paramFromDialog) {
        $scope.paramFromDialog = paramFromDialog;
      });
    };

    $scope.openRegistration = function (size) {
      var modalInstance = $modal.open({
        templateUrl: 'resources/custom/html/registration-content.html',
        controller: 'RegistrationInstanceController',
        backdrop: 'static',
        keyboard: false,
        size: size,
        resolve: {
          registrationForm: function () {
            return $scope.registrationForm;
          }
        }
      });
      modalInstance.result.then(function (paramFromDialog) {
        $scope.paramFromDialog = paramFromDialog;
      });
    };

    $rootScope.$on('showResponse', function (event, data) {
      $log.info(data);
      $modal.open({
        templateUrl: 'resources/custom/html/response-content.html',
        controller: 'responseInstanceController',
        resolve: {
          responseData: function () {
            return data;
          }
        }
      });
    });

    if (urlParam("action") == 'login') {
      $scope.openLogin();
    } else if (urlParam("action") == 'register') {
      $scope.openRegistration();
    }
  });

  app.controller('LoginInstanceController', function ($rootScope, $scope, $modalInstance, $http, loginForm) {
    $scope.loginForm = loginForm;
    $scope.loginForm.isInvalid = false;

    $scope.ok = function () {
      $rootScope.cursorStyle = {cursor: 'progress'};
      $scope.formSending = true;

      $http.post('j_spring_security_check', {}, {
        params: $scope.loginForm
      }).success(function (data, status, headers, config) {
        console.log("SUCCESS: ", data, status, headers, config);
        window.location.href = _contextPath + data;
      }).
        error(function (data, status, headers, config) {
          console.log("ERROR: ", data, status, headers, config);
          $scope.loginForm.isInvalid = true;
          $scope.loginForm.errorData = data;
          $rootScope.cursorStyle = {cursor: 'default'};
          $scope.formSending = false;
        });
    };

    $scope.cancel = function () {
      $scope.loginForm.isInvalid = false;
      $scope.loginForm.errorData = '';
      $modalInstance.dismiss('cancel');
    };

    $scope.onKeyPress = function ($event) {
      if ($event.keyCode == 13 && !$scope.formSending) {
        $scope.ok();
        $event.preventDefault();
      }

      if ($event.keyCode == 27 && !$scope.formSending) {
        $scope.cancel();
        $event.preventDefault();
      }
    };
  });

  app.controller('RegistrationInstanceController', function ($rootScope, $scope, $modalInstance, $http, $log, registrationForm) {
    $scope.registrationForm = registrationForm;
    $scope.isPatient = true;
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
      $rootScope.cursorStyle = {cursor: 'progress'};

      $http.post('', $scope.registrationForm, {params: {role: 'ROLE_PATIENT'}}).
        success(function (data, status, headers, config) {
          $log.info("REGISTRATION_SUCCESS: ", data, status, headers, config);
          $rootScope.$emit('showResponse', data);
          $modalInstance.dismiss('cancel');

          $rootScope.cursorStyle = {cursor: 'default'};
          $scope.formSending = false;
        }).
        error(function (data, status, headers, config) {
          $log.error("REGISTRATION_ERROR: ", data, status, headers, config);
          $rootScope.$emit('showResponse', data);

          $rootScope.cursorStyle = {cursor: 'default'};
          $scope.formSending = false;
        });
    };

    $scope.onPassChanged = function () {
      $scope.passwordRetype = '';
    };

    $scope.cancel = function () {
      $modalInstance.dismiss('cancel');
    };

    $scope.onKeyPress = function ($event) {
      if ($event.keyCode == 13 && !$scope.formSending && $scope.regForm.$valid) {
        $scope.ok();
        $event.preventDefault();
      }

      if ($event.keyCode == 27 && !$scope.formSending) {
        $scope.cancel();
        $event.preventDefault();
      }
    };
  });

  app.controller('responseInstanceController', function ($scope, $modalInstance, responseData) {
    $scope.responseData = responseData;

    $scope.close = function () {
      $modalInstance.dismiss('close');
    };
  });

  app.directive("passwordVerify", function () {
    return {
      require: "ngModel",
      scope: {
        passwordVerify: '='
      },
      link: function (scope, element, attrs, ctrl) {
        scope.$watch(function () {
          var combined;

          if (scope.passwordVerify || ctrl.$viewValue) {
            combined = scope.passwordVerify + '_' + ctrl.$viewValue;
          }
          return combined;
        }, function (value) {
          if (value) {
            ctrl.$parsers.unshift(function (viewValue) {
              var origin = scope.passwordVerify;
              if (origin !== viewValue) {
                ctrl.$setValidity("passwordVerify", false);
                return undefined;
              } else {
                ctrl.$setValidity("passwordVerify", true);
                return viewValue;
              }
            });
          }
        });
      }
    };
  });

})();

