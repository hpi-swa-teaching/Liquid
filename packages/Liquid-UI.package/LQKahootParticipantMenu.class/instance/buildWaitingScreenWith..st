toolbuilder
buildWaitingScreenWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #waitingForNextQuestionText;
		readOnly: true;
		frame: (LayoutFrame fractions: (0.05 @ 0.3 extent: 0.55 @ 0.55));
		yourself