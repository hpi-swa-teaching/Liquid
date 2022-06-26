initialize-release
initialize

	self questionBuilders: OrderedCollection new.
	self currentQuestion: 1.
	self pollDraft: LQPollDraft new.
	self pollDraft questionList: OrderedCollection new.
	self addQuestion