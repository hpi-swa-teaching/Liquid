buttons
buildClosePollButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Close Poll';
	action: #closePoll;
	frame: (LayoutFrame new
				topFraction: 0.35;
				bottomFraction: 0.45;
				leftFraction: 0.4;
				rightFraction: 0.6;
				yourself);
	yourself.