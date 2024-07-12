validation
isEveryChoiceRanked

	^ self question isPriorityQuestion ==> (self selectedChoices size = self question maxNumberOfChoices)