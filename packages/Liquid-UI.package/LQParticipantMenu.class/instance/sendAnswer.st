modifying
sendAnswer

	| answerIsNew |
	
	answerIsNew := self class answeredPollIds ifAbsentAdd: self poll id.
	answerIsNew
		ifTrue: [LQPollRepo default addAnswerSet: self answerSet ToPoll: self poll id ]
		ifFalse: [UIManager default inform: self messageAlreadyAnswered].
	self poll isOpen ifFalse: [UIManager default inform: self messageAlreadyClosed].
	self destroy.
	^ ToolBuilder open: LQStartMenu new