accessing
addAnswerSet: anAnswerSet ToPoll: aPollId

	| resp result |
	resp := [
		WebClient
			httpPost: (self urlForPostingAnswerSet: anAnswerSet ToPoll: aPollId)
			content: (STON toString: anAnswerSet)
			type: 'text/plain']
		on: Error
		do: [:ex | ^ nil].
	resp isSuccess ifFalse: [^ nil].
	result := [STON fromString: resp content] on: Error do: [:ex | ^ nil].
	(result isBoolean) ifTrue: [^ result].
	^ nil