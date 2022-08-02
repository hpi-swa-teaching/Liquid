data
sortDataFor: aQuestion

	| result amountVotes labels |
	
	amountVotes := OrderedCollection newFrom: (self poll getVotedChoicesPerChoiceFor: aQuestion).
	labels := self poll getChoiceNamesFor: aQuestion.
	result := labels with: amountVotes collect: [:label :votes | {votes. label}].
	^ result sort: [:choiceA :choiceB | choiceA first >= choiceB first]