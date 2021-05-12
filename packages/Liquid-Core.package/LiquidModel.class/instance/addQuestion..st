input fields
addQuestion: aString

|newQ|
	newQ := LiquidQuestion new.
	newQ questionTitle: aString.
	self questionList addLast: newQ.
	self changed: #questionListNames.
	self changed: #questionList.