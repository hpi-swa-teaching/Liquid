toolbuilder
buildQuestionTitleTextWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #getTitle;
		frame: (LayoutFrame
			fractions: (0.15 @ 0.05 extent: 0.8 @ 0)
			offsets: (0 @ 0 extent: 0 @ (TextStyle defaultFont height * 1.8) rounded));
		yourself