toolbuilder
buildShowResultsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Show Results';
		help: 'Display poll results in a CSV format';
		action: #showResults;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 0.45;
			leftFraction: 0.35;
			rightFraction: 0.65;
			yourself);
		yourself