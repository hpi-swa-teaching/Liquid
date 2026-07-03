toolbuilder
buildYesNoButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Yes/No';
		action: #setYesNoPreset;
		frame: (LayoutFrame fractions: (0 @ 0.8 extent: 0.3275 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
