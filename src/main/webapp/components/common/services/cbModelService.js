"use strict";
angular.module('gnt.common')
    .service('gntModelService', ['Restangular', '$rootScope', '$q', '$timeout', 'gntMainConstants', 'toasterService', 'amMoment',
        function (Restangular, $rootScope, $q, $timeout, gntMainConstants, toasterService, amMoment) {
            var model = {
                db: {},
                lg: {}
            };

            this.getData = function (appPart, modelPart, key) {
                var promise = $q.defer();
                $timeout(function () {
                    resolveModel(promise, modelPart, key);
                }, 0);

                return promise.promise;
            };

            var resolveModel = function (promise, modelPart, key) {
                //if we don't have a particular key it's ok to retrieve the whole part of the model
                switch (modelPart) {
                    case 'data':
                    {
                        if (!model.db[modelPart]) {
                            //someDataService.getData($rootScope.someID).then(function (data) {
                            //    model.db[modelPart] = data;
                            //    if (!data) {
                            //        model.db[modelPart] = {};
                            //    }
                            //    promise.resolve(model.db[modelPart]);
                            //});
                        } else {
                            promise.resolve(model.db[modelPart]);
                        }
                    }
                        break;
                }
            };

            var enrichCbModel = function (part) {
                if (_.isDate(part.date)) {
                    part.date = amMoment.preprocessDate(part.date).format(gntMainConstants.dateFormat);
                }
                return part;
            };

            this.postData = function (appPart, modelPart) {
                var promise = $q.defer();
                var modelToSend = gntMainConstants.modelToSend.db;
                var model1 = _(enrichCbModel(model[appPart][modelPart]))
                    .pick(model[appPart][modelPart],
                    _.union(modelToSend))
                    .value();
                //Restangular.one('endPointToSaveData').one(modelPart, someID).all('validationPoint').post(model1).then(function (data) {
                //    promise.resolve(data);
                //}, function (data) {
                //    promise.reject(data);
                //});
                return promise.promise;
            };

            this.setData = function (appPart, modelPart, key) {
                console.log(appPart, modelPart, key);
                return {
                    val: function (data) {
                        if (!model[appPart][modelPart]) {
                            model[appPart][modelPart] = {};
                            model[appPart][modelPart][key] = data;
                        } else {
                            model[appPart][modelPart][key] = data;
                        }
                    }
                };
            };

            this.clearData = function (appPart, modelPart) {
                if (!appPart && !modelPart) {
                    model = {
                        db: {},
                        lg: {}
                    };
                } else {
                    delete model[appPart][modelPart];
                }
            };
        }
    ]);