toolbuilder
questionButtonTotalRows

	^ (((self numberOfQuestionButtons max: 1) - 1) // (self maxButtonsPerRow max: 1)) + 1