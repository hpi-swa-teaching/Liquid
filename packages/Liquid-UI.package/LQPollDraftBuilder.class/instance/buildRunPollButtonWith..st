as yet unclassified
buildRunPollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Run Poll';
		help: 'Run your poll and make it available to participants under a chosen ID';
		action: #runPoll;
		frame: (LayoutFrame fractions: (0 @ 1 extent: 1 @ 0) offsets: (0 @ -30 extent: 0 @ 30))