testing
testChoicesAnswerExportValueIsItsChoices

	| choices |
	choices := LQChoicesAnswer new.
	choices choicesRanking: #('A' 'B').
	self assert: choices exportValue asArray equals: #('A' 'B')