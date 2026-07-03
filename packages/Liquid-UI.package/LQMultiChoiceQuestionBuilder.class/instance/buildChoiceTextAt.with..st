toolbuilder
buildChoiceTextAt: anIndex with: aBuilder

	| topOffset |
	topOffset := (anIndex - 1) * (self rowHeight + self choiceFieldSpacing).
	^ aBuilder pluggableTextSpec new
		model: (self choiceFieldAt: anIndex);
		getText: #text;
		editText: #text:;
		help: 'Enter a choice. You can exclude certain groups using comma-separated notation within brackets: [group1,group2]';
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0;
			rightFraction: 0.8;
			topFraction: 0;
			topOffset: topOffset;
			bottomFraction: 0;
			bottomOffset: topOffset + self rowHeight;
			yourself);
		yourself