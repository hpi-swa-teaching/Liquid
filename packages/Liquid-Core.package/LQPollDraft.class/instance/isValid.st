accessing
isValid

	self questionList ifEmpty: [^ false].
	(self questionList contains: [:question | (question title isEmptyOrNil not and: [question choiceList notEmpty or: [question isFreeTextQuestion]]) not]) ifTrue: [^ false].
	^ true