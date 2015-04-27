angular.module('NoteWrangler').factory('User', function($resource) {
	return $resource('api/users/:id');
});