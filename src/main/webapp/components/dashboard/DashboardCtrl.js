"use strict";
angular.module('gnt.dashboard')
    .controller('DashboardController', ['$rootScope', '$scope', 'dashBoardDataService',
        'gntMainConstants', '$controller', 'toasterService',
        function ($rootScope, $scope, dashBoardDataService, gntMainConstants, $controller, toasterService) {
            $controller('ModalCtrl', {$scope: $scope});
            $scope.userData = {selectedCompany: ''};
            $scope.chartData = [];
            $scope.filterOptions = {
                filterText: ''
            };

            $scope.showChart = function (company) {
                dashBoardDataService.getChartData(company).then(function (data) {
                    if (!_.isEmpty(data)) {
                        $scope.chartData = [
                            {
                                "key": company + " sales series",
                                "values": data.map(function (elem) {
                                    return [elem.POINTA, elem.POINTB];
                                })
                            }];
                    }
                    else {
                        toasterService.warning("There's no sales data for " + company);
                    }
                });
            };

            $scope.showAssets = function (company) {
                $scope.showChart(company);
                $scope.userData.selectedCompany = _.find($scope.clients, function (chr) {
                    return chr.COMPANY === company;
                });
                dashBoardDataService.getAssets(company).then(function (data) {
                    $scope.myData = data;
                });
            };

            $scope.gridOptions = {
                data: 'myData',
                columnDefs: [
                    {field: 'ASSET', displayName: 'Asset'}, {field: 'CNT', displayName: 'Amount'}
                ],
                filterOptions: $scope.filterOptions
            };

            dashBoardDataService.getClients().then(function (data) {
                $scope.clients = data;
            });

            dashBoardDataService.getDashboardData($rootScope.user.name).then(function (data) {
                $scope.dashboardControls = data;
            });

        }
    ]);