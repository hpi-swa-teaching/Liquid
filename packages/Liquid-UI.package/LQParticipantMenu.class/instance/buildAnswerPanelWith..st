initialize
buildAnswerPanelWith: aBuilder

	| answerPanel |
	answerPanel := LQAnswerPanel newWith: aBuilder.
	"current 'workaround' while there is more than one question per poll possible:"
	answerPanel question: self poll pollDraft questionList first.
	self answerSet addAnswer: answerPanel answer.
	^ answerPanel