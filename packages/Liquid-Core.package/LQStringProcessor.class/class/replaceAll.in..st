replacing
replaceAll: aDictionary in: aString 
	| result |
	result := aString asString.
	aDictionary
		keysAndValuesDo: [:key :value | 
			| correctedString |
			correctedString := value
						ifNil: ['Undefined'].
			[(result findString: key) isZero]
				whileFalse: [result := result copyReplaceAll: key with: correctedString]].
	^ result 