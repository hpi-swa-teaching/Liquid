toolbuilder
buildQuestionTitleWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #questionTitle;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.05 @ 0.05 extent: 0.45 @ 0.15));
		yourself
