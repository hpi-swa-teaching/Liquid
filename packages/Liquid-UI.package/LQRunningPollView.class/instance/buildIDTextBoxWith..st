toolbuilder
buildIDTextBoxWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #pollId;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 0.25;
			leftFraction: 0;
			rightFraction: 1;
			yourself);
		yourself