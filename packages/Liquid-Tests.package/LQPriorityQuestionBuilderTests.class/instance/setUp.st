running
setUp
	super setUp.
	self builder: ToolBuilder default.
	self questionBuilder: LQPriorityQuestionBuilder new.
	self questionBuilder question: LQPriorityQuestion new