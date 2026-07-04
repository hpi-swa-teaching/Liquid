actions
updateQuizState: fetched

	self dependents isEmpty ifTrue: [^ self].
	self quiz: fetched.
	self changed: #leaderboard.
	self changed: #timeRemainingBar.
	self currentQuestionIndex ~= fetched currentQuestionIndex ifTrue: [
		fetched currentQuestionIndex > fetched questionList size ifTrue: [
			self stopMusic.
			^ self done].
		self currentQuestionIndex: fetched currentQuestionIndex.
		self selectedChoiceIndex: 0.
		self hasSubmitted: false.
		self playMusic.
		self changed: #questionTitle.
		self changed: #choiceList.
		self changed: #questionCounterText.
		self changed: #nextEnabled.
		self changed: #previousEnabled]