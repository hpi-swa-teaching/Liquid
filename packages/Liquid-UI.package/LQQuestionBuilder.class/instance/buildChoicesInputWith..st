toolbuilder
buildChoicesInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #choiceDescriptions;
		editText: #choiceList:;
		help: 'Each line in this field represents a new choice for participants.
		You can exclude certain groups using comma-separated notation within brackets: [group1,group2]';
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 0.1 extent: 1 @ 0.8) offsets: (0 @ 0 extent: 0 @ 0))