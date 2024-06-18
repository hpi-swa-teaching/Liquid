testing
testToolTipWith: aQuestion

	| answerPanel toolTip |
	
	answerPanel := LQSelectionPanel new.
	answerPanel question: aQuestion.
	toolTip := answerPanel buildQuestionTooltipWith: ToolBuilder default.
	
	self assert: toolTip help equals: aQuestion toolTip