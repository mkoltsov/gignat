"use strict";
function NotificationController($scope, toasterService) {
    $scope.notifications = toasterService.getHistory();
    toasterService.clearCnt();
}

