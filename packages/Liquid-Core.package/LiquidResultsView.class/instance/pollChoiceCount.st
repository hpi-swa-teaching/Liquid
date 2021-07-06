result data
pollChoiceCount
	| count |
	count := 0.
	^ self poll pollDraft questionList first choiceList
		collect: [:aChoice | 
			count := count + 1.
			count]