initialize-release
initialize

	super initialize.
	self questionBuilders: OrderedCollection new.
	self pollDraft: LQPollDraft new.
	self pollDraft questionList: OrderedCollection new.
	self currentQuestion: (self questionBuilders size min: 1).
	deadlineDay := nil.
	deadlineMonth := nil.
	deadlineYear := nil.
	deadlineHour := nil.
	deadlineMinute := nil.