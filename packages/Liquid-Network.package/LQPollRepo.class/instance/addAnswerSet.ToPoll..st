accessing
addAnswerSet: anAnswerSet ToPoll: aPollId

	| resp |
	resp := [WebClient
		httpPost: (self urlForPostingAnswerSet: anAnswerSet ToPoll: aPollId)
		content: (STON toString: anAnswerSet)
		type: 'text/plain'] on: Error do: [:ex | ^ nil].
	resp isSuccess ifFalse: [^ nil].
	^ STON fromString: resp content