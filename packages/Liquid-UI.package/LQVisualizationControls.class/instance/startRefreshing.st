live-update
startRefreshing

	self polling: [
		[true] whileTrue: [
			(self questionList at: self index) isFreeTextQuestion
				ifTrue: [self newFreeTextViewFor: self index]
				ifFalse: [self newChoicesViewFor: self index].
			(Delay forSeconds: 2) wait]] fork