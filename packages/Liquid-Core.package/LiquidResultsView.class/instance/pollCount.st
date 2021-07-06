result data
pollCount
	| question|
	question := poll pollDraft questionList first.
	^ question choiceList
		collect:[:aChoice| poll answerSets 
			count: [:anAnswerSet| (anAnswerSet answers at: question id) votedChoiceList includes: aChoice.]]