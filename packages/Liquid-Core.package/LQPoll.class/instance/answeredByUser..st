accessing - visualization
answeredByUser: aUser
	^ (self answerSets select: [:answerSet | answerSet token = aUser token]) isEmpty not