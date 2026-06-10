toolbuilder
buildSubmitButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Submit Answer';
		action: #submitAnswer;
		enabled: #submitEnabled;
		frame: (LayoutFrame fractions: (0.13 @ 0.72 extent: 0.4 @ 0.1));
		yourself
