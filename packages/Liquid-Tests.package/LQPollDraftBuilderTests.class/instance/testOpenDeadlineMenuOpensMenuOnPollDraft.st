testing
testOpenDeadlineMenuOpensMenuOnPollDraft

	| builder window |
	builder := LQPollDraftBuilder new.
	window := builder openDeadlineMenu.
	self assert: window notNil.
	self assert: window model pollDraft equals: builder pollDraft.
	window delete