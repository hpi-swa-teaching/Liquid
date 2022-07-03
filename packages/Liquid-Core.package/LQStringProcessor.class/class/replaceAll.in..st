as yet unclassified
replaceAll: aDictionary in: aString
	
	| result |
	result := aString asString.
	aDictionary keysAndValuesDo: [:key :value|
		[(result findString: key) == 0] 
				whileFalse: [result := result copyReplaceAll: key with: value.]].
	^result