toolbuilder
buildRunPollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Run Poll';
		help: 'Run your poll and make it available to participants under a chosen ID';
		action: #runPoll;
		frame: (LayoutFrame new
					topFraction: 0.92;
					leftFraction: 0.67;
					rightFraction: 1;
					bottomFraction: 1;
					yourself);
		yourself