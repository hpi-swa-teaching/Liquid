as yet unclassified
assertAll: aCollection areEqualTo: anObject

	self assert: (aCollection allSatisfy: [ :numberOfOccurrences | numberOfOccurrences = anObject ])