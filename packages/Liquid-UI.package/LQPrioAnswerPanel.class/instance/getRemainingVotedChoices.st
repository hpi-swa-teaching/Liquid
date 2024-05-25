accessing
getRemainingVotedChoices

	^ 'Unranked Choices: ', (self question maxNumberOfChoices - self selectedChoices size)