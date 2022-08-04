toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Participant';
		extent: self extent;
		children: {self buildAnswerPanelWith: aBuilder. 
						self buildNextQuestionButtonWith: aBuilder.
						self buildPreviousQuestionButtonWith: aBuilder.
						self buildQuestionCounterWith: aBuilder};
		yourself)