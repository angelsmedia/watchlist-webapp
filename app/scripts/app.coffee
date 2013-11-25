'use strict'

angular.module('watchlistWebApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'ngAnimate',
  'angular-md5'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/signup',
        templateUrl: 'views/signup.html'
        controller: 'SignupCtrl'
      .when '/users',
        templateUrl: 'views/users.html'
        controller: 'UsersCtrl'
      .when '/profile/:userId',
        templateUrl: 'views/profile.html'
        controller: 'ProfileCtrl'
      .when '/movies',
        templateUrl: 'views/movies.html'
        controller: 'MoviesCtrl'
      .when '/movie/:movieId',
        templateUrl: 'views/movie.html'
        controller: 'MovieCtrl'
      .otherwise
        redirectTo: '/'
