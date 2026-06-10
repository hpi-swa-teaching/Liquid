toolbuilder
buildAddChoiceButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add';
		help: 'Add another choice option (maximum 12).';
		action: #addChoice;
		enabled: #addChoiceButtonEnabled;
		frame: (LayoutFrame fractions: (0 @ self addChoiceButtonTopFraction extent: 0.2 @ 0.05) offsets: (0 @ 0 extent: 0 @ 0));
		yourself