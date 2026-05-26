toolbuilder
buildCorrectChoiceInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #correctChoiceIndexString;
		editText: #correctChoiceIndexString:;
		help: 'Enter the number of the correct line (1 = first answer).';
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.8 @ 0.85 extent: 1 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
