running
setUp

	super setUp.
	self builder: ToolBuilder default.
	self pollDraftBuilder: (LQPollDraftBuilder newWithTitle: 'TestTitle')