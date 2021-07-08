accessing
getNumberOfChoices
	| count |
	count := 0.
	^ self questionList first choiceList
		collect: [:aChoice | 
			count := count + 1.
			count]