running
setUp

	super setUp.
	self builder: ToolBuilder default.
	self questionBuilder: LQMultiChoiceQuestionBuilder new.
	self questionBuilder question: LQMultiChoiceQuestion new