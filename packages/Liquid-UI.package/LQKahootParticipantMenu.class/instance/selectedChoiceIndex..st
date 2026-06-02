accessing
selectedChoiceIndex: anIndex

	selectedChoiceIndex := anIndex.
	self changed: #nextEnabled
