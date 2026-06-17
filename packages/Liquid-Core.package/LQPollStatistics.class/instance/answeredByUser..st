accessing - visualization
answeredByUser: aUser

	^ poll answerSets anySatisfy: [:answerSet | answerSet token = aUser token]