data
answerFrequenciesFor: aQuestion

	| frequencies displayLabels |
	frequencies := Dictionary new.
	displayLabels := Dictionary new.
	self poll answerSets do: [:answerSet |
		self
			collectAnswerFrequenciesFrom: answerSet
			forQuestion: aQuestion
			into: frequencies
			displayLabels: displayLabels].
	^ self displayFrequenciesFrom: frequencies labels: displayLabels
