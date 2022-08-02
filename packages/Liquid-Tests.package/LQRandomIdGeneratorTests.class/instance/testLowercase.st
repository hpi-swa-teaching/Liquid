tests
testLowercase

	| generator generatedPollId |
	
	generator := LQPollIdGenerator new.
	generatedPollId := generator generateIdFromRealWords.
	
	self assert: (generatedPollId asLowercase) equals: generatedPollId