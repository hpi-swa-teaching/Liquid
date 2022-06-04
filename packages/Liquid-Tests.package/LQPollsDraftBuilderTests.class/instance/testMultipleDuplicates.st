test
testMultipleDuplicates

	| original onlyDuplicates |
	
	original := {1 . 1 . 2 . 3 . 4 . 5 . 5 . 5 . 5 . 10} asOrderedCollection.
	onlyDuplicates := {1 . 5 . 5 . 5} asOrderedCollection.
	self assert: onlyDuplicates equals: (LQPollDraftBuilder new getDuplicates: original).