lists
dayList

	^ #('--') ,
		((1 to: 31) collect: [:each |
			each < 10
				ifTrue: ['0', each printString]
				ifFalse: [each printString]])