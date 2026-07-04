toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildTitleInputWith: aBuilder.
			self buildChoicesInputWith: aBuilder.
			self buildCorrectChoiceLabelWith: aBuilder.
			self buildCorrectChoiceInputWith: aBuilder.
			self buildTimeLimitLabelWith: aBuilder.
			self buildTimeLimitInputWith: aBuilder};
		yourself)
