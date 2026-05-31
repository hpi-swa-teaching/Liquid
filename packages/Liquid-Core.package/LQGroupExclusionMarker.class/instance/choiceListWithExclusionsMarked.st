answerExclusion
choiceListWithExclusionsMarked

	^ self choiceList collect: [:choice |
		(choice excludedGroups includes: self group)
			ifTrue: [self colourGrey: choice description]
			ifFalse: [choice description]]