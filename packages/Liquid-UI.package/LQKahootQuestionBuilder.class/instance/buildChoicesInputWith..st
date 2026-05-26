toolbuilder
buildChoicesInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #choiceDescriptions;
		editText: #choices:;
		help: 'Each line is one answer option (up to four choices).';
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ 0.1 extent: 1 @ 0.75) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
