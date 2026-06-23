toolbuilder
buildCountdownBarWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #timeRemainingBar;
		readOnly: true;
		frame: (LayoutFrame fractions: (0.05 @ 0.22 extent: 0.55 @ 0.06));
		yourself
