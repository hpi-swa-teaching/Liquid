printing
jsonValue: aValue
	"Answer aValue as JSON: a String gets quotes and a Collection becomes an array (recursing 	on its elements). Other types are not supported yet."


	| stream |
	aValue isString ifTrue: [^ '"', (self jsonEscape: aValue), '"'].
	aValue isCollection ifTrue: [
		stream := String new writeStream.
		stream nextPutAll: '['.
		aValue do: [:each | stream nextPutAll: (self jsonValue: each)] separatedBy: [stream nextPutAll: ','].
		stream nextPutAll: ']'.
		^ stream contents].
	^ self error: 'Unknown JSON value type'