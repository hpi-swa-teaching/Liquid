toolbuilder
buildRemainingCharactersCounterTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #defaultRemaining;
		indicateUnacceptedChanges: false;
		readOnly: true;
		frame: (self layoutFrame);
		yourself
