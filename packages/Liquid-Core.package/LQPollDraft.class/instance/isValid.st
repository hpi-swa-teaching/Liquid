accessing
isValid
	self questionList notEmpty
		ifFalse: [^ false].
	self questionList
		do: [:question | (question title isEmptyOrNil not
					and: [question choiceList notEmpty
							or: [question isFreeTextQuestion]])
				ifFalse: [^ false]].
	^ true