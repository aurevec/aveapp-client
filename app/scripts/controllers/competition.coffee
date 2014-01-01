'use strict'

angular.module('aveApp')
  .controller 'CompetitionCtrl', ['$scope', '$routeParams', 'CompetitionsResource', ($scope, $routeParams, CompetitionsResource) ->
    CompetitionsResource('/countries/' +  $routeParams.countryId + '/competitions').all
      success: (competitions) ->
        $scope.competitions = competitions
  ]
