construction
add: aString target: anObject selector: aSelector argument: argument

	^ self
		add: aString
		target: anObject
		selector: aSelector
		argumentList: (Array with: argument)