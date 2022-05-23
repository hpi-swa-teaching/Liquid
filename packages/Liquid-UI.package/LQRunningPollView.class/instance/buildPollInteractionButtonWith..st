toolbuilder
buildPollInteractionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Close Poll';
		action: #closePoll;
		frame: (LayoutFrame fractions: (0 @ 0.05 extent: 1 @ 0.2) offsets: (0 @ 85 extent: 0 @ 20)) yourself