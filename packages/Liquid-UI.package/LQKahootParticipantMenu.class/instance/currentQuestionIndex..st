accessing
currentQuestionIndex: anIndex

	currentQuestionIndex := anIndex.
	selectedChoiceIndex := 0.
	self changed: #questionTitle.
	self changed: #choiceList.
	self changed: #questionCounterText.
	self changed: #previousEnabled.
	self changed: #nextLabel
