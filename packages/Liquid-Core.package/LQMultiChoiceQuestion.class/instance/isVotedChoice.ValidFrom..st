accessing
isVotedChoice: votedChoice ValidFrom: aUser

	^ self choiceList noneSatisfy: [:choice | choice description = votedChoice and: [choice excludesGroup: aUser group]]