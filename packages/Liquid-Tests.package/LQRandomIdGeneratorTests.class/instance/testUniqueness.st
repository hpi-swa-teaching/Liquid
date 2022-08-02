tests
testUniqueness

	| generator |
	
	generator := LQPollIdGenerator new.
	
	self assert: false equals: ((generator generateIdFromRealWords) == (generator generateIdFromRealWords))