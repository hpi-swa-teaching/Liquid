toolbuilder
buildRunPollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Run Poll';
		help: 'Run your poll and make it available to participants under a chosen ID';
		action: #runPoll;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.8333;
			rightFraction: 1;
			bottomFraction: 0.975;
			yourself);
		yourself