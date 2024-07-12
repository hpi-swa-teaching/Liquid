toolbuilder
buildRemainingVotedChoicesCounterTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #getRemainingVotedChoices;
		indicateUnacceptedChanges: false;
		readOnly: true;
		frame: self layoutFrame;
		yourself