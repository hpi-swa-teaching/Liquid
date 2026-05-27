modifying
sendAnswer

	| stored |
	(self class answeredPollIds includes: self poll id) ifTrue: [
		UIManager default inform: self messageAlreadyAnswered.
		self destroy.
		^ ToolBuilder open: LQStartMenu new].
	stored := LQPollRepo default addAnswerSet: self answerSet ToPoll: self poll id.
	stored == true ifTrue: [
		self class ifAbsentAddToAnsweredPollIds: self poll id.
		UIManager default inform: self messageAnswerSubmitted].
	stored == false ifTrue: [UIManager default inform: self messageSubmissionRejected].
	stored isNil ifTrue: [UIManager default inform: self messageSubmissionFailed].
	self destroy.
	^ ToolBuilder open: LQStartMenu new