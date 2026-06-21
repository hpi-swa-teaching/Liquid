accessing - visualization
getVotedChoicesPerChoiceFor: aQuestion

	aQuestion isPriorityQuestion ifTrue: [
		^ aQuestion choiceList collect: [:aChoice | 
			self calculatePointsForChoice: aChoice ForQuestion: aQuestion]
	].

	^ aQuestion choiceList collect: [:aChoice | 
		self countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion]