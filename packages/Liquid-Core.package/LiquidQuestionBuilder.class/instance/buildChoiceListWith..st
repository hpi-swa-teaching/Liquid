as yet unclassified
buildChoiceListWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: (LayoutFrame fractions: (0@0 extent: 1@0) offsets: (30@30 extent: -30@0));
		children: #choices;
		yourself
	