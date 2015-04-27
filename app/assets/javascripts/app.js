'use strict'

angular.module('NoteWrangler', ['ngRoute', 'templates', 'ngResource', 'ngGravatar'])
	.config(function(GravatarProvider){
		GravatarProvider.setSize(50);
	});