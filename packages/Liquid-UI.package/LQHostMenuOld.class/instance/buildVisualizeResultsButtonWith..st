toolbuilder
buildVisualizeResultsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Visualize Results';
		help: 'Visualize results to a poll as a bar graph';
		action: #visualizeResults;
		frame: (LayoutFrame new
			topFraction: 0.7;
			bottomFraction: 1;
			leftFraction: 0.35;
			rightFraction: 0.65;
			yourself);
		yourself