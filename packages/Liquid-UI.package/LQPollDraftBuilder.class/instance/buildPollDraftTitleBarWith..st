toolbuilder
buildPollDraftTitleBarWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #proportional;
		children: {
			(self buildPollDraftTitleWith: aBuilder).
			(self buildEditPollTitleButtonWith: aBuilder)};
		yourself