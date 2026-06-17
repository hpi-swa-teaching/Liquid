toolbuilder
buildChartAreaWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		morph: self wrapperMorph;
		frame: (LayoutFrame new
			topFraction: 0 offset: 30;
			bottomFraction: 1;
			leftFraction: 0.25;
			rightFraction: 1;
			yourself);
		yourself