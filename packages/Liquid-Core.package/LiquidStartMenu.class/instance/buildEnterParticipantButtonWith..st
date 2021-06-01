buttons
buildEnterParticipantButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Enter Participant Mode';
	action: #enterParticipantMode;
	frame: (LayoutFrame new
				topFraction: 0.5;
				bottomFraction: 1;
				leftFraction: 0;
				rightFraction: 1;
				yourself);
	yourself.