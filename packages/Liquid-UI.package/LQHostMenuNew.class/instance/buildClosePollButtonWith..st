toolbuilder
buildClosePollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Close Poll';
		help: 'Close poll to prevent participants from handing in answers';
		action: #closePoll;
		yourself