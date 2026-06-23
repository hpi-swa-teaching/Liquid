toolbuilder
buildQuestionCounterWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #questionCounterText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			topFraction: 0.85;
			leftFraction: 0.45;
			rightFraction: 0.65;
			bottomFraction: 0.95;
			yourself);
		yourself