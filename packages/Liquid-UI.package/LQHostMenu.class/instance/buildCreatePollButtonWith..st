toolbuilder
buildCreatePollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Poll';
		help: 'Create a new Poll from scratch and run it';
		action: #createPoll;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 0.3;
			yourself);
		yourself