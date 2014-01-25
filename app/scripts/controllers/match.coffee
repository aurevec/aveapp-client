'use strict'

angular.module('aveApp')
  .controller 'MatchCtrl', ['$scope', '$routeParams', 'AveappResource', 'socket', ($scope, $routeParams, AveappResource, socket) ->
    url = '/countries/' +  $routeParams.countryId + '/competitions/' + $routeParams.competitionId + '/seasons/' + $routeParams.seasonId + '/days/' + $routeParams.dayId + '/matches'
    AveappResource(url, 'match', 'matches').all
      success: (matches) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitionId = $routeParams.competitionId
        $scope.seasonId = $routeParams.seasonId
        $scope.dayId = $routeParams.dayId
        $scope.matches = matches

    socket.on 'rt-change', (data) ->
      matchId = data.obj.id
      match = $scope.matches.find (i) ->
        i['id'] == matchId
      match['home_goals'] = data.obj.home_goals
      match['away_goals'] = data.obj.away_goals

  ]
