accessing - visualization
getChoiceIdentifiers

	| count |
	"This gets us an array containing the numbers from 1 to choiceList size, e.g. {1 . 2 . 3}, needed for the Statistics Workbench implementation"
	count := 0.
	^ self questionList first choiceList collect: [:aChoice |
		count := count + 1.
		count]