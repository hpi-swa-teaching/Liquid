modifying
sendAnswer

	| stored |
	(self class answeredPollIds includes: self poll id) ifTrue: [
		UIManager default inform: self messageAlreadyAnswered.
		self destroy.
		^ ToolBuilder open: LQStartMenu new].
	self answerSet addAnswer: self currentAnswerPanel model answer.
	stored := LQPollRepo default addAnswerSet: self answerSet ToPoll: self poll id.
	stored == true ifTrue: [
		self class ifAbsentAddToAnsweredPollIds: self poll id.
		UIManager default inform: self messageAnswerSubmitted.
		self destroy.
		^ ToolBuilder open: LQStartMenu new].
	stored == false ifTrue: [
		UIManager default inform: self messageSubmissionRejected.
		^ self].
	UIManager default inform: self messageSubmissionFailed.
	^ self