testing
testToolTipWith: aQuestion

	| answerPanel toolTip |
	
	answerPanel := LQAnswerPanel new.
	answerPanel question: aQuestion.
	toolTip := answerPanel buildQuestionTooltipWith: ToolBuilder default.
	
	self assert: toolTip help equals: aQuestion toolTip