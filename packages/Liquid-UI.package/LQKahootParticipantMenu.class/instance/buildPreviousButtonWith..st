toolbuilder
buildPreviousButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Previous';
		enabled: #previousEnabled;
		action: #previousQuestion;
		frame: (LayoutFrame fractions: (0.05 @ 0.85 extent: 0.3 @ 0.1));
		yourself
