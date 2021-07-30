initialize
buildRemainingVotedChoicesCounterTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #getRemainingVotedChoices;
		indicateUnacceptedChanges: false;
		readOnly: true;
		frame: (LayoutFrame fractions: (0.1 @ 0.81 extent: 0 @ 0) offsets: (0 @ 0 extent: 200 @ 30)) yourself