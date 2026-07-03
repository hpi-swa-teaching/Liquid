toolbuilder
buildAddChoiceButtonWith: aBuilder


	| topOffset |
	topOffset := self choiceTexts size * (self rowHeight + self choiceFieldSpacing) + self choiceFieldSpacing.
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add';
		help: 'Add another choice option (max. 20).';
		action: #addChoice;
		enabled: #addChoiceButtonEnabled;
		frame: (LayoutFrame new
			leftFraction: 0;
			rightFraction: 0.2;
			topFraction: 0;
			topOffset: topOffset - self choiceFieldSpacing;
			bottomFraction: 0;
			bottomOffset: topOffset + self rowHeight;
			yourself);
		yourself