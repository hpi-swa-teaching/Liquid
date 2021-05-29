initialize
buildSelectQuestionPanelWith: aBuilder
|newAnswer|
self selectQuestionPanel: (LiquidSelectQuestionPanel newWith: aBuilder).
self selectQuestionPanel questionList: self poll pollDraft questionList;
	onSelect: [:aQuestion | 
		self answerPanel question: aQuestion. 
		self answerPanel answer: (self pollAnswer answers at: (aQuestion id) 
			ifAbsent: [
				newAnswer := LiquidSingleChoiceAnswer new.
				newAnswer questionId: (aQuestion id).
				self pollAnswer answers at: (aQuestion id) put: newAnswer.
				newAnswer.
			]).
		].