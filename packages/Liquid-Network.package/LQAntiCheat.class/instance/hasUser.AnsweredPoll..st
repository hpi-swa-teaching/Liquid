anti-cheat
hasUser: aUser AnsweredPoll: aPoll
	^ (aPoll answerSets select: [:answerSet | answerSet userpwd = aUser pwd]) isEmpty not