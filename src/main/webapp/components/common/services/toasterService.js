"use strict";
angular.module('gnt.common')
    .service('toasterService', function (toaster, amMoment) {
        var messageCache = {
            error: null,
            success: null,
            warning: null
        };
        var messageHistory = [];
        var cnt = 0;
        var notifyUser = function (text, it) {
            var notificationType = _.keys(messageCache)[it];

            function capitalize(string) {
                return string.charAt(0).toUpperCase() + string.slice(1).toLowerCase();
            }

            function notify(text) {
                messageHistory.push({
                    type: notificationType, text: text,
                    date: amMoment.preprocessDate(new Date()).format('DD/MM HH:mm:ss')
                });
                cnt++;
                toaster.pop(notificationType, capitalize(notificationType), text);
            }

            notify(text);
        };

        this.error = function (text) {
            notifyUser(text, 0);
        };

        this.success = function (text) {
            notifyUser(text, 1);
        };

        this.warning = function (text) {
            notifyUser(text, 2);
        };

        this.getHistory = function () {
            return _.cloneDeep(messageHistory);
        };

        this.getCnt = function () {
            return cnt;
        };

        this.clearCnt = function () {
            cnt = 0;
        };
    });