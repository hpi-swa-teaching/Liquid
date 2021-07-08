accessing
getChoiceNames
	^ self questionList first choiceList
		collect: [:aChoice | aChoice].