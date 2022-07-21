anti-cheat
isVotedChoice: votedChoice FromUser: aUser ValidForQuestion: question
	^ ((((question choiceList select: [:choice | choice description = votedChoice]) first ) excludedGroups) includes: aUser group) not