testing
testJsonValue

	| json |
	json := LQJsonExport new.
	self assert: (json jsonValue: 'a"b') equals: '"a\"b"'.
	self assert: (json jsonValue: #('A' 'B')) equals: '["A","B"]'.
	self assert: (json jsonValue: { #('A' 'B'). #('C') }) equals: '[["A","B"],["C"]]'.
	self assert: (json jsonValue: #()) equals: '[]'