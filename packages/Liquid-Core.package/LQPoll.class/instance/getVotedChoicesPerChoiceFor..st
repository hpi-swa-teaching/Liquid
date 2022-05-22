accessing - visualization
getVotedChoicesPerChoiceFor: aQuestion

	^ aQuestion choiceDescriptions collect: [:aChoice | self answerSets count: [:anAnswerSet | (anAnswerSet answers at: aQuestion id) votedChoiceList includes: aChoice]]