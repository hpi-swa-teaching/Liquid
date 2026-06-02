toolbuilder
buildCorrectChoiceLabelWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #correctChoiceLabelText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 0.7 extent: 0.8 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
