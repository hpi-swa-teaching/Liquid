toolbuilder
buildCountdownBarWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #timeRemainingBar;
		frame: (LayoutFrame fractions: (0.05 @ 0.22 extent: 0.55 @ 0.06));
		yourself