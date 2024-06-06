toolbuilder
buildPriorityExplanationLabelWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #createPriorityExplanationLabel;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 0.9 extent: 1.0 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself