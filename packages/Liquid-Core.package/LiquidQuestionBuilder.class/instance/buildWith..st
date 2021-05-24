as yet unclassified
buildWith: aBuilder
	builder := aBuilder.
	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: (LayoutFrame fractions: (0@0 extent: 1@0) offsets: (0@0 extent: 0@200));
		children: {
			self buildTitleWith: aBuilder.
			self buildChoiceListWith: aBuilder.
		}
		yourself
	