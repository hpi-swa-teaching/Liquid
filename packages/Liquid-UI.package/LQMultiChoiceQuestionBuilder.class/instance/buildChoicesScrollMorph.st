toolbuilder
buildChoicesScrollMorph

	| subPanel scrollPane |
	subPanel := self buildChoicesSubPanel.
	scrollPane := self builder build: (self builder pluggableScrollPaneSpec new
		model: self;
		morph: subPanel;
		yourself).
	scrollPane layoutFrame: (LayoutFrame fractions: (0 @ 0.1 extent: 1 @ 0.695)).
	scrollPane
		color: Color transparent;
		borderWidth: 0.
	scrollPane scroller layoutPolicy: ProportionalLayout new.
	subPanel layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0) offsets: (0 @ 0 corner: 0 @ subPanel height)).
	^ scrollPane