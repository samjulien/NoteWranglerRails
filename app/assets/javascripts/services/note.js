angular.module('NoteWrangler').factory('Note', function($resource) {
	return $resource('api/notes/:id', {id: "@id"}, {
		update: {
			method: "PUT"
		}
	});
});