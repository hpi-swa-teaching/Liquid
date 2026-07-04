instance creation
newWithTitle: aString

	| builder |
	builder := self new.
	builder kahootQuiz title: aString.
	^ builder
