"use strict";
angular.module('gnt.dashboard')
    .service('dashBoardDataService', ['Restangular',
        function (Restangular) {
            var cbRest = Restangular.one('dashboard');

            this.getChartData = function (profile) {
                return cbRest.one('clients').getList(profile, {chart: true});
            };

            this.getAssets = function (profile) {
                return cbRest.one('clients').getList(profile, {assets: true});
            };

            this.getAssets = function (profile) {
                return cbRest.one('clients').getList(profile, {assets: true});
            };

            this.getClients = function () {
                return cbRest.one('clients').getList();
            };

            this.getDashboardData = function (user) {
                return cbRest.one('data', user).getList();
            };

        }
    ]);