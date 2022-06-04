modifying
withWhitespacesFromQuestionsRemoved: aPollDraft

	aPollDraft questionList do: [ :question |
			question choiceList: (question choiceList collect: [ :value | value withBlanksTrimmed ])
		].
	^aPollDraft