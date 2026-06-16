toolbuilder
buildQuestionCounterWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #questionCounterText;
		frame: (LayoutFrame new
			topFraction: 0.85;
			leftFraction: 0.45;
			rightFraction: 0.65;
			bottomFraction: 0.95;
			yourself);
		yourself