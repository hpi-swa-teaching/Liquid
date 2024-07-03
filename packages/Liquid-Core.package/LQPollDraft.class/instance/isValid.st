accessing
isValid
	self questionList size > 0
		ifTrue: [self questionList
				do: [:question | (question title notNil
							and: [question choiceList size > 0])
						ifFalse: [^ false]].
			^ true].
		^false