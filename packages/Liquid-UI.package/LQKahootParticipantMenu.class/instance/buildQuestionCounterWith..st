toolbuilder
buildQuestionCounterWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #questionCounterText;
		frame: (LayoutFrame fractions: (0.05 @ 0.88 extent: 0.55 @ 0.08));
		yourself