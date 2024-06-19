toolbuilder
buildRemainingCharactersCounterTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #getRemainingCharactersLabel;
		indicateUnacceptedChanges: false;
		readOnly: true;
		frame: (self layoutFrame);
		yourself
