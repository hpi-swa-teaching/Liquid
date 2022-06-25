toolbuilder
buildMaxNumberOfChoicesLabelWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #createMaxNumberOfChoicesLabel;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 0.9 extent: 0.8 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0))