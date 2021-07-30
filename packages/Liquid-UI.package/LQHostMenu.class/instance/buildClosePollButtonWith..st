toolbuilder
buildClosePollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Close Poll';
		help: 'Close a poll and prevent participants from submitting additional answers';
		action: #closePoll;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 1;
			leftFraction: 0.7;
			rightFraction: 1;
			yourself);
		yourself