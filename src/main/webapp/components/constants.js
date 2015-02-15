"use strict";

angular.module('gnt.constants', [])
    .constant('gntMainConstants',
    {url: '/api/v1/',
        debugMode: false,
        dateFormat: 'DD/MM/YYYY',
        modelToEnrich: [],
        modelToSend: {db: ['newClient'
        ],
            lg: []},
        timepickerDateFormat: {
            initDate: new Date(),
            minDate: new Date('1970-01-01'),
            format: 'dd/MM/yyyy',
            opened: false,
            dateOptions: {
                formatYear: 'yy',
                startingDay: 1
            },
            value: ''
        }
    });
