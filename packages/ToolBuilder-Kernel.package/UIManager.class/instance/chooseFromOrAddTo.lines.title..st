ui requests
chooseFromOrAddTo: aList lines: linesArray title: aString

	| index |
	index := self
		chooseFrom: {'new...'}, aList
		lines: linesArray + 1
		title: aString.
	index = 0 ifTrue: [^ nil].
	index = 1 ifTrue:
		[^ self request: 'Please type new value' initialAnswer: ''].
	^ aList at: index - 1