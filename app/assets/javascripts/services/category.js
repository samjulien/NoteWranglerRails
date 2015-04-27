angular.module('NoteWrangler').factory('Category', function($resource) {
	return $resource('api/categories/:id');
});