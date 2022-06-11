toolbuilder
buildRemainingVotedChoicesCounterTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #getRemainingVotedChoices;
		indicateUnacceptedChanges: false;
		readOnly: true;
		frame: (LayoutFrame new
							topFraction: 0.81; leftFraction: 0.10; rightFraction: 0.31; bottomFraction: 0.91) yourself
