toolbuilder
buildQuestionTitleTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #getTitle;
		indicateUnacceptedChanges: false;
		readOnly: true;
		frame: (LayoutFrame fractions: (0.15 @ 0.05 extent: 0.8 @ 0) offsets: (0 @ 0 extent: 0 @ 30));
		yourself