accessing
getRankingIndices
	|ranking|
	ranking := OrderedCollection new.
	self question choiceList do: [:choice | 
		((self selectedChoices includes: (choice description)) or: (self choiceSelected = choice))
			ifTrue: [ranking add: (self selectedChoices indexOf: (choice description))]
			ifFalse: [ranking add: -1] "value to show that this is not yet ranked"
		].
	^ ranking