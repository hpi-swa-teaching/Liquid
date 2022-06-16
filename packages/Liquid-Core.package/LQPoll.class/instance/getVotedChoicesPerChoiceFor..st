accessing - visualization
getVotedChoicesPerChoiceFor: aQuestion

	^ aQuestion choiceList collect: [:aChoice | self answerSets count: [:anAnswerSet | (anAnswerSet answers at: aQuestion id) votedChoiceList includes: aChoice description]]