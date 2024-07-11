toolbuilder
buildPollInteractionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Close Poll';
		action: #closePoll;
		frame: (LayoutFrame new
			topFraction: 0.75;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 1;
			yourself);
		yourself