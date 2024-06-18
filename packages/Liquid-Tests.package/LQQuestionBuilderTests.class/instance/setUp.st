running
setUp

	super setUp.
	self builder: ToolBuilder default.
	self questionBuilder: LQMultiChoiceQuestionBuilde new.
	self questionBuilder question: LQMultiChoiceQuestion new
	