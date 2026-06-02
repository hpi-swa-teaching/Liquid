toolbuilder
buildQuestionCounterWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #questionCounterText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.38 @ 0.85 extent: 0.24 @ 0.1));
		yourself
