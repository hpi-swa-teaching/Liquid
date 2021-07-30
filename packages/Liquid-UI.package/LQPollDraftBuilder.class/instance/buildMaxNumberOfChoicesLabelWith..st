toolbuilder
buildMaxNumberOfChoicesLabelWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #maxNumberOfChoicesLabel;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 1 extent: 0.7 @ 0) offsets: (0 @ -60 extent: 0 @ 30))