toolbuilder
buildMaxNumberOfChoicesLabelWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #createMaxNumberOfChoicesLabel;
		frame: (LayoutFrame fractions: (0 @ 0.9 extent: 0.8 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself