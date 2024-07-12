running
setUp

	super setUp.
	self builder: ToolBuilder default.
	self questionBuilder: LQFreeTextQuestionBuilder new.
	self questionBuilder question: LQFreeTextQuestion new