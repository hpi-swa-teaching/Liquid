accessing
maxNumberOfChoices: aText
	(aText asString isAllDigits and: [aText isEmpty not]) 
		ifTrue: [self question maxNumberOfChoices: (1 max: (aText asNumber min: self question choiceList size))]
		ifFalse: [(aText isEmpty) ifTrue: [self question maxNumberOfChoices: nil]].
		self changed: #maxNumberOfChoices.
	
	