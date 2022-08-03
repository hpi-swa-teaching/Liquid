communication
addAnswerSet: anAnswerSet ToPoll: aPollId

	^ WebClient httpPost: (self urlForPostingAnswerSet: anAnswerSet ToPoll: aPollId) content: (STON toString: anAnswerSet) type: 'text/plain'