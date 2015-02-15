"use strict";
angular.module('gnt.dashboard')
    .controller('ServerManagementController', ['$scope', '$rootScope', '$modalInstance', '$controller',
        function ($scope, $rootScope, $modalInstance, $controller) {
            $controller('GenericModalCtrl', {$scope: $scope, $modalInstance: $modalInstance});
            $rootScope.appPart = 'db';
            $scope.modelPart = 'data';
            $scope.key = 'newClient';
            $scope.data = {};
            $scope.modalName = 'Adding a new client';
            $scope.firstButtonName = 'Cancel';
            $scope.secondButtonName = 'Save';
        }]);