toolbuilder
buildWith: aBuilder

	| window |
	window := aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Kahoot';
		children: {
			self buildQuestionTitleWith: aBuilder.
			self buildChoiceListWith: aBuilder.
			self buildPreviousButtonWith: aBuilder.
			self buildNextButtonWith: aBuilder.
			self buildQuestionCounterWith: aBuilder};
		yourself).
	self currentQuestionIndex: 1.
	^ window
