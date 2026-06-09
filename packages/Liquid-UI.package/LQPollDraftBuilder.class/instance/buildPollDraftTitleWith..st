toolbuilder
buildPollDraftTitleWith: aBuilder
	^ (aBuilder pluggableButtonSpec new
		model: self;
		label: #pollDraftTitle;
		action: #editPollTitle;
		frame: (LayoutFrame fractions: (0 @ 0 extent: 0.76 @ 1));
		yourself)