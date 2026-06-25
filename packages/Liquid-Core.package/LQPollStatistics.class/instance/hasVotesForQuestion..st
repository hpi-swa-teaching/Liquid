accessing - visualization
hasVotesForQuestion: aQuestion

	^ (self getVotedChoicesPerChoiceFor: aQuestion) anySatisfy: [:votes | votes > 0]