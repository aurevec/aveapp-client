'use strict'

angular.module('aveApp')
  .controller 'CountryCtrl', ['$scope', 'AveappResource', ($scope, AveappResource) ->
    url = '/countries'
    AveappResource(url, 'country', 'countries').all
      success: (countries) ->
        $scope.countries = countries
  ]
