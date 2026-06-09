toolbuilder
buildMatchingPreferencesButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: #pollSelected;
		label: 'Matching Preferences';
		help: 'Open the matching preferences dialog. Only available when the selected poll contains preference (priority) questions.';
		action: #openMatchingPreferences;
		enabled: #matchingPreferencesButtonEnabled;
		yourself