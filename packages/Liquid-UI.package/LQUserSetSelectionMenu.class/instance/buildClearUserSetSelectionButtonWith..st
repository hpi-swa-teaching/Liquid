toolbuilder
buildClearUserSetSelectionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Clear Selection';
		action: #clearSelection;
		frame: (LayoutFrame new
			topFraction: 0.91;
			bottomFraction: 0.98;
			leftFraction: 0.1;
			rightFraction: 0.9;
			yourself);
		yourself