toolbuilder
buildConfirmButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Set Deadline';
		action: #confirm;
		frame: (LayoutFrame new
			topFraction: 0.62;
			bottomFraction: 0.95;
			leftFraction: 0.05;
			rightFraction: 0.48;
			yourself);
		yourself