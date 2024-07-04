accessing
isValid
	self questionList isEmpty not
		ifTrue: [self questionList
				do: [:question | (question title notNil
							and: [question choiceList isEmpty not])
						ifFalse: [^ false]].
			^ true].
		^false