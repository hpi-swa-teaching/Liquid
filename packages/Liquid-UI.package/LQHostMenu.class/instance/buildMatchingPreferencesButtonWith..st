toolbuilder
buildMatchingPreferencesButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: #pollSelected;
		label: 'Matching Preferences';
		help: 'Calculate the Matching between the users and their preferences.';
		action: #openMatchingPreferences;
		yourself