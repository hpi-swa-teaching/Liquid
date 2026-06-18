printing
exportFieldsFor: orderedQuestionIDs

	^ orderedQuestionIDs collect: [:answerId |
		self answers at: answerId ifPresent: [:answer | answer printData] ifAbsent: ['']]