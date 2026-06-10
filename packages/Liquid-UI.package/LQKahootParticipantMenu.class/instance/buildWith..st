toolbuilder
buildWith: aBuilder

	| window |
	window := aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Kahoot';
		children: {
			self buildQuestionTitleWith: aBuilder.
			self buildChoiceListWith: aBuilder.
			self buildSubmitButtonWith: aBuilder.
			self buildQuestionCounterWith: aBuilder.
			self buildLeaderboardTitleWith: aBuilder.
			self buildLeaderboardWith: aBuilder};
		yourself).
	self currentQuestionIndex: 1.
	^ window
