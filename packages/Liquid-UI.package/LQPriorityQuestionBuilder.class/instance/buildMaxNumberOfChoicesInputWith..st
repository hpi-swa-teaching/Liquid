toolbuilder
buildMaxNumberOfChoicesInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #maxNumberOfChoices;
		editText: #maxNumberOfChoices:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.8 @ 0.9 extent: 0.2 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself