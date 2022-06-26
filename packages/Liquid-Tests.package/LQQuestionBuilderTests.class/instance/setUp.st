running
setUp
	super setUp.
	self builder: ToolBuilder default.
	self questionBuilder: LQQuestionBuilder new.
	self questionBuilder question: LQChoicesQuestion new
	