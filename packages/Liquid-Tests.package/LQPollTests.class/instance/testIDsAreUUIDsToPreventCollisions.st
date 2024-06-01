testing
testIDsAreUUIDsToPreventCollisions

	| allIDs |
	
	allIDs := {  LQChoicesAnswer new id.
				LQAnswerSet new id.
				LQPoll new id.
				LQChoicesQuestion new id.
				LQUserSet new id }.
	allIDs do: [:id |
				self assert: (UUID fromString: id) asString equals: id]