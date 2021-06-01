as yet unclassified
assertString: expected equals: actual
| a b |
	a := expected collect: [:char | char = Character cr ifFalse: [^char] ifTrue: [^Character lf]].
	b := expected collect: [:char | char = Character cr ifFalse: [^char] ifTrue: [^Character lf]].
	^ self assert: a equals: b.