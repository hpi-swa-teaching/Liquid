accessing
getVotedChoicesPerChoice
	| question|
	question := self pollDraft questionList first.
	^ question choiceList
		collect:[:aChoice| self answerSets 
			count: [:anAnswerSet| (anAnswerSet answers at: question id) votedChoiceList includes: aChoice.]]