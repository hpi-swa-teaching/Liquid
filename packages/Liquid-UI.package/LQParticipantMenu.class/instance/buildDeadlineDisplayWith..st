accessing
buildDeadlineDisplayWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #deadlineText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			topFraction: 0.93;
			leftFraction: 0.0;
			rightFraction: 1.0;
			bottomFraction: 1.0;
			yourself);
		yourself