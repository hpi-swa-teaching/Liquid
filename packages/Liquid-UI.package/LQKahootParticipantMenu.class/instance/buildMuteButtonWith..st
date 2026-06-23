toolbuilder
buildMuteButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #muteButtonLabel;
		action: #toggleMute;
		frame: (LayoutFrame fractions: (0.52 @ 0.05 extent: 0.08 @ 0.08));
		yourself
