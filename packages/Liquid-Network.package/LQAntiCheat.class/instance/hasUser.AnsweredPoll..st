anti-cheat
hasUser: aUser AnsweredPoll: aPoll
	^ (aPoll answerSets select: [:answerSet | answerSet token = aUser token]) isEmpty not