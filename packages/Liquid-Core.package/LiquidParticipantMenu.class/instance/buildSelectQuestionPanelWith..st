initialize
buildSelectQuestionPanelWith: aBuilder

self selectQuestionPanel: (LiquidSelectQuestionPanel newWith: aBuilder).
self selectQuestionPanel questionList: self poll pollDraft questionList;
	onSelect: [:arg | self selectedItemQuestion: arg].