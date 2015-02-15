"use strict";
angular.module('gnt.common')
    .controller('ModalCtrl', ['$scope', '$modal', '$log', function ($scope, $modal, $log) {
        $scope.open = function (templateName, controller) {
            var modalInstance = $modal.open({
                templateUrl: templateName,
                controller: controller,
                windowClass: 'app-modal-window'
            });

            modalInstance.result.then(function (selectedItem) {
                $scope.selected = selectedItem;
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        };
    }]);