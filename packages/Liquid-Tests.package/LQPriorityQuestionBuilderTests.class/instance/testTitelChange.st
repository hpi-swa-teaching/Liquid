testing
testTitelChange
	self questionBuilder title: 'Prio' asText.
	self assert: self questionBuilder title equals: 'Prio'.
	self assert: self questionBuilder question title equals: 'Prio' 