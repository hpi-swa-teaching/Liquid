result data
sortData
|result amountVotes labels iterator|
	amountVotes := OrderedCollection newFrom: self poll getVotedChoicesPerChoice.
	labels := self poll getChoiceNames.
	result := OrderedCollection new.
	iterator := 1.
	labels size timesRepeat: [result add: {amountVotes at: iterator . labels at: iterator}. iterator := iterator +1].
	^ result sort: [:choiceA :choiceB | choiceA first >= choiceB first ]