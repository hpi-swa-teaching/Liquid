toolbuilder
buildNextButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #nextLabel;
		enabled: #nextEnabled;
		action: #nextQuestionOrDone;
		frame: (LayoutFrame fractions: (0.65 @ 0.85 extent: 0.3 @ 0.1));
		yourself
