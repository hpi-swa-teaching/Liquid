anti-cheat
isVotedChoice: votedChoice FromUser: aUser ValidForQuestion: question

	^ question choiceList noneSatisfy: [:choice | (choice description = votedChoice) and: [choice excludesGroup: aUser group]]