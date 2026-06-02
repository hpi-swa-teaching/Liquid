modifying
publishKahoot

	| id repo |
	id := self kahootQuiz quizId.
	LQRemotePollRepoServer isServerActive ifFalse: [LQRemotePollRepoServer startServer].
	repo := LQRemotePollRepoServer pollRepo.
	(repo includesKey: id) ifTrue: [
		UIManager default inform: 'This Kahoot is already published.'.
		^ self].
	repo items at: id put: self kahootQuiz.
	self kahootQuiz addDependent: self
