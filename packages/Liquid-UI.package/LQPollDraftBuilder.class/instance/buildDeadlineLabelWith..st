deadline
buildDeadlineLabelWith: aBuilder
 
	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #deadlineLabelText;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0;
			rightFraction: 0.125;
			bottomFraction: 0.975;
			yourself);
		yourself
