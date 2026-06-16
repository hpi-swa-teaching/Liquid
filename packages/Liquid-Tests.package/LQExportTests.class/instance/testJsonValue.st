testing
testJsonValue

	| file |
	file := LQJsonExport new.
	self assert: (file jsonValue: 'a"b') equals: '"a\"b"'.
	self assert: (file jsonValue: #('A' 'B')) equals: '["A","B"]'.
	self assert: (file jsonValue: { #('A' 'B'). #('C') }) equals: '[["A","B"],["C"]]'.
	self assert: (file jsonValue: #()) equals: '[]'