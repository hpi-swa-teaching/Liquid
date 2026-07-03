lists
minuteList

	^ #('--') ,
		((0 to: 55 by: 5) collect: [:each |
			each < 10
				ifTrue: ['0', each printString]
				ifFalse: [each printString]])