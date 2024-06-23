validation
isEveryChoiceRanked

	^(self question type = 'priority') ==> (self selectedChoices size = self question maxNumberOfChoices)