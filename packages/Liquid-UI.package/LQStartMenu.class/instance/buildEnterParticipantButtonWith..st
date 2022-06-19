toolbuilder
buildEnterParticipantButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Enter Participant Mode';
		help: 'Enter the participant menu, where you can submit an answer to a poll';
		action: #enterParticipantMode;
		frame: (LayoutFrame new
			topFraction: 0.33;
			bottomFraction: 0.66;
			leftFraction: 0;
			rightFraction: 1;
			yourself);
		yourself