tests
testIDsAreUUIDsToPreventCollisions
	"isKindOf: is bad practice, but unfortunately UUID is missing a `isUUID` handler"
	self assert: (LQAnswer new id isKindOf: UUID).
	self assert: (LQChoicesAnswer new id isKindOf: UUID).
	self assert: (LQAnswerSet new id isKindOf: UUID).
	self assert: (LQPoll new id isKindOf: UUID).
	self assert: (LQPollDraft new id isKindOf: UUID).
	self assert: (LQQuestion new id isKindOf: UUID).
	self assert: (LQChoicesQuestion new id isKindOf: UUID).