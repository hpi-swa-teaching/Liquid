toolbuilder
buildDeleteChoiceButtonAt: anIndex with: aBuilder

	| topOffset |
	topOffset := (anIndex - 1) * (self rowHeight + self choiceFieldSpacing).
	^ aBuilder pluggableButtonSpec new
		model: (self choiceFieldAt: anIndex);
		label: 'Remove';
		help: 'Remove this choice option.';
		action: #delete;
		enabled: #deleteEnabled;
		frame: (LayoutFrame new
			leftFraction: 0.8;
			rightFraction: 1;
			topFraction: 0;
			topOffset: topOffset;
			bottomFraction: 0;
			bottomOffset: topOffset + self rowHeight;
			yourself);
		yourself