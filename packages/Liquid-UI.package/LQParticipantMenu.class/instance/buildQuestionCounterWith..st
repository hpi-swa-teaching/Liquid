toolbuilder
buildQuestionCounterWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #questionCounterText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			topFraction: 0.81;
			leftFraction: 0.38;
			rightFraction: 0.53;
			bottomFraction: 0.91;
			yourself);
		yourself