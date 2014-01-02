'use strict'

angular.module('aveApp')
  .controller 'SeasonCtrl', ['$scope', 'SeasonsResource', ($scope, SeasonsResource) ->
    SeasonsResource.all
      success: (seasons) ->
        $scope.seasons = seasons
  ]
