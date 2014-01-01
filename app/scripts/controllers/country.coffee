'use strict'

angular.module('aveApp')
  .controller 'CountryCtrl', ['$scope', 'CountriesResource', ($scope, CountriesResource) ->
  	CountriesResource.all
      success: (countries) ->
        $scope.countries = countries
  ]
