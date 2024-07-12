helper methods
assertAll: aDictionary areEqualTo: anObject

	aDictionary keysAndValuesDo: [:name :result | self assert: anObject equals: result description: 'Linter failed for ', name]