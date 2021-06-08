as yet unclassified
testMessagePassing
	| flowersA flowersB |
	self
		testWithServer: [:server :clientA :clientB | 
			clientA
				at: 'flowers'
				ifPresent: nil
				ifAbsentPut: (Set with: 'magnolia').
			flowersA := clientA at: 'flowers' ifAbsent: [].
			flowersB := clientB at: 'flowers' ifAbsent: [].
			self
				assert: (flowersB includes: 'magnolia').
			self assert: (flowersB includes: 'rhododendron') not.
			flowersA add: 'rhododendron'.
			self
				assert: (flowersB includes: 'rhododendron')]