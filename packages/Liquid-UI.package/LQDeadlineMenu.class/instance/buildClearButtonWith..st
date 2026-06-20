toolbuilder
buildClearButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Clear';
		action: #clearDeadline;
		frame: (LayoutFrame new
			topFraction: 0.62;
			bottomFraction: 0.95;
			leftFraction: 0.52;
			rightFraction: 0.95;
			yourself);
		yourself