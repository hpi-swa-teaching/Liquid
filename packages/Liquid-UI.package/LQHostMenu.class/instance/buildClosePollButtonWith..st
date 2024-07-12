toolbuilder
buildClosePollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: #closePollButtonEnabled;
		label: 'Close Poll';
		help: 'Close poll to prevent participants from handing in answers';
		action: #closePoll;
		yourself