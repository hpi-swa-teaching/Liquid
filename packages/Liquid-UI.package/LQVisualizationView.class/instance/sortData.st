result data
sortData

	| result amountVotes labels |
	amountVotes := OrderedCollection newFrom: self poll getVotedChoicesPerChoice.
	labels := self poll getChoiceNames.
	result := labels with: amountVotes collect: [:label :votes | {votes. label}].
	^ result sort: [:choiceA :choiceB | choiceA first >= choiceB first]