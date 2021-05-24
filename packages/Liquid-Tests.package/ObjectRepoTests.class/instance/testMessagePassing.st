as yet unclassified
testMessagePassing
	| flowersA flowersB |
	self
		testWithServer: [:server :clientA :clientB | 
			clientA
				at: 'flowers'
				ifPresent: nil
				ifAbsentPut: (Set with: 'magnolia').
			flowersA := clientA at: 'flowers'.
			flowersB := clientB at: 'flowers'.
			self
				assert: (flowersB includes: 'magnolia').
			self assert: (flowersB includes: 'rhododendron') not.
			flowersA add: 'rhododendron'.
			self
				assert: (flowersB includes: 'rhododendron')]