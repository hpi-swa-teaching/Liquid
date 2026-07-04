toolbuilder
buildStartKahootButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Start Kahoot';
		help: 'Start the Kahoot and advance questions automatically based on their time limits.';
		action: #startKahoot;
		enabled: #isStartButtonEnabled;
		yourself
