anti-cheat
isVotedChoice: votedChoice FromUser: aUser ValidForQuestion: question
	^ (((question choiceList at: votedChoice) excludedGroups) includes: aUser group) not