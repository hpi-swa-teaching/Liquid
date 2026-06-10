accessing
isValid
	self questionList ifEmpty: [^ false].
	(self questionList contains: [:question |
		| basicValid |
		basicValid := question title isEmptyOrNil not and: [question choiceList notEmpty or: [question isFreeTextQuestion]].
		(basicValid not or: [question hasDuplicateChoices])]) ifTrue: [^ false].
	^ true