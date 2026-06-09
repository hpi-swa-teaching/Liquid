toolbuilder
buildPollDraftTitleBarWith: aBuilder
	| titleSpec editSpec |
	titleSpec := self buildPollDraftTitleWith: aBuilder.
	titleSpec frame: (LayoutFrame fractions: (0 @ 0 extent: 0.76 @ 1)).
	editSpec := self buildEditPollTitleButtonWith: aBuilder.
	editSpec frame: (LayoutFrame fractions: (0.76 @ 0 extent: 0.24 @ 1)).
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #proportional;
		children: {titleSpec. editSpec};
		yourself