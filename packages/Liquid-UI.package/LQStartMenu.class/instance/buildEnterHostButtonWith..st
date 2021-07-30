buttons
buildEnterHostButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Enter Host Mode';
	help: 'Enter the host menu, where you can create and close polls and get results to your polls';
	action: #enterHostMode;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.5;
				leftFraction: 0;
				rightFraction: 1;
				yourself);
	yourself.