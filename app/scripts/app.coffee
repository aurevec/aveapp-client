'use strict'

angular.module('aveApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'aveapp.resource',
  'aveapp.services'
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
      .otherwise
        redirectTo: '/'
  ]
