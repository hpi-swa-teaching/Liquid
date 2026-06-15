testing
testChoicesAnswerExportValueIsItsChoices

	| choices |
	choices := LQChoicesAnswer new.
	choices choicesRanking: { 'A' asText. 'B' asText }.
	self assert: choices exportValue asArray equals: #('A' 'B').
	self assert: (choices exportValue allSatisfy: [:each | each isString])