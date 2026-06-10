toolbuilder
buildDeleteChoiceButtonAt: anIndex with: aBuilder
	| top rowH |
	top := self choiceTopFractionForIndex: anIndex.
	rowH := self choiceRowVerticalFraction.
	^ aBuilder pluggableButtonSpec new
		model: (self choiceFieldAt: anIndex);
		label: 'Remove';
		help: 'Remove this choice option.';
		action: #delete;
		enabled: #deleteEnabled;
		frame: (LayoutFrame fractions: (0.78 @ top extent: 0.22 @ rowH) offsets: (0 @ 0 extent: 0 @ 0));
		yourself