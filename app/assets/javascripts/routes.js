angular.module('NoteWrangler').config(function($routeProvider){
	$routeProvider
	.when('/', {
		redirectTo: '/notes'
	})
	.when('/notes', {
		templateUrl: 'templates/notes/index.html',
		controller: 'NoteIndexController'
	})
	.when('/notes/new', {
		templateUrl: 'templates/notes/new.html',
		controller: 'NoteCreateController'
	})
	.when('/notes/:id/edit', {
		templateUrl: 'templates/notes/edit.html',
		controller: 'NoteEditController'
	})
	.when('/notes/:id', {
		templateUrl: 'templates/notes/show.html',
		controller: 'NoteShowController'
	})
	.when('/users', {
		templateUrl: 'templates/users/index.html',
		controller: 'UsersIndexController'
	})
	.when('/users/:id', {
		templateUrl: 'templates/users/show.html',
		controller: 'UsersShowController'
	})
})