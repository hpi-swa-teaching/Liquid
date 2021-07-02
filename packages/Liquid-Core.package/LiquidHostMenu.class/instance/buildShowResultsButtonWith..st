toolbuilder
buildShowResultsButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Show Results';
	action: #showResults;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 1;
				leftFraction: 0.35;
				rightFraction: 0.65;
				yourself);
	yourself.
