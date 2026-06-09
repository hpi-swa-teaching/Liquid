accessing
selectedChoiceIndex: anIndex

	selectedChoiceIndex := anIndex.
	self changed: #selectedChoiceIndex.
	self changed: #submitEnabled
