actions
startPolling

	self stopPolling.
	pollingProcess := [
		[true] whileTrue: [
			self fetchAndUpdateQuiz.
			(Delay forSeconds: 1) wait]] fork