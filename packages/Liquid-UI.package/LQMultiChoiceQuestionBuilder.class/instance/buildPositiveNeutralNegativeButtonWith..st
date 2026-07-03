toolbuilder
buildPositiveNeutralNegativeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Positive/Neutral/Negative';
		action: #setPositiveNeutralNegativePreset;
		frame: (LayoutFrame fractions: (0.6725 @ 0.8 extent: 0.3275 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
