toolbuilder
buildQuestionTooltipWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: #tooltipSymbol;
		model: self;
		enabled: false;
		help: self question toolTip;
		frame: (LayoutFrame
			fractions: (0.15 @ 0.14 extent: 0 @ 0)
			offsets: (0 @ 0 extent: (TextStyle defaultFont height * 1.8) rounded @ (TextStyle defaultFont height * 1.8) rounded));
		yourself