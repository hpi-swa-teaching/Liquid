toolbuilder
buildChoicesSubPanel

	| subPanelSpec subPanelMorph totalHeight |
	subPanelSpec := self builder pluggablePanelSpec new
		model: self;
		children: #buildMultiChoiceInterface;
		yourself.
	subPanelMorph := self builder build: subPanelSpec.
	subPanelMorph
		color: Color transparent;
		layoutPolicy: ProportionalLayout new.
	totalHeight := self choiceTexts size + 1 * (self rowHeight + self choiceFieldSpacing) + self choiceFieldSpacing.
	subPanelMorph height: totalHeight.
	^ subPanelMorph