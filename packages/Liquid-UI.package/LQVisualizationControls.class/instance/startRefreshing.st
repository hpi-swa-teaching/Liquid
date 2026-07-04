live-update
startRefreshing

	self stopRefreshing.
	self polling: [
		[true] whileTrue: [
			(self questionList at: self index) isFreeTextQuestion
				ifTrue: [self newFreeTextViewFor: self index]
				ifFalse: [self newChoicesViewFor: self index].
			(Delay forSeconds: self refreshDelayInSeconds) wait]] fork