'use strict'

angular.module('aveApp')
  .controller 'CompetitionCtrl', ['$scope', '$routeParams', 'AveappResource', ($scope, $routeParams, AveappResource) ->
    url = '/countries/' +  $routeParams.countryId + '/competitions'
    AveappResource(url, 'competition').all
      success: (competitions) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitions = competitions
  ]
