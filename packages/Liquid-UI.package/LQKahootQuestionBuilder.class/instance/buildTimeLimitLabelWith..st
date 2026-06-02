toolbuilder
buildTimeLimitLabelWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #timeLimitLabelText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 0.8 extent: 0.8 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
