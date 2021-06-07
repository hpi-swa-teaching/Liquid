as yet unclassified
updateAnswer
|choiceCollection|
	choiceCollection := self selectedChoices asOrderedCollection.
	(self question type = 'singleChoice')
		ifTrue: [(choiceCollection isEmpty) 
			ifTrue: [self answer votedChoice: nil]
			ifFalse: [self answer votedChoice: (choiceCollection at: 1)]].
	(self question type = 'multipleChoice')
		ifTrue: [self answer votedChoiceList: choiceCollection].