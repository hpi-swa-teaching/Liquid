toolbuilder
buildCreatePollButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Create Poll';
	action: #createPoll;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 01;
				leftFraction: 0;
				rightFraction: 0.3;
				yourself);
	yourself.
