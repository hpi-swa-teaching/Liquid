toolbuilder
buildChoicesInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #choiceList;
		editText: #choiceList:;
		help: 'Each line in this field represents a new choice for participants';
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 0 extent: 1 @ 1) offsets: (0 @ 30 extent: 0 @ -90))