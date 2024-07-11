toolbuilder
buildWith: aBuilder 
	| window |
	window := aBuilder build: (aBuilder pluggableWindowSpec new model: self;
					 label: 'Liquid - Participant';
					 extent: self extent;
					 children: {self buildSelectionPanelWith: aBuilder. self buildFreeTextPanelWith: aBuilder. self buildNextQuestionButtonWith: aBuilder. self buildPreviousQuestionButtonWith: aBuilder. self buildQuestionCounterWith: aBuilder};
					 yourself).
	self
		freeTextPanel: (aBuilder widgetAt: #freeText).
	self
		selectionPanel: (aBuilder widgetAt: #selection).
	self currentQuestionIndex: 1.
	^ window