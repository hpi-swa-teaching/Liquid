running
setUp
	super setUp.
	self builder: ToolBuilder default.
	self deadlineMenu pollDraft: LQPollDraft new