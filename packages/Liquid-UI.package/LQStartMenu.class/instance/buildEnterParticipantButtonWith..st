toolbuilder
buildEnterParticipantButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Enter Participant Mode';
		help: 'Enter the participant menu, where you can submit an answer to a poll';
		action: #enterParticipantMode;
		frame: (LayoutFrame new
			topFraction: 0.5;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 0.5;
			yourself);
		yourself