testing
testReplacementListContainsResultsPlaceholder

	| dialog |
	dialog := LQMailDialog new.
	self assert: (dialog replacementList includes: '{{results}}')