toolbuilder
buildMaxNumberOfChoicesLabelWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #getMaxNumberOfChoicesLabel;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 1 extent: 0.7 @ 0) offsets: (0 @ -90 extent: 0 @ 34));
		yourself