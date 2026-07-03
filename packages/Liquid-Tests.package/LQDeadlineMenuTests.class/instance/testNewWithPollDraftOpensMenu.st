testing
testNewWithPollDraftOpensMenu

	| window |
	window := LQDeadlineMenu newWithPollDraft: LQPollDraft new.
	self assert: window notNil.
	window delete