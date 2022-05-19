toolbuilder
buildMaxNumberOfChoicesInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #maxNumberOfChoices;
		editText: #maxNumberOfChoices:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.7 @ 1 extent: 0.3 @ 0) offsets: (0 @ -60 extent: 0 @ 30))