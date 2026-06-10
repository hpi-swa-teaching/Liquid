toolbuilder
buildChoiceTextAt: anIndex with: aBuilder
	| top rowH |
	top := self choiceTopFractionForIndex: anIndex.
	rowH := self choiceRowVerticalFraction.
	^ aBuilder pluggableTextSpec new
		model: (self choiceFieldAt: anIndex);
		getText: #text;
		editText: #text:;
		help: 'Enter a choice. You can exclude certain groups using comma-separated notation within brackets: [group1,group2]';
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0 @ top extent: 0.78 @ rowH) offsets: (0 @ 0 extent: 0 @ 0));
		yourself