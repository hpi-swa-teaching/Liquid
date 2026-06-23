toolbuilder
buildQuestionCounterWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #questionCounterText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.05 @ 0.88 extent: 0.55 @ 0.08));
		yourself
