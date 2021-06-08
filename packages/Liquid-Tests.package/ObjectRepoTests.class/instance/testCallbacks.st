as yet unclassified
testCallbacks
	| counterA counterB increments total |
	self
		testWithServer: [:server :clientA :clientB | 
			clientA
				at: 'counter'
				ifPresent: nil
				ifAbsentPut: ObjectRepoTestCounter new.
			counterA := clientA at: 'counter' ifAbsent: [].
			counterB := clientB at: 'counter' ifAbsent: [].
			increments := 0.
			total := 0.
			counterA
				subscribe: [:value |
					increments := increments + 1.
					total := value].
			Delay forMilliseconds: 100.
			counterB increment.
			Delay forMilliseconds: 100.
			self assert: 1 equals: increments.
			self assert: 1 equals: total.
			counterB incrementBy: 3.
			Delay forMilliseconds: 100.
			self assert: 2 equals: increments.
			self assert: 4 equals: total]