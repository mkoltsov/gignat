"use strict";
window.console = window.console || {};
window.console.log = window.console.log || function () {
};

(function () {

    var app = angular.module("routedPartials", ["ui.router",
        "ui.bootstrap",
        'gnt.dashboard',
        'gnt.logging',
        'gnt.common',
        'gnt.constants',
        'restangular',
        'infinite-scroll',
        'gnt.templates',
        'ngGrid',
        'nvd3ChartDirectives',
        'angularMoment',
        'toaster',
        'ngCookies',
        'http-auth-interceptor'
    ]);

    app.config(function ($stateProvider, $urlRouterProvider, $sceProvider, RestangularProvider, gntMainConstants, $locationProvider) {
        $locationProvider.hashPrefix('!');
        RestangularProvider.setBaseUrl(gntMainConstants.url);
        RestangularProvider.setRequestInterceptor(
            function (elem, operation, what) {
                console.log("the element we’re sending to the server:", elem);
                console.log("the HTTP method used:", operation);
                console.log("the model that’s being requested:", what);
                return elem;
            });

        //-----------------------UI-ROUTER CONFIGURATION------------------------------------------
        $urlRouterProvider.otherwise("/main/dashBoard");
        $stateProvider
            .state("main", {
                abtract: true,
                url: "/main",
                templateUrl: "components/main.html",
                controller: 'MainController'
            })
            .state("main.dashBoard", {
                url: "/dashBoard",
                templateUrl: "components/dashboard/db.tpl.html",
                controller: 'DashboardController'
            })
            .state("main.login", {
                url: "/login",
                templateUrl: "components/common/login.tpl.html",
                controller: LoginController
            })
            .state("main.notifications", {
                url: "/notifications",
                templateUrl: "components/notifications/notifications.tpl.html",
                controller: 'NotificationController'
            })
            .state("main.logging", {
                url: "/logging",
                templateUrl: "components/logging/lg.tpl.html",
                controller: 'LoggingController'
            });
    });

    app.controller("MainController", ['$rootScope', '$scope', '$log', '$state', '$modal', 'Restangular', 'gntMainConstants', '$location', 'toasterService',
            function ($rootScope, $scope, $log, $state, $modal, Restangular, gntMainConstants, $location, toasterService) {
                $rootScope.debugMode = gntMainConstants.debugMode;
                $scope.isActive = function (viewLocation) {
                    return viewLocation === $location.path();
                };
                $scope.navbarCollapsed = true;
                $scope.go = function (route) {
                    $state.go(route);
                };

                $scope.notifyCnt = function () {
                    return toasterService.getCnt();
                };

            }]
    );
    angular.module('gnt.dashboard', ['restangular']);
    angular.module('gnt.logging', []);
    angular.module('gnt.common', []);
    app.run(function ($rootScope, $location, $http, $cookieStore, $filter, authService, toasterService, gntMessages) {
        // Call when the 401 response is returned by the server
        $rootScope.$on('event:auth-loginRequired', function (rejection) {
            $rootScope.logout();
            $rootScope.loginMessage = gntMessages.PLEASE_LOG_IN;
            $location.path("/main/login");
        });

        // Call when the 403 response is returned by the server
        $rootScope.$on('event:auth-notAuthorized', function (rejection) {
            toasterService.error('errors.403');
        });

        // Call when the user logs out
        $rootScope.$on('event:auth-loginCancelled', function () {
            $location.path("/main/login");
        });

        // Call when the client is confirmed
        $rootScope.$on('event:auth-loginConfirmed', function (data) {
            $rootScope.authenticated = true;
            delete $rootScope.loginMessage;
        });

        $rootScope.timeNow = function () {
            return $filter('date')(new Date(), 'HH:mm:ss');
        };

        $rootScope.logout = function () {
            delete $rootScope.user;
            $http.get('app/logout');
            $rootScope.authenticated = false;
            authService.loginCancelled();
            $cookieStore.remove('user');
        };

        /* Try getting valid user from cookie or go to login page */
        var originalPath = $location.path();
        $location.path("/main/login");
        var authToken = $cookieStore.get('user');
        if (authToken !== undefined) {
            $rootScope.user = {name: authToken};
            $rootScope.authenticated = true;

            //try to get user profile, or redirect him to profile selection page
            //$rootScope.profileUserCheck();
            $location.path(originalPath);
        }
    });
}());

function LoginController($scope, $rootScope, $location, $cookieStore, $http, toasterService, authService, gntMessages) {
    $http.get('/test/getsid')
        .success(function (data) {
            $scope.dbName = data;
        }).error(function (data) {
            $scope.dbName = 'ANY';
            $rootScope.loginMessage = 'The application is not connected to the database';
        });
    $scope.login = function () {
        var data = "j_username=" + encodeURIComponent($scope.username) + "&j_password=" + encodeURIComponent($scope.password) + "&submit=Login";
        $http.post('security/user/authenticate', data, {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            ignoreAuthModule: 'ignoreAuthModule'
        }).success(function (data, status, headers, config) {
            $rootScope.user = {name: $scope.username};
            authService.loginConfirmed();
            $cookieStore.put('user', $scope.username);
            $location.path("/main/dashBoard");

        }).error(function (data, status, headers, config) {
            $rootScope.authenticated = false;
            toasterService.error(gntMessages.INVALID_CREDENTIALS);
        });
    };
}

