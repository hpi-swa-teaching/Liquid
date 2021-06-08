helpers
assertAll: aCollection areEqualTo: anObject

	self assert: (aCollection allSatisfy: [ :numberOfOccurrences | numberOfOccurrences = anObject ])