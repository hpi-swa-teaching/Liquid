toolbuilder
buildShowResultsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Export Results';
		help: 'Export poll results in a CSV format';
		action: #exportResults;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 0.3;
			leftFraction: 0.35;
			rightFraction: 0.65;
			yourself);
		yourself