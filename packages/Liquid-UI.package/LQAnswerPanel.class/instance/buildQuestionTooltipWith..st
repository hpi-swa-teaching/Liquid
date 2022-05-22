toolbuilder
buildQuestionTooltipWith: aBuilder

	^ aBuilder pluggableTextSpec new
		getText: #tooltipSymbol;
		model: self;
		help: self question toolTip;
		frame: (LayoutFrame fractions: (0.1 @ 0.1 extent: 0 @ 0) offsets: (0 @ 0 extent: 30 @ 30)) yourself
		