as yet unclassified
testUniqueness
	| generator |
	
	generator := LQPollIdGenerator new.
	
	self deny: (generator generateIdFromRealWords) equals: (generator generateIdFromRealWords)