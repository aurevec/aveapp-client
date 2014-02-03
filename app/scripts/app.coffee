'use strict'

angular.module('aveApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'ngAnimate',
  'aveapp.resource',
  'aveapp.services',
  'aveapp.directives'
])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/country.html'
        controller: 'CountryCtrl'
      .when '/countries',
        templateUrl: 'views/country.html'
        controller: 'CountryCtrl'
      .when '/countries/:countryId/competitions',
        templateUrl: 'views/competition.html'
        controller: 'CompetitionCtrl'
      .when '/countries/:countryId/competitions/:competitionId/seasons',
        templateUrl: 'views/season.html'
        controller: 'SeasonCtrl'  
      .when '/countries/:countryId/competitions/:competitionId/seasons/:seasonId/days',
        templateUrl: 'views/day.html'
        controller: 'DayCtrl'  
      .when '/countries/:countryId/competitions/:competitionId/seasons/:seasonId/days/:dayId/matches',
        templateUrl: 'views/match.html'
        controller: 'MatchCtrl'    
      .otherwise
        redirectTo: '/'
  ]
