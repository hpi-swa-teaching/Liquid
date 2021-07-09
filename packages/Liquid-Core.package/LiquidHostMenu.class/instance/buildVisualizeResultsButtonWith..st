toolbuilder
buildVisualizeResultsButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Visualize Results';
	action: #visualizeResults;
	frame: (LayoutFrame new
				topFraction: 0.55;
				bottomFraction: 1;
				leftFraction: 0.35;
				rightFraction: 0.65;
				yourself);
	yourself.
