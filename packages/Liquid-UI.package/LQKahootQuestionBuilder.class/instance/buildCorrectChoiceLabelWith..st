toolbuilder
buildCorrectChoiceLabelWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #correctChoiceLabelText;
		frame: (LayoutFrame fractions: (0 @ 0.8 extent: 0.8 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
