as yet unclassified
buildRunPollButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new label: 'Run Poll';
		model: self;
		action:#runPoll;
		
		frame: (LayoutFrame
				fractions: (0 @ 1 extent: 1 @ 0)
				offsets: (0 @ -30 extent: 0 @ 30))