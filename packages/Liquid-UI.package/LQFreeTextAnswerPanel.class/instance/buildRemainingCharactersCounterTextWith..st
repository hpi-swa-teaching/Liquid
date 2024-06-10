toolbuilder
buildRemainingCharactersCounterTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #getRemainingCharacters;
		indicateUnacceptedChanges: false;
		readOnly: true;
		frame: (self layoutFrame);
		yourself
