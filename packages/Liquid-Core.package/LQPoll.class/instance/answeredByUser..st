accessing - visualization
answeredByUser: aUser

	^ self answerSets anySatisfy: [:answerSet | answerSet token = aUser token]