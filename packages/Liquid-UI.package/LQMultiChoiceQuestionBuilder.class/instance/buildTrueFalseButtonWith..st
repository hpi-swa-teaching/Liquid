toolbuilder
buildTrueFalseButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'True/False';
		action: #setTrueFalsePreset;
		frame: (LayoutFrame fractions: (0.3325 @ 0.8 extent: 0.3375 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
