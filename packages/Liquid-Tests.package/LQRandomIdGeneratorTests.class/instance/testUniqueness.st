testing
testUniqueness

	| generator |
	
	generator := LQPollIdGenerator new.
	
	self assert: false equals: ((generator generateIdFromNumbers) == (generator generateIdFromNumbers))