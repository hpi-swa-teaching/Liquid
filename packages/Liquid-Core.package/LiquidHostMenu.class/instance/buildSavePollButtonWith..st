initialize
buildSavePollButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Start Poll';
	action: #startPoll;
	frame: (LayoutFrame new
				topFraction: 0.25;
				bottomFraction: 0.35;
				leftFraction: 0.4;
				rightFraction: 0.6;
				yourself);
	yourself.