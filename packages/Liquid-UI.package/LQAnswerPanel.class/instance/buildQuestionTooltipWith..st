toolbuilder
buildQuestionTooltipWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: #tooltipSymbol;
		model: self;
		enabled: false;
		help: self question toolTip;
		frame: (LayoutFrame fractions: (0.15 @ 0.1 extent: 0 @ 0) offsets: (0 @ 0 extent: 30 @ 30));
		yourself