computing
hasIncompleteSelection

	^ {day. month. year. hour. minute} anySatisfy: [:each | each isNil or: [each = 1]]