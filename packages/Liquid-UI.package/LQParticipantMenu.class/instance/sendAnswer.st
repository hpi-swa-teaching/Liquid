modifying
sendAnswer

	| stored |
	(self class answeredPollIds includes: self poll id) ifTrue: [
		UIManager default inform: self messageAlreadyAnswered.
		self destroy.
		^ ToolBuilder open: LQStartMenu new].
	stored := LQPollRepo default addAnswerSet: self answerSet ToPoll: self poll id.
	stored 
		ifNil: [UIManager default inform: self messageSubmissionFailed] 
		ifNotNil: [
			stored
				ifTrue: [
					self class ifAbsentAddToAnsweredPollIds: self poll id.
					UIManager default inform: self messageAnswerSubmitted]
				ifFalse: [UIManager default inform: self messageSubmissionRejected]].
	self destroy.
	^ ToolBuilder open: LQStartMenu new