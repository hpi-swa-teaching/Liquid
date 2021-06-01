input fields
addChoice: aString

	self choiceList addLast: aString.
	self changed: #choiceList.
	self currentChoiceInput: ''.
	self choiceInputField setText: self currentChoiceInput.