testing
testIDsAreUUIDsToPreventCollisions

	| allIDs |
	
	allIDs := {  LQMulChoiceAnswer new id.
				LQAnswerSet new id.
				LQPoll new id.
				LQMultChoiceQuestion new id.
				LQUserSet new id }.
	allIDs do: [:id |
				self assert: (UUID fromString: id) asString equals: id]