private
padNumber: aNumber
	^ aNumber < 10
		ifTrue: ['0', aNumber printString]
		ifFalse: [aNumber printString]