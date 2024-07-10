initialize-release
initialize
	super initialize.
	self questionBuilders: OrderedCollection new.
	self pollDraft: LQPollDraft new.
	self pollDraft questionList: OrderedCollection new.
	self currentQuestion: self questionBuilders size.