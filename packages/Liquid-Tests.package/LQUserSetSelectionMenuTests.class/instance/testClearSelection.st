testing
testClearSelection

	self userSetMenu pollDraft userSetID: 'testID'.
	self userSetMenu clearSelection.
	self assert: self userSetMenu pollDraft userSetID equals: nil