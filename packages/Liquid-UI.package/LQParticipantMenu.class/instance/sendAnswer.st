modifying
sendAnswer

	(self class ifAbsentAddToAnsweredPollIds: self poll id)
		ifTrue: [
			LQPollRepo default addAnswerSet: self answerSet ToPoll: self poll id.
			self poll isOpen
				ifTrue: [UIManager default inform: self messageAnswerSubmitted]
				ifFalse: [UIManager default inform: self messageAlreadyClosed]]
		ifFalse: [UIManager default inform: self messageAlreadyAnswered].
	self destroy.
	^ ToolBuilder open: LQStartMenu new