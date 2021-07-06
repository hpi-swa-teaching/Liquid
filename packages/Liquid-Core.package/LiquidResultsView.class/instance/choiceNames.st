result data
choiceNames
	^ self poll pollDraft questionList first choiceList
		collect: [:aChoice | aChoice].