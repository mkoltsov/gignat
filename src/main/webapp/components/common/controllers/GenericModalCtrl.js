"use strict";

angular.module('gnt.common')
    .controller('GenericModalCtrl', ['$scope', '$rootScope', '$modalInstance', 'gntModelService', 'toasterService',

        function ($scope, $rootScope, $modalInstance, gntModelService, toasterService) {

            $scope.cancel = function () {
                $modalInstance.dismiss('Canceled');
            };

            $scope.save = function () {
                gntModelService.setData($rootScope.appPart, $scope.modelPart, $scope.key).val($scope.data);

                gntModelService.getData($rootScope.appPart, $scope.modelPart).then(function (data) {
                    toasterService.success(data);
                });
                $modalInstance.close('Modal closed');
            };
        }
    ]);
