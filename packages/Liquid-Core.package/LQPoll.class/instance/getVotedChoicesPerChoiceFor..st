accessing - visualization
getVotedChoicesPerChoiceFor: aQuestion

	^ aQuestion choiceList collect: [:aChoice | self countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion]