as yet unclassified
buildEnterHostButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Enter Host Mode';
	action: #enterHostMode;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.5;
				leftFraction: 0;
				rightFraction: 1;
				yourself);
	yourself.