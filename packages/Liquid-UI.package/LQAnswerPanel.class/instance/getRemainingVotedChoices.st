accessing
getRemainingVotedChoices
	^ 'Remaining Choices: ' , (self question maxNumberOfChoices - self selectedChoices size)