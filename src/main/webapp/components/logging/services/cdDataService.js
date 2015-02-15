"use strict";
angular.module('gnt.logging')
    .service('clientDataService', ['Restangular',
        function (Restangular) {
            var cbRest = Restangular.one('dashboard');
            this.getAssets = function (id) {
                return cbRest.one('clients').getList(id, {data: true});
            };
        }
    ]);