testing
testIDsAreUUIDsToPreventCollisions

	| allIDs |
	allIDs := {LQAnswer new id. LQAnswerSet new id. LQPoll new id. LQMultiChoiceQuestion new id. LQUserSet new id}.
	allIDs do: [:id | self assert: (UUID fromString: id) asString equals: id]