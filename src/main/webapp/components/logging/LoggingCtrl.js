"use strict";
angular.module('gnt.logging')
    .controller('LoggingController', ['$rootScope', '$scope', '$controller', 'gntMainConstants', 'clientDataService',
        function ($rootScope, $scope, $controller, gntMainConstants, clientDataService) {
            $scope.clients = [];
            var busy = false;
            var last = 1;

            $scope.loadMore = function () {
                if (busy === true) {
                    return;
                }
                busy = true;
                clientDataService.getAssets(last).then(function (data) {
                    last = data[data.length - 1].ID;
                    busy = false;
                    $scope.clients = _.union($scope.clients, data);
                });
            };

            $scope.icon = function (name) {
                return /Bank/.test(name) ? "fa-bank" : "fa-briefcase";
            };
        }
    ]);